local LightingModule = {}

--services
local Lighting = game:GetService('Lighting')

--my controller

LightingModule.__real = {}

function construct(className)
    return {value = Lighting:FindFirstChildWhichIsA(className), className = className, enabled = false}
end

LightingModule.__real.__bloom           = construct('BloomEffect')
LightingModule.__real.__blur            = construct('BlurEffect')
LightingModule.__real.__sunRays         = construct('SunRaysEffect')
LightingModule.__real.__colorCorrection = construct('ColorCorrectionEffect')

function LightingModule:init()
    for _,structure in pairs(self.__real) do

        if not structure.value then

            structure.value = Instance.new(structure.className)
        end

        self:__updateParent(structure)
    end
end

function LightingModule:set_bloom(dict,enabled)
    self:__uni_set("__bloom",dict,enabled)
end

function LightingModule:set_blur(dict,enabled)
    self:__uni_set("__blur",dict,enabled)
end

function LightingModule:set_colorCorrection(dict,enabled)
    self:__uni_set("__colorCorrection",dict,enabled)
end

function LightingModule:set_sunRays(dict,enabled)
    self:__uni_set("__sunRays",dict,enabled)
end

--private methods

function LightingModule:__uni_set(which,dict,enabled)

    self.__real[which].enabled = enabled or false

    for key,value in pairs(dict) do
        self.__real[which].value[key] = value
    end

    self:__updateParent(self.__real[which])
end

function LightingModule:__updateParent(structure)
    assert(structure.value,"The value of structure:"..structure.className.." is nil. Have you initialised the module yet?")
    structure.value.Parent = structure.enabled and Lighting or script
end