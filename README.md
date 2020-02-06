<p align="center">
  <img src="/scrot.png", width="600", height="400", title="comfy.vim"/>
</p>

<p align="center">🛋 A Hackable, Fully Featured, Rice Friendly Neovim Configuration 🛋</p>

<p align="center">
  <a href="#features">Features</a> •
  <a href="#installation">Installation</a> •
  <a href="#usage">Usage</a> •
  <a href="#required-tools">Required Tools</a>
  <br>
</p>


# Features

- 🎨 Colorscheme generated with [pywal](https://github.com/dylanaraps/pywal)
- 💭 Intellisense, Completion, and Linting with [coc.nvim](https://github.com/neoclide/coc.nvim)
- 🏷️ Tag management with [vista.vim](https://github.com/liuchengxu/vista.vim)
- 🔀 Git integration with [vim-fugitive](https://github.com/tpope/vim-fugitive), [vim-gitgutter](https://github.com/airblade/vim-gitgutter) and [lazygit](https://github.com/jesseduffield/lazygit)
- ✈️ Informative statusline and tabline with [vim-airline](https://github.com/vim-airline/vim-airline)
- ✂️ Code snippets powered by [UltiSnips](https://github.com/sirver/UltiSnips)
- 💡 Intelligent suggestions with [vim-tabnine](https://github.com/zxqfl/tabnine-vim)
- 📁 Simple file browsing with [Netrw](https://www.vim.org/scripts/script.php?script_id=1075)
- 📜 Dynamic homepage with [vim-startify](https://github.com/mhinz/vim-startify)
- 🔎 Distraction free writing with [Goyo](https://github.com/junegunn/goyo.vim)
- 🔧 Easily configfurable to suit your needs
- ⌨️ Common sense keybinds, so you can get right to work
- 🧰 Assorted editing enhancements with
  - [vim-surround](https://github.com/tpope/vim-surround)
  - [auto-pairs](https://github.com/jiangmiao/auto-pairs)
  - [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
  - [indentLine](https://github.com/Yggdroot/indentLine)
  - [tabular](https://github.com/godlygeek/tabular)
  - [comfortable-motion.vim](https://github.com/comfortable-motion.vim)
  - [vim-devicons](https://github.com/ryanoasis/vim-devicons)
  - [NERD commenter](https://github.com/scrooloose/nerdcommenter/)

# Installation

Ensure that GNU's `stow` is installed, and then just run `make install`. This will create the needed symlink
in `~/.config/nvim` to link this repo to where the config is expected.

Before installing for the first time, go into the `comfy.vim/nvim/.config/nvim` directory and run `nvim -u init.vim`. This will tell neovim to launch using this configuration file. This lets you fully get everything up and running before you commit to puting it in `.config`. Back up any old configs!

# Usage

## Keybindings

Click to expand

<details><summary><code>Basic keybinds</code> 🔑</summary>
<p>
  
| Function                                | Keybind         |
| --------------------------------------- | --------------- |
| Leader Key                              | `SPACE`         |
| Exit insert mode                        | `jk` or `kj`    |

</p>
</details>

<details><summary><code>Editing</code> 🧬</summary>
<p>
  
| Function                                | Keybind         |
| --------------------------------------- | --------------- |
| NERDComment toggle comment              | `<Leader>n`     |
| NERDComment sexy comment                | `<Leader>ns`    |
| NERDComment append comment              | `<Leader>na`    |
| NERDComment uncomment                  | `<Leader>nu`    |
| NERDComment comment                    | `<Leader>nc`    |
| NERDComment invert                     | `<Leader>ni`    |

</p>
</details>

<details><summary><code>Navigation</code> 🚀</summary>
<p>
  
| Function                                | Keybind         |
| --------------------------------------- | --------------- |
| Navigate to left window                     | `Ctrl+h`                |
| Navigate to right window                    | `Ctrl+l`                |
| Navigate to top window                      | `Ctrl+k`                |
| Navigate to bottom window                   | `Ctrl+j`                |
| Horizontal split then move to bottom window | `<Leader>+Ctrl+s`    |
| Horizontal split then move to right window  | `<Leader>+Ctrl+l`    |
| Next tab                                    | `Tab`                  |
| Previous tab                                | `Shift+Tab`        |
| Kill buffer                                 | `<Leader>bk`    |
| Scroll up                                   | `Ctrl+j` or mouse scroll    |
| Scroll down                                 | `Ctrl+k` or mouse scroll    |

</p>
</details>

<details><summary><code>coc.nvim</code> 💭</summary>
<p>
  
| Function                                | Keybind         |
| --------------------------------------- | --------------- |
| Open completion window                  | `Tab`           |
| Accept completion                       | `Enter`         |
| coc-definition                          | `<Leader>cd`    |
| coc-type-definition                     | `<Leader>ctd`   |
| coc-type-implementation                 | `<Leader>ci`    |
| coc-references                          | `<Leader>cr`    |
| coc-rename                              | `<Leader>crn`   |
| coc-format-selected                     | `<Leader>cf`    |
| coc-fix-current                         | `<Leader>cfl`    |
| :CocList diagnostics                    | `<Leader>cdi`   |
| :CocList extensions                     | `<Leader>ce`    |
| :CocList commands                       | `<Leader>cc`    |
| :CocList outline                        | `<Leader>co`    |

</p>
</details>

<details><summary><code>git</code> 🔀</summary>
<p>
  
| Function                                | Keybind         |
| --------------------------------------- | --------------- |
| :Gstatus                                | `<Leader>gs`    |
| :Gdiffsplit                             | `<Leader>gd`    |
| :Gcommit                                | `<Leader>gc`    |
| :Gpush                                  | `<Leader>gp`    |
| :Gpull                                  | `<Leader>gP`    |
| :Gmove                                  | `<Leader>gm`    |
| :Gmerge                                 | `<Leader>gM`    |
| :Gbrowse                                | `<Leader>gb`    |
| :CocCommand git.browserOpen             | `<Leader>gbl`   |
| :CocCommand git.chunkInfo               | `<Leader>gh`    |
| :CocCommand git.showCommit              | `<Leader>gsc`   |
| :CocCommand git.toggleGutters           | `<Leader>gg`    |
| :ToggleLazyGit                          | `<Leader>lg`    |

</p>
</details>

<details><summary><code>Translation </code> 🌐</summary>
<p>
  
| Function                                | Keybind         |
| --------------------------------------- | --------------- |
| :Translate                              | `<Leader>t`     |
| :TranslateW                             | `<Leader>tw`    |
| :TranslateR                             | `<Leader>tr`    |

</p>
</details>

<details><summary><code>LaTeX </code> 📜</summary>
<p>
  
| Function                                | Keybind         |
| --------------------------------------- | --------------- |
| :VimtexCompile                          | `<Leader>lc`    |
| :VimtexCompileSelected                  | `<Leader>ls`    |
| :VimtexInfo                             | `<Leader>li`    |
| :VimtexTocToggle                        | `<Leader>lt`    |
| :VimtexView                             | `<Leader>lv`    |

</p>
</details>

<details><summary><code>Misc</code> 🧰</summary>
<p>
  
| Function                                | Keybind         |
| --------------------------------------- | --------------- |
| :ToggleLazyDocker                       | `<Leader>ld`    |
| :MarkdownPreview                        | `<Leader>md`    |

</p>
</details>

Check `mappings.vim` for a complete list of keybinds.

## Startify

To open Neovim to the startify buffer, simply launch `nvim` without any arguments. Your recently edited files will be displayed, as well as recently edited files from the current directory.

<p align="center">
  <img src="https://gideonwolfe.com/img/neovim/reaper/startify.png?" width="640" height="360" title="startify">
</p>

## Completion

In the middle of a word, you can press `Tab` to open the Coc floating completion menu and cycle through options. This menu should be populated with sippets from `UltiSnips`, smart complete from `TabNine`, and any other completion suggestions. Press `Shift+Tab` to go up in the menu, and `Enter` to select an option.

<p align="center">
  <img src="https://gideonwolfe.com/img/neovim/reaper/completion.png" width="640" height="360" title="coc">
</p>
Note: Windows are set to the background color because the other colors look gross IMO. Ideally we could have a border on the floating windows but that is not implemented in CoC yet.

## Netrw

Be a man.

## Airline

### Tabline

The tabline will display the currently open buffers, and whether they have been modified.

<p align="center">
  <img src="https://gideonwolfe.com/img/neovim/reaper/tabline.png" width="940" height="13" title="tabline">
</p>

### Statusbar

The status bar displays the current editing mode, git hunks, git branch with branch status, the modified status of the buffer, the filename and filetype, the character encoding method, progress through file, and warnings/errors found by linter.

<p align="center">
  <img src="https://gideonwolfe.com/img/neovim/reaper/statusbar.png" width="940" height="23" title="statusbar">
</p>

## Vista

I am still ironing out the kinks in my vista config (specifically with C files), but it should work pretty well for most filetypes. Press `F8` to toggle the Vista window.

<p align="center">
  <img src="https://gideonwolfe.com/img/neovim/reaper/vista.png" width="640" height="360" title="vista">
</p>

For quick location of tags, you can activate the `Vista finder` fuzzyfinder by pressing `<Leader>ft`

<p align="center">
  <img src="https://gideonwolfe.com/img/neovim/reaper/vistafuzzy.png" width="640" height="360" title="vistafzf">
</p>

To navigate the fzf menu, you can type the name of the tag or use `Ctrl+j` or `Ctrl+k`

## LazyGit and LazyDocker

LazyGit and LazyDocker give you a convenient TUI portal to your current git repo or docker stack. They can be brought up with `<Leader>lg` and `<Leader>ld` respectively.

<p align="center">
  <img src="https://gideonwolfe.com/img/neovim/reaper/lazygit.png" width="640" height="360" title="lazygit">
</p>
<p align="center">
  <img src="https://gideonwolfe.com/img/neovim/reaper/lazydocker.png" width="640" height="360" title="lazydocker">
</p>

## Markdown

While editing a markdown document, press `<Leader>md` to open a live preview of your document. You must edit the plugin settings to point to the absolute filepath of the `css` file. This shoud just mean changing the username.

<p align="center">
  <img src="https://gideonwolfe.com/img/neovim/reaper/markdown.png" title="markdown">
</p>

If you are running pywal, your colors will be dynamically sourced!

## LaTeX

While editing a LaTeX document, press `<Leader>lc` to start automatic compilation.

<p align="center">
  <img src="https://gideonwolfe.com/img/neovim/reaper/latex.png" title="latex">
</p>

# Required tools

These must be installed to make use of all the awesome features

- `fzf` to enable fuzzy finding
- `eslint` [npm package](https://www.npmjs.com/package/eslint) for coc-eslint (only for JavaScript)
- `ccls` package for C/C++ language servers
- `OracleJDK` or `OpenJDK`, version 8+ (only for Java)
- `git`
- coc.nvim [npm package](https://www.npmjs.com/package/coc.nvim)
- [pywal](https://github.com/dylanaraps/pywal) for colorscheme
- `neovim` python module from pip
- [lazydocker](https://github.com/jesseduffield/lazydocker) for TUI docker management
- [lazygit](https://github.com/jesseduffield/lazygit) for TUI git management
