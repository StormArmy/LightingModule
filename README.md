# LightingModule

A robust client-sided lighting effect controller

## Installing

### Method 1: Git submodule

Head to your favorite path and type:
```bash
git submodule add https://github.com/StormArmy/LightingModule <Set Name>
```

### Method 2: Roblox

Copy and paste this batch of command in your Roblox Command Bar:

```lua
local Http = game:GetService("HttpService")
local before = Http.HttpEnabled
Http.HttpEnabled = true
local a = Instance.new("ModuleScript")
a.Parent = game:GetService("Selection"):Get()[1] or game:GetService("ReplicatedFirst")
a.Name = "LightingModule"
a.Source = Http:GetAsync("https://raw.githubusercontent.com/StormArmy/LightingModule/master/src/init.lua")
game:GetService("Selection"):Set({a})
Http.HttpEnabled = before
```

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
Dict should be a lua-table whose key is the name of the target property.

You can edit this read me by pulling! Feel free to add!
