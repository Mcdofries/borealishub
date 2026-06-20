-- // Boarelis Hub
-- // UI Base: Fluent (github.com/dawid-scripts/Fluent)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- // Detect current game name
local MarketplaceService = game:GetService("MarketplaceService")
local gameInfo = MarketplaceService:GetProductInfo(game.PlaceId)
local gameName = gameInfo and gameInfo.Name or "Unknown Game"

-- // Create Main Window
local Window = Fluent:CreateWindow({
    Title = "Boarelis Hub  " .. gameName,
    SubTitle = "",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl,
})

-- // Tabs
local Tabs = {
    Authentication  = Window:AddTab({ Title = "Authentication", Icon = "shield" }),
    Instructions    = Window:AddTab({ Title = "Instructions",   Icon = "info" }),
    SupportedGames  = Window:AddTab({ Title = "Supported Games", Icon = "gamepad-2" }),
}

-- ─────────────────────────────────────────
-- // Authentication Tab
-- ─────────────────────────────────────────

Tabs.Authentication:AddParagraph({
    Title = "Access Locked",
    Content = "This Scripthub requires you to join our group to access the rest of the script",
})

Tabs.Authentication:AddButton({
    Title = "Copy Access Link",
    Description = "Copies the group URL to your clipboard",
    Callback = function()
        local groupURL = "https://www.roblox.com.mu/communities/753552008/BorealisHub"
        setclipboard(groupURL)
        Fluent:Notify({
            Title = "Copied!",
            Content = "Group link copied to clipboard.",
            Duration = 3,
        })
    end,
})

-- ─────────────────────────────────────────
-- // Instructions Tab
-- ─────────────────────────────────────────

Tabs.Instructions:AddParagraph({
    Title = "How to get access",
    Content = "1. Click 'Copy Access Link' on the Authentication tab.\n2. Open the link and join the group.\n3. Rejoin the game and reopen this hub.",
})

-- ─────────────────────────────────────────
-- // Supported Games Tab
-- ─────────────────────────────────────────

-- // Combat & PVP
Tabs.SupportedGames:AddParagraph({ Title = "⚔️  COMBAT & PVP", Content = "────────────────────────────" })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Rivals", Content = "Aimbot, Silent Aim, ESP, Speed, Fly and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Da Hood", Content = "Aimbot, ESP, Silent Aim, Inf Ammo and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Murder Mystery 2", Content = "ESP, Auto Collect Coins, Speed and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Blue Lock: Rivals", Content = "Auto Farm, Auto Score, Speed and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Basketball Legends", Content = "Auto Score, Speed, Fly and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Strongest Ability Battlegrounds", Content = "Auto Farm, Auto Kill, God Mode and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Arsenal", Content = "Aimbot, ESP, No Recoil, Speed and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Evade", Content = "Speed, Fly, ESP, Auto Win and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ BedWars", Content = "Auto Farm, ESP, Kill Aura and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Survive the Killer", Content = "ESP, Speed, Fly, God Mode and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Flee the Facility", Content = "ESP, Speed, Auto Hack and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ The Mimic", Content = "Speed, Fly, God Mode, ESP and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Prison Life", Content = "ESP, Speed, Fly, God Mode and more." })

-- // Anime & RPG
Tabs.SupportedGames:AddParagraph({ Title = "🗡️  ANIME & RPG", Content = "────────────────────────────" })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Blox Fruits", Content = "Auto Farm, Raid Bot, Fruit Sniper, Teleport and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ King Legacy", Content = "Auto Farm, Teleport, Fruit Notifier and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Anime Defenders", Content = "Auto Wave, Auto Farm, Inf Gold and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Anime Vanguards", Content = "Auto Farm, Auto Wave, Inf Gold and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Anime Fighting Simulator X", Content = "Auto Farm, Auto Train, Speed and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Grand Piece Online", Content = "Auto Farm, Teleport, Devil Fruit Notifier and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Shindo Life", Content = "Auto Farm, Auto Spin, Teleport and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Project Mugetsu", Content = "Auto Farm, Auto Quest, Speed and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Demon Slayer RPG 2", Content = "Auto Farm, Auto Quest, Teleport and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Ro-Ghoul", Content = "Auto Farm, Auto Quest, Speed and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Soul War", Content = "Auto Farm, Auto Quest, Teleport and more." })

