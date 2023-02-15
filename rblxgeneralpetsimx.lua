if game.PlaceId == 6284583030 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("RBLXGeneral for Pet Sim X by LiamVR + DaRealLebs",  "DarkTheme")
    
    local playerTab = Window:NewTab("Player")
    local utilitesTab = Window:NewTab("Utilites")
    local creditsandsettingsTab = Window:NewTab("Credits and Settings")
    
    local settingsSection = creditsandsettingsTab:NewSection("Settings")
    local creditsSection = creditsandsettingsTab:NewSection("Credits")
    local playerSection = playerTab:NewSection("Player")
    
    creditsSection:NewLabel("Made by LiamVR + DaRealLebs")
    
    playerSection:NewSlider("Player Speed", "Makes you go faster", 200, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)
    
    playerSection:NewButton("Set default speed", "Sets the player's speed to the default speed", function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.StarterGui:SetCore("SendNotification", {
            Title = "RBLXGeneral | Speed";
            Text = "Set the player's speed to default."; 
            Duration = 7;
            })
    end)
end
game.StarterGui:SetCore("SendNotification", {
    Title = "RBLXGeneral | Not Supported";
    Text = "This game is not supported with this client, this client is for Pet Sim X."; 
    Duration = 7;
    })
