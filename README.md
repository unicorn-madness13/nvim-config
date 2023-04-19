# Introduction

Packer is used for plugin management. After that is successfully setup, simply
run the following from inside nvim with the packer.lua file buffer open:

```
:so
:PackerSync
```

After that's done, all the plugins should be installed and configured.

Generally, I run `nvim.exe` directly and configure the font through Windows' interface,
since `nvim.exe` is technically a shell program.

`which-key` is installed and `<space>` is the default leader key. Simply press `<space>`
to see the configured keys.

`telescope` is used as the fuzzy finder.

# Salient Keymaps

* `<space>ff`: start a telescope file finder.
* `<space>fs`: start a telescope symbol finder (requires a lsp to be installed).
* `<space>cp`: put from clipboard.
* `<space>cY`: yank to clipboard.
