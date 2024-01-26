# Directory structure:
```
 - ROOT
    |- anirudha - Contains all my configurations.
    |   |- configs - Contains config overrides for plugins.
    |   |   |- ... -
    |   |   |- ... - Files here contain plugin specific config overrides.
    |   |   |- ... -
    |   |   +- overrides.lua - Directory of all plugin specific overrides.
    |   |
    |   |- core - Contains nvim core settings.
    |   |   |- init.lua - Sources nvim core settings.
    |   |   |- keymaps.lua - Contains personal nvim key-bindings.
    |   |   +- options.lua - Contains personal nvim options and settings.
    |   |
    |   |- plugins - Contains list of plugins to be loaded.
    |   |   +- init.lua - NvChad compatible dictionary of all plugins to
    |   |                 be loaded along with their config overrides.
    |   +- statusline.lua - NvChad compatible status line module.
    |
    |- chadrc.lua - NvChad specific settings.
    +- init.lua - Sources personal setting for nvim (requires only).
```
