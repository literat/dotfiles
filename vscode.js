{
    "workbench.iconTheme": "material-icon-theme",
    "workbench.colorTheme": "Material Theme High Contrast",
    "typescript.validate.enable": false,
    "javascript.validate.enable": false,
    "editor.renderWhitespace": "all",
    "editor.renderControlCharacters": true,
    "breadcrumbs.enabled": true,
    "editor.lineHeight": 23,
    "materialTheme.accent": "Remove accents",
    "editor.trimAutoWhitespace": false,
    "git.autofetch": true,
    "emmet.excludeLanguages": [],
    "emmet.triggerExpansionOnTab": true,
    "emmet.showSuggestionsAsSnippets": true,
    "terminal.integrated.fontFamily": "Meslo LG L DZ for Powerline",
    "terminal.integrated.lineHeight": 1,
    "terminal.external.osxExec": "iTerm.app",
    "terminal.integrated.copyOnSelection": true,
    "workbench.colorCustomizations": {
        "terminal.foreground": "#839496",
        "terminal.background": "#002833",
        "terminal.ansiBlack": "#003541",
        "terminal.ansiBlue": "#268bd2",
        "terminal.ansiCyan": "#2aa198",
        "terminal.ansiGreen": "#859901",
        "terminal.ansiMagenta": "#d33682",
        "terminal.ansiRed": "#dc322f",
        "terminal.ansiWhite": "#eee8d5",
        "terminal.ansiYellow": "#b58901",
        // "terminal.ansiBrightBlack": "#586e75",
        "terminal.ansiBrightBlue": "#839496",
        "terminal.ansiBrightCyan": "#93a1a1",
        "terminal.ansiBrightGreen": "#586e75",
        "terminal.ansiBrightMagenta": "#6c6ec6",
        "terminal.ansiBrightRed": "#cb4b16",
        "terminal.ansiBrightWhite": "#fdf6e3",
        "terminal.ansiBrightYellow": "#657b83",
        "terminalCursor.foreground": "#839496",
        "terminalCursor.background": "#003541"
    },
    "terminal.integrated.letterSpacing": 0.5,
    "editor.tabSize": 2,
    "mocha.files.glob": "tests/**/*.js",
    "files.trimTrailingWhitespace": true,
    "[markdown]": {
        "files.trimTrailingWhitespace": false
    },
    "files.associations": {
        "Dockerfile.template": "dockerfile",
    },
    "prettier.singleQuote": true,
    "prettier.trailingComma": "all",
    "javascript.updateImportsOnFileMove.enabled": "always",
    "jest.autoEnable": false,
    "markdown.extension.toc.updateOnSave": false,
    "markdown.extension.toc.unorderedList.marker": "*",
    "markdown.extension.italic.indicator": "_",
    "markdown.extension.orderedList.marker": "one",
    "flow.useNPMPackagedFlow": true,
    "[yaml]": {},
    "window.zoomLevel": 0,
    "sync.gist": "afcb5950f82a6ac8e3fc8199f6db504a",
    "php-cs-fixer.executablePath": "${extensionPath}/php-cs-fixer.phar",
    "php-cs-fixer.lastDownload": 1612774993104,
    // These are all my auto-save configs
    "editor.formatOnSave": false,
    "editor.formatOnSaveTimeout": 5000,
    // turn it off for JS and JSX, we will do this via eslint
    "[javascript]": {
        "editor.formatOnSave": false
    },
    "[javascriptreact]": {
        "editor.formatOnSave": false
    },
    "[typescript]": {
        "editor.formatOnSave": true,
        "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[typescriptreact]": {
        "editor.formatOnSave": true,
        "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[php]": {
        "editor.formatOnSave": false,
    },
    // show eslint icon at bottom toolbar
    "eslint.alwaysShowStatus": true,
    // tell the ESLint plugin to run on save
    "editor.codeActionsOnSave": {
        "source.fixAll": true
    },
    // Optional BUT IMPORTANT: If you have the prettier extension enabled for other languages like CSS and HTML, turn it off for JS since we are doing it through Eslint already
    "prettier.disableLanguages": ["javascript", "javascriptreact", "php"],
    "workbench.activityBar.visible": false,
    "cSpell.enabledLanguageIds": [
        "asciidoc",
        "c",
        "cpp",
        "csharp",
        "css",
        "git-commit",
        "go",
        "handlebars",
        "haskell",
        "html",
        "jade",
        "java",
        "javascript",
        "javascriptreact",
        "json",
        "jsonc",
        "latex",
        "less",
        "markdown",
        "php",
        "plaintext",
        "pug",
        "python",
        "restructuredtext",
        "rust",
        "scala",
        "scss",
        "text",
        "typescript",
        "typescriptreact",
        "yaml",
        "yml"
    ],
    "editor.tabCompletion": "on",
    "prettier.requireConfig": true,
    "[json]": {
        "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "prettier.cssEnable": [
        "css",
        "less",
        "scss"
    ],
    "files.insertFinalNewline": true,
    "editor.suggestSelection": "first",
    "vsintellicode.modify.editor.suggestSelection": "automaticallyOverrodeDefaultValue",
    "typescript.updateImportsOnFileMove.enabled": "always"
}
