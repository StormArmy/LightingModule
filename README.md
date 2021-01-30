# LightingModule

A robust client-sided lighting effect controller

## Initialising

In order to use this module, initialise it by typing:

```lua
LightingModule:init()
```

## Setting Effects

There are plenty of functions to invoke!(They are pretty straight-forward)

```lua
LightingModule:set_bloom(dict,enabled)

LightingModule:set_blur(dict,enabled)

LightingModule:set_colorCorrection(dict,enabled)

LightingModule:set_sunRays(dict,enabled)

```

## Tips

It is always a good practice to initialise this module in an independent client script since relatives may interrupt your codes.
---
Dict should be a lua-table whose key is the name of the target property.

