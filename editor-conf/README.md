# Neovim-config
IDE layering the lua-powered vim fork to rival and beat most code editors in the market.
> Since Neovim is an infinitely extensible program, we can turn it into anything.

## Prebuilt configs
There are many preset configurations and frameworks on the internet for instant conversion of Neovim from a basic text editor into a full-fledged IDE with all the keychains and trinkets. Like LunarVim, NvChad, and AstroVim.

![image](https://user-images.githubusercontent.com/123345456/232181915-dc890ef3-325d-4687-b1bf-683706b9ac3a.png)
## The problem
Since these are made by some other developer, it's sometimes difficult or impossible to customise them to the user's own preference. Like disabling any feature the user doesn't want to use. They're also stressful to navigate through because of changed keymappings of features existing and totally fresh to the user.

## Basic features of an IDE
+ Code autocompletion
+ LSP support
+ FileTree
+ Syntax highlighting
+ Inbuilt terminal
+ Git integration
+  Status bar
+ Debugger/Linter/Formatter (They're not the same)

## Getting inspired
The solution is to take inspiration from everything, choose what plugins need to be there and what needs to be removed, then write a custom a init.lua config with the desired package manager. Here's mine that was inspired by NvChad, but is less "bloated" in comparison:
![image](https://user-images.githubusercontent.com/123345456/232181973-b2ade482-1d22-4c50-a12e-6086ec7d02db.png)
## The init script
The [script](https://github.com/Spirizeon/Neovim-config/blob/main/init.lua) given is for a plug-and-play approach. It loads lazy.nvim for installing packages, and has mason-nvim for installing LSPs, and other similar extensions.

### Packages📦
- Lazy-nvim 
- Telescope-nvim
- Plenary-nvim
- Mason-nvim
- Lualine 
- Luasnip
- Indent-blankline-nvim
- Dashboard-nvim 
- Treesitter-nvim 
- Neorg
### LSPs🉑
- **Backend**: Python,SQL 
- **Frontend:** CSS, HTML,
- **Configuration**: Vimscript,Lua, Docker
- **Formatters:** Python, LaTeX, Markdown
### **Cheatsheet:** [Click here](https://devhints.io/vim) 

# EXTRA: Helix-config
Helix is a CLI editor written in Rust. ([Check it out!](https://helix-editor.com/)).
It comes with built-in LSP support,fuzzy finder, formatting, and syntax highlighting for most languages
### Config-files 🖋️-
+ **Core**: config.toml
+ **Theme**: doom_acario_dark.toml 
+ **Additional LSP support**: languages.toml
+ + marksman
+ + pylsp
+ + texlab
+ + vscode-css-languageserver
+ + vscode-html-languageserver
+ + clangd

### Installation script (Win + powershell)
```
winget install Helix.Helix
```

Add the Helix directory to `PATH`
Open up a new powershell window

### Setting up LSPs and configuration
Configuration files are saved in:
+ `~/.config/helix` for Linux 
+ `%USERPROFILE%\AppData\Roaming\helix` for Windows

Files like `languages.toml` and `config.toml` are stored here (along with the theme file)

#### Changing the theme
Themes can be downloaded from [here](https://github.com/helix-editor/helix/tree/master/runtime/themes) or can be copied from the runtime folder in the source code directory
#### Adding LSPs
`hx --health` will give you the required LSPs for Helix
They need to be downloaded separately, and added to `PATH` (Best if added to Sys environment variables)
The [docs](https://docs.helix-editor.com/) will help on how to configure `languages.toml` so that Helix detects the LSPs
### Recommended terminal emulators
+ Alacritty (personal choice)
+ Kitty
+ Windows Terminal
