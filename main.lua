local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Aaditya lala hub ",
   Icon = 0,
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Aaditya lamsal's hand ",
   ShowText = "Rayfield",
   Theme = "Default",

   ToggleUIKeybind = "K",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = true,
   KeySettings = {
      Title = " key ",
      Subtitle = "Key is AADITYALALAISGOD",
      Note = "AADITYALALAISGOD      is key ",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"AADITYALALAISGOD"}
   }
})

Rayfield:Notify({
   Title = " HI ",
   Content = " WELCOME BROS AND GUYS ! ARE YOU NIGGA ",
   Duration = 6.5,
   Image = 4483362458,
})

-- ────────────────────────────────────────────────
-- Main Tab – Movement Features
-- ────────────────────────────────────────────────

local MainTab = Window:CreateTab("Home tab ", 4483362458)

-- Infinite Jump Toggle
local InfiniteJumpEnabled = false

MainTab:CreateToggle({
   Name = "Infinite Jump",
   CurrentValue = false,
   Flag = "InfiniteJumpToggle",
   Callback = function(Value)
      InfiniteJumpEnabled = Value
      Rayfield:Notify({
         Title = "Infinite Jump",
         Content = Value and "Enabled" or "Disabled",
         Duration = 4
      })
   end,
})

game:GetService("UserInputService").JumpRequest:Connect(function()
   if InfiniteJumpEnabled then
      local character = game.Players.LocalPlayer.Character
      if character then
         local humanoid = character:FindFirstChildWhichIsA("Humanoid")
         if humanoid then
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
         end
      end
   end
end)

-- WalkSpeed Slider
local WalkSpeedValue = 16

MainTab:CreateSlider({
   Name = "Walkspeed Hack",
   Range = {0, 10000},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "SliderWalkSpeed",
   Callback = function(Value)
      WalkSpeedValue = Value
      local character = game.Players.LocalPlayer.Character
      if character then
         local humanoid = character:FindFirstChildWhichIsA("Humanoid")
         if humanoid then
            humanoid.WalkSpeed = Value
         end
      end
   end,
})

game:GetService("RunService").Heartbeat:Connect(function()
   if WalkSpeedValue == 16 then return end
   local character = game.Players.LocalPlayer.Character
   if character then
      local humanoid = character:FindFirstChildWhichIsA("Humanoid")
      if humanoid and humanoid.WalkSpeed ~= WalkSpeedValue then
         humanoid.WalkSpeed = WalkSpeedValue
      end
   end
end)

-- JumpPower Slider
local JumpPowerValue = 50

MainTab:CreateSlider({
   Name = "Jumppower Hack",
   Range = {0, 10000},
   Increment = 10,
   Suffix = "JumpPower",
   CurrentValue = 50,
   Flag = "SliderJumpPower",
   Callback = function(Value)
      JumpPowerValue = Value
      local character = game.Players.LocalPlayer.Character
      if character then
         local humanoid = character:FindFirstChildWhichIsA("Humanoid")
         if humanoid then
            humanoid.JumpPower = Value
         end
      end
   end,
})

game:GetService("RunService").Heartbeat:Connect(function()
   local character = game.Players.LocalPlayer.Character
   if character then
      local humanoid = character:FindFirstChildWhichIsA("Humanoid")
      if humanoid and humanoid.JumpPower ~= JumpPowerValue then
         humanoid.JumpPower = JumpPowerValue
      end
   end
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
   task.wait(0.3)
   local humanoid = character:FindFirstChildWhichIsA("Humanoid")
   if humanoid then
      humanoid.WalkSpeed = WalkSpeedValue
      humanoid.JumpPower = JumpPowerValue
   end
end)

-- ────────────────────────────────────────────────
-- DEV TOOL Tab – Developer & Utility Tools
-- ────────────────────────────────────────────────

local DevTab = Window:CreateTab("DEV TOOL", 4483362458)

-- SimpleSpy
DevTab:CreateButton({
   Name = "Load SimpleSpy (Remote Spy)",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
      Rayfield:Notify({
         Title = "DEV TOOL",
         Content = "SimpleSpy (Remote Spy) loaded successfully.",
         Duration = 5,
      })
   end,
})

-- Dex Explorer
DevTab:CreateButton({
   Name = "Load Dex Explorer",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua"))()
      Rayfield:Notify({
         Title = "DEV TOOL",
         Content = "Dex Explorer loaded successfully.",
         Duration = 5,
      })
   end,
})

-- Dark Dex
DevTab:CreateButton({
   Name = "Load Dark Dex (Enhanced)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua"))()
      Rayfield:Notify({
         Title = "DEV TOOL",
         Content = "Dark Dex (enhanced version) loaded successfully.",
         Duration = 5,
      })
   end,
})

-- Infinite Yield
DevTab:CreateButton({
   Name = "Load Infinite Yield",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
      Rayfield:Notify({
         Title = "DEV TOOL",
         Content = "Infinite Yield loaded. Use :saveinstance or other commands as needed.",
         Duration = 6,
      })
   end,
})

DevTab:CreateLabel("IF YOU ARE A DEV USE THIS !!")
