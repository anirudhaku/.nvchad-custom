**This config is obsolete now. NcChad directory organization has been changed and this repo doeesn't work anymore.**

Replacement: https://github.com/anirudhaku/nvim_config

# Directory structure:
```
 - ROOT
    |- anirudha - Contains all my configurations.
    |   |- chad - Contains NvChad specific stuff.
    |   |   |- init.lua - Table of NvChad settings.
    |   |   |- mappings.lua - Contains mapping overrides for NvChad.
    |   |   +- statusline.lua - NvChad compatible status line module.
    |   |
    |   |- core - Contains nvim core settings and raw lua scripts.
    |   |   |- init.lua - Sources nvim core settings.
    |   |   |- keymaps.lua - Contains personal nvim key-bindings.
    |   |   +- options.lua - Contains personal nvim options and settings.
    |   |
    |   +- plugins - Contains list of plugins to be loaded.
    |       |- configs - Contains config overrides for plugins.
    |       |   |- ... -
    |       |   |- ... - Individual plugin config override files.
    |       |   |- ... -
    |       |   +- overrides.lua - Table of all plugin specific overrides.
    |       |
    |       |- local - Contains local plugins.
    |       |
    |       +- init.lua - Lazy/NvChad compatible table of all plugins to
    |                     be loaded along with their config overrides.
    |
    |- chadrc.lua - Sources stuff in anirudha/chad.
    +- init.lua - Sources personal setting for nvim (requires only).
```
