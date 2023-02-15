if game.PlaceId === 6516141723 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("RBLXGeneral for Doors by LiamVR + DaRealLebs",  "Midnight")
    
    local playerTab = Window:NewTab("Player")
    local utilitesTab = Window:NewTab("Utilites")
    local creditsandsettingsTab = Window:NewTab("Credits and Settings")
    local singleplayerTab = Window:NewTab("Singleplayer ONLY")
    
    local settingsSection = creditsandsettingsTab:NewSection("Credits")
    local espSection = utilitesTab:NewSection("ESP")
    local entitesSection = utilitesTab:NewSection("Entities")
    local creditsSection = creditsandsettingsTab:NewSection("Settings")
    local speedSection = playerTab:NewSection("Speed")
    local fovSection = playerTab:NewSection("FOV")
    
    creditsSection:NewLabel("Made by LiamVR + DaRealLebs")
    creditsSection:NewLabel("WARNING: USE THIS MENU AT YOUR OWN RISK!")
    
    speedSection:NewSlider("Player Speed", "Makes you go faster", 200, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)
    
    speedSection:NewButton("Set default speed", "Sets the player's speed to the default speed", function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.StarterGui:SetCore("SendNotification", {
            Title = "Speed";
            Text = "Set the player's speed to default."; 
            Duration = 7;
            })
    end)
    
    
    fovSection:NewSlider("Player FOV", "Makes the player FOV (field of view) higher", 120, 80, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Workspace.Camera.FieldOfView = s
    end)
    
    speedSection:NewButton("Set default speed", "Sets the player's FOV to the default FOV", function()
        game.Workspace.Camera.FieldOfView = 80
        game.StarterGui:SetCore("SendNotification", {
            Title = "FOV";
            Text = "Set the player's speed to default."; 
            Duration = 7;
            })
    end)
    
    entitesSection:NewToggle("Disable Screech", "Hides/Disables screech from the game", function(state)
        if state then
            print("Toggle On")
        else
            print("Toggle Off")
        end
    end)
end
