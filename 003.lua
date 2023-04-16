loadstring(game:HttpGet(('https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua'),true))()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("KrScript", "DarkTheme")

_G.autoTrain = false;

-- Movement
local Tab = Window:NewTab("Movement")

local Section = Tab:NewSection("Section Name")

Section:NewToggle("autoTrain", "AFK Train", function(state)
    if state then
        _G.autoTrain = true;
        
        while _G.autoTrain == true do

        local args = {
        [1] = "Strength"
        }

        game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))
        

        local args = {
        [1] = "Endurance"
        }
        game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))

        local args = {
        [1] = "Psychic"
        }

        game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))

        wait(0.5)
        end
        
    else
        _G.autoTrain = false;
    end
end)

--Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
    
--end)