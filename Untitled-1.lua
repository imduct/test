local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player - game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "key system", HidePremium = false, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "logged in,"..Player.Name.."."
	Content = "you are",
	Image = "rbxassetid://4483345998",
	Time = 5
})


_G.Key = "ihatedahoodians"
_G.KeyInput = "string"

function MakeScriptHub()
    print("well done, correct key")
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "alert"
        Content = "correct key, congrats",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function IncorrectKeyNotification()
        OrionLib:MakeNotification({
            Name = "alert"
            Content = "incorrect key!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
local Tab = Window:MakeTab({
	Name = "key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "enter key.",
	Default = "-",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "check key",
	Callback = function()
      		if _G.KeyInput = _G.Key then
                MakeScriptHub()
                CorrectKeyNotification()
            else
                IncorrectKeyNotification()
            end
  	end    
})
