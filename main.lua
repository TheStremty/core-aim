local notifications = loadstring(game:HttpGet(("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua"),true))()
local function info(message, color)
	game.StarterGui:SetCore("ChatMakeSystemMessage",{
		Text = message;
		Color = color;
	})
end

info("^ Stremty.space ^", Color3.new(1,0,1))
info("TWW. 1.0.0 LUA SCR.",Color3.new(1,1,0))
info("[TASK] Loading panel -",Color3.new(1,1,0))
info("^ Stremty.space ^",Color3.new(1,0,1))
notifications:notify{
    Title = "Stremty.space",
    Description = "Best wild west script.",
    Length=3
}




local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Stremty.space", "GrapeTheme")



-- Self
local Self = Window:NewTab("Self")
local Player = Self:NewSection("Player")
local Movement = Self:NewSection("Movement")
Movement:NewButton("Fly [Z]","Flying",function()
    loadstring(game:HttpGet("https://api.upload.systems/pastes/YmAQAMuZOPWZ/raw",true))()
    notifications:notify{
        Title = "Stremty.space",
        Description = "Fly loaded",
        Length=3
    }
end)
Movement:NewButton("Walkspeed","Cframe walking",function()
    loadstring(game:HttpGet("https://api.upload.systems/pastes/8FmqwB6fGlTX/raw",true))()
    notifications:notify{
        Title = "Stremty.space",
        Description = "Walkspeed loaded",
        Length=3
    }
end)
Movement:NewButton("NoFall+Stamina","No Fall Damage, Inf stamina",function()
    loadstring(game:HttpGet("https://api.upload.systems/pastes/ozc1HMPD3Y8H/raw",true))()
    notifications:notify{
        Title = "Stremty.space",
        Description = "NoFall enabled",
        Length=3
    }
end)
-- Combat
local Combat = Window:NewTab("Combat")
local Aim = Combat:NewSection("Aimbot")
Aim:NewButton("Silent Aim", "Just aimbot", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheStremty/core-aim/main/tww-silentaim.lua",true))();
    notifications:notify{
        Title = "Stremty.space",
        Description = "Aimbot loaded",
        Length=3
    }
end)
local Weapons = Combat:NewSection("Weapons")
Weapons:NewButton("Instant Reload","Fast Reloading",function()
    loadstring(game:HttpGet("https://api.upload.systems/pastes/65I9ztqMt13Y/raw"))();
    notifications:notify{
        Title = "Stremty.space",
        Description = "Fast reload loaded",
        Length=3
    }
end)
Weapons:NewButton("Gunfire speed","Rapidfire",function()
    loadstring(game:HttpGet("https://api.upload.systems/pastes/Kcvox5TENwws/raw",true))()
    notifications:notify{
        Title = "Stremty.space",
        Description = "Gunfire speed loaded",
        Length=3
    }
end)
-- Visuals
local Visuals = Window:NewTab("Visuals")
local Wallhack = Visuals:NewSection("Player ESP")
Wallhack:NewButton("Highlight Players", "Just esp", function()
    loadstring(game:HttpGet("https://github.com/TheStremty/core-aim/blob/main/tww-esp.lua"))();
    notifications:notify{
        Title = "Stremty.space",
        Description = "Esp loaded",
        Length=3
    }
end)
local Graphics = Visuals:NewSection("Graphics")
Graphics:NewButton("Smooth materials","Fps Boost",function()
    game:GetService("MaterialService")["Use2022Materials"] = true
    notifications:notify{
        Title = "Stremty.space",
        Description = "Smooth graphics loaded",
        Length=3
    }
end)
Graphics:NewButton("Brightness", "Just FullBright", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/7S3aQsQF"))();
    notifications:notify{
        Title = "Stremty.space",
        Description = "Fullbright loaded",
        Length=3
    }
end)

-- Misc
local Misc = Window:NewTab("Misc")
local Gravity = Misc:NewSection("Gravity")
Gravity:NewToggle("Low Gravity", "High jump", function(state)
    if state then
        game.workspace.Gravity = 082.2
        notifications:notify{
            Title = "Stremty.space",
            Description = "Low gravity enabled",
            Length=3
        }
    else
        game.workspace.Gravity = 165
        notifications:notify{
            Title = "Stremty.space",
            Description = "Low gravity disabled",
            Length=3
        }
    end
end)
local Panel = Misc:NewSection("Panel")
Panel:NewKeybind("Open menu", "Change keybind", Enum.KeyCode.J, function()
	Library:ToggleUI()
    Library:
end)

local Other = Misc:NewSection("Other")
Other:NewButton("Anti AFK", "AFK MODE",function()
    loadstring(game:HttpGet("https://api.upload.systems/pastes/VGNbIYHbpxmM/raw",true))()
    notifications:notify{
        Title = "Stremty.space",
        Description = "AntiAfk enabled",
        Length=3
    }
end)
Other:NewButton("Rejoin","Server hop",function()
    warn"Rejoining Command Sent...."
	local TeleportService = game:GetService("TeleportService")
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer

	local Rejoin = coroutine.create(function()
		local Success, ErrorMessage = pcall(function()
			TeleportService:Teleport(game.PlaceId, LocalPlayer)
		end)

		if ErrorMessage and not Success then
			warn(ErrorMessage)
		end
	end)
	wait(2)
	print"[SERVER] Rejoin command accepted"
	wait(1)
	coroutine.resume(Rejoin)
	print"[SERVER] Rejoining"
end)
notifications:notify{
    Title = "Open/Close",
    Description = "Use 'J' To Close or Open Menu!",
    Length = 8.5
}
wait(8.6)