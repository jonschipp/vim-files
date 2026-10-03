<!-- Auto-generated from a session; pending Jon's review. -->
# vim-files

Jon's Vim config. `~/.vimrc` -> `vimrc` and `~/.vim` -> `vim/` (symlinks into this checkout), so edits on master take effect in Vim immediately.

- Plugins are vendored under `vim/bundle/` (loaded by pathogen) as plain files, not submodules. `vim-flake8` and `vim-go` are present but untracked because they carry nested `.git` dirs.
- Colors: `colorscheme solarized` (vim-colors-solarized), `background=dark`, `termguicolors` on. Terminal is Ghostty with a custom `solarized-dark` theme (`~/.config/ghostty/themes/solarized-dark`).
- `vim/vim` is a stray symlink to an old absolute path; don't commit it.
- Remote is GitHub `jonschipp/vim-files`; default branch `master`.
- Gotcha: inside the Claude sandbox, `git push` and `git worktree remove` need the sandbox disabled.
- Solarized is patched (3 `has("gui_running")` checks also accept `&termguicolors`) in both `vim/colors/solarized.vim` and the bundle copy; the stock plugin ignores truecolor in a terminal. Re-apply if the plugin is updated. `~/.vim/colors` wins over the bundle on the runtimepath.