-- // Farming & Simulators
Tabs.SupportedGames:AddParagraph({ Title = "🌾  FARMING & SIMULATORS", Content = "────────────────────────────" })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Grow a Garden 2", Content = "Auto Farm, Auto Sell, Seed Spammer and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Grow a Garden 1", Content = "Auto Farm, Auto Sell and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Pet Simulator 99", Content = "Auto Farm, Auto Hatch, Auto Sell and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Fisch", Content = "Auto Fish, Auto Sell, Fish ESP and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Bee Swarm Simulator", Content = "Auto Farm, Auto Collect, Speed and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Mining Simulator 2", Content = "Auto Mine, Auto Sell, Speed and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Clicker Simulator", Content = "Auto Click, Auto Hatch, Speed and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Fishing Simulator", Content = "Auto Fish, Auto Sell and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Treasure Hunt Simulator", Content = "Auto Dig, Auto Sell, Speed and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Weight Lifting Simulator", Content = "Auto Lift, Auto Sell, Speed and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Egg Farm Simulator", Content = "Auto Farm, Auto Hatch, Auto Sell and more." })

-- // Tycoons
Tabs.SupportedGames:AddParagraph({ Title = "🏭  TYCOONS", Content = "────────────────────────────" })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Fast Food Tycoon", Content = "Auto Collect, Speed, Inf Money and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Restaurant Tycoon 2", Content = "Auto Collect, Speed and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Mega Noob Simulator", Content = "Auto Farm, Speed, Fly and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Build A Boat For Treasure", Content = "Inf Gold, Speed, Fly and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Prison Tycoon", Content = "Auto Collect, Speed, Inf Money and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Army Control Simulator", Content = "Auto Collect, Speed and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Hospital Tycoon", Content = "Auto Collect, Inf Money and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Car Dealership Tycoon", Content = "Auto Collect, Speed, Inf Money and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Retail Tycoon 2", Content = "Auto Collect, Inf Money and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Bank Tycoon", Content = "Auto Collect, Inf Money, Speed and more." })

-- // Obby & Adventure
Tabs.SupportedGames:AddParagraph({ Title = "🏃  OBBY & ADVENTURE", Content = "────────────────────────────" })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Tower of Hell", Content = "Auto Complete, Fly, Speed and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Mega Fun Obby", Content = "Auto Complete, Fly, Speed and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Speed Run 4", Content = "Speed, Fly, Auto Complete and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Natural Disaster Survival", Content = "God Mode, Fly, Speed and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Piggy", Content = "Speed, Fly, God Mode, ESP and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Doors", Content = "Speed, God Mode, Skip Rooms and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Apeirophobia", Content = "Speed, Fly, God Mode and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ The Maze", Content = "ESP, Speed, Fly and more." })

-- // Popular & Others
Tabs.SupportedGames:AddParagraph({ Title = "🌟  POPULAR & OTHERS", Content = "────────────────────────────" })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Adopt Me!", Content = "Auto Farm, Dupe, Speed and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Brookhaven RP", Content = "Speed, Fly, Noclip and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Work at a Pizza Place", Content = "Auto Work, Speed, Inf Money and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Jailbreak", Content = "Auto Rob, Speed, Fly, Inf Money and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ MeepCity", Content = "Speed, Fly, Inf Money and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Welcome to Bloxburg", Content = "Speed, Fly, Inf Money and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Royale High", Content = "Auto Farm Diamonds, Speed, Fly and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Livetopia", Content = "Speed, Fly, Noclip and more." })
Tabs.SupportedGames:AddParagraph({ Title = "✅ Doodle World", Content = "Auto Farm, Auto Catch, Speed and more." })

-- ─────────────────────────────────────────
-- // Default Tab + Notify
-- ─────────────────────────────────────────

task.wait(0.5)
Tabs.Instructions.Button:MouseButton1Click()

Fluent:Notify({
    Title = "Boarelis Hub",
    Content = "Loaded on: " .. gameName,
    Duration = 4,
})
