#!/usr/bin/env bash

if ! [ -d .git ]; then
	echo "Not a git repository";
	exit 1;
fi

if git diff --cached --quiet --exit-code; then
	echo "Nothing to commit";
	exit 1;
fi

relativeToHead=0;
for commitId in `git --no-pager log --format=%H master...HEAD`; do
	commitMessage=$(git --no-pager log --format=%B -n 1 $commitId)
	if [[ ${commitMessage:0:7} == "fixup! " ]] || [[ ${commitMessage:0:8} == "squash! " ]]; then
		((relativeToHead++));
		continue;
	fi

	git --no-pager log --pretty="format:${relativeToHead}.  %Cred%h%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --date=relative -n1 $commitId;
	echo
	for filename in `git --no-pager diff --cached --name-only;`; do
		git --no-pager diff --stat=160 --color "$commitId" "$commitId^" -- "$filename" | head -n 1;
	done

	((relativeToHead++));
done
if [ "$relativeToHead" -eq 0 ]; then
	echo "no commits in branch found using master...HEAD range";
	exit 1;
fi
((relativeToHead--))

echo;
read -p "Pick a commit [0..${relativeToHead}]: " targetCommit

if [ -z "${targetCommit##*[!0-9]*}" ]; then
	echo "expected a number in range [0..${relativeToHead}]";
	exit 2;
fi
if [ ! "$targetCommit" -ge 0 -o ! "$targetCommit" -le "$relativeToHead" ]; then
	echo "expected a number in range [0..${relativeToHead}]";
	exit 3;
fi

git commit --fixup "HEAD~$targetCommit"
