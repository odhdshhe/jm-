local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『冷脚本』"; Text ="核对用户ID中"; Duration = 2; })
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『冷脚本』"; Text ="用户ID核对完毕"; Duration = 4; })

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/hun/main/jmlibrary1.lua"))();        
local win = ui:new("冷脚本")
--
local UITab1 = win:Tab("『火箭发射模拟器』",'7734068321')

local about = UITab1:section("『Main』",true)

about:Button("一键重生", function()
if true then
local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 2
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 3
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 4
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 5
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 6
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 7
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 8
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 9
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 10
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 11
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 12
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 13
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 14
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 15
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 16
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 17
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 18
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 19
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))

local args = {
    [1] = 20
}

game:GetService("ReplicatedStorage").Promote:FireServer(unpack(args))
end
end)

about:Toggle("自动收集燃料", "ARL", false, function(ARL)
    isFuelScoopEnabled = ARL while true do wait() if isFuelScoopEnabled then for i, h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "FuelScoop" then h:Activate() end end end end
end)
about:Button("登上火箭", function()
    game:GetService("ReplicatedStorage"):WaitForChild("BoardRocket"):FireServer()
end)
about:Button("将玩家从所有者座位移除", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemovePlayer"):FireServer()
end)
local about = UITab1:section("『传送』",true)

about:Button("发射台岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-123.15931701660156, 2.7371432781219482, 3.491959810256958)
end)
about:Button("白云岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-76.13252258300781, 170.55825805664062, -60.4516716003418)
end)
about:Button("浮漂岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-66.51714324951172, 720.4866333007812, -5.391753196716309)
end)
about:Button("卫星岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-34.2462043762207, 1429.4990234375, 1.3739361763000488)
end)
about:Button("蜜蜂迷宫岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6.5361199378967285, 3131.249267578125, -29.759048461914062)
end)
about:Button("月球人救援", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7.212917804718018, 5016.341796875, -19.815933227539062)
end)
about:Button("暗物质岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.43186950683594, 6851.94091796875, 7.890637397766113)
end)
about:Button("太空岩石岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49.92888641357422, 8942.955078125, 8.674375534057617)
end)
about:Button("零号火星岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(54.44503402709961, 11270.0927734375, -1.273137092590332)
end)
about:Button("太空水晶小行星岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11.579089164733887, 15295.6318359375, -27.54974365234375)
end)
about:Button("月球浆果岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14.601255416870117, 18410.9609375, 0.9418511986732483)
end)
about:Button("铺路石岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3.272758960723877, 22539.494140625, 63.283935546875)
end)
about:Button("流星岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-45.515689849853516, 27961.560546875, -7.358333110809326)
end)
about:Button("升级岛", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2.7595248222351074, 33959.98828125, 53.93095397949219)
end)

local UITab2 = win:Tab("『火箭远程购买』",'7734068321')

local about = UITab2:section("『火箭发射模拟器』",true)

about:Button("英勇", function()
local args = {
    [1] = "Rocket",
    [2] = 1
}

game:GetService("ReplicatedStorage").BuyRocket:InvokeServer(unpack(args))
end)

about:Button("加成英勇", function()
local args = {
    [1] = "Rocket",
    [2] = 2
}

game:GetService("ReplicatedStorage").BuyRocket:InvokeServer(unpack(args))
end)

about:Button("火刃", function()
local args = {
    [1] = "Rocket",
    [2] = 3
}

game:GetService("ReplicatedStorage").BuyRocket:InvokeServer(unpack(args))
end)

about:Button("加成火刃", function()
local args = {
    [1] = "Rocket",
    [2] = 4
}

game:GetService("ReplicatedStorage").BuyRocket:InvokeServer(unpack(args))
end)

about:Button("阿特拉斯", function()
local args = {
    [1] = "Rocket",
    [2] = 5
}

game:GetService("ReplicatedStorage").BuyRocket:InvokeServer(unpack(args))
end)

about:Button("普罗米修斯", function()
local args = {
    [1] = "Rocket",
    [2] = 6
}

game:GetService("ReplicatedStorage").BuyRocket:InvokeServer(unpack(args))
end)

about:Button("双重阿特拉斯", function()
local args = {
    [1] = "Rocket",
    [2] = 7
}

game:GetService("ReplicatedStorage").BuyRocket:InvokeServer(unpack(args))
end)

about:Button("寻星者", function()
local args = {
    [1] = "Rocket",
    [2] = 8
}

game:GetService("ReplicatedStorage").BuyRocket:InvokeServer(unpack(args))
end)

about:Button("天空龙", function()
local args = {
    [1] = "Rocket",
    [2] = 9
}

game:GetService("ReplicatedStorage").BuyRocket:InvokeServer(unpack(args))
end)

about:Button("强化天空龙", function()
local args = {
    [1] = "Rocket",
    [2] = 10
}

game:GetService("ReplicatedStorage").BuyRocket:InvokeServer(unpack(args))
end)

local UITab3 = win:Tab("『背包远程购买』",'7734068321')

local about = UITab3:section("『火箭发射模拟器』",true)

about:Button("双重", function()
local args = {
    [1] = "Backpack",
    [2] = 1
}

game:GetService("ReplicatedStorage").BuyItem:InvokeServer(unpack(args))
end)

about:Button("压缩罐", function()
local args = {
    [1] = "Backpack",
    [2] = 2
}

game:GetService("ReplicatedStorage").BuyItem:InvokeServer(unpack(args))
end)

about:Button("原子压缩罐", function()
local args = {
    [1] = "Backpack",
    [2] = 3
}

game:GetService("ReplicatedStorage").BuyItem:InvokeServer(unpack(args))
end)

about:Button("大型压缩罐", function()
local args = {
    [1] = "Backpack",
    [2] = 3
}

game:GetService("ReplicatedStorage").BuyItem:InvokeServer(unpack(args))
end)

about:Button("大型原子压缩罐", function()
local args = {
    [1] = "Backpack",
    [2] = 4
}

game:GetService("ReplicatedStorage").BuyItem:InvokeServer(unpack(args))
end)

about:Button("燃料棒", function()
local args = {
    [1] = "Backpack",
    [2] = 5
}

game:GetService("ReplicatedStorage").BuyItem:InvokeServer(unpack(args))
end)

about:Button("火箭背包", function()
local args = {
    [1] = "Backpack",
    [2] = 6
}

game:GetService("ReplicatedStorage").BuyItem:InvokeServer(unpack(args))
end)

about:Button("双重火箭背包", function()
local args = {
    [1] = "Backpack",
    [2] = 7
}

game:GetService("ReplicatedStorage").BuyItem:InvokeServer(unpack(args))
end)

about:Button("胖胖火箭背包", function()
local args = {
    [1] = "Backpack",
    [2] = 8
}

game:GetService("ReplicatedStorage").BuyItem:InvokeServer(unpack(args))
end)

about:Button("双重胖胖火箭背包", function()
local args = {
    [1] = "Backpack",
    [2] = 9
}

game:GetService("ReplicatedStorage").BuyItem:InvokeServer(unpack(args))
end)

about:Button("绿色水晶背包", function()
local args = {
    [1] = "Backpack",
    [2] = 10
}

game:GetService("ReplicatedStorage").BuyItem:InvokeServer(unpack(args))
end)

about:Button("红色水晶背包", function()
local args = {
    [1] = "Backpack",
    [2] = 11
}

game:GetService("ReplicatedStorage").BuyItem:InvokeServer(unpack(args))
end)

about:Button("蓝色水晶背包", function()
local args = {
    [1] = "Backpack",
    [2] = 12
}

game:GetService("ReplicatedStorage").BuyItem:InvokeServer(unpack(args))
end)

local UITab5 = win:Tab("『燃料采集产远程购买』",'7734068321')

local about = UITab5:section("『火箭发射模拟器』",true)

about:Button("标准燃料采集铲", function()
local args = {
    [1] = "FuelScoop",
    [2] = 1
}

game:GetService("ReplicatedStorage").BuyFuelScoop:InvokeServer(unpack(args))
end)

about:Button("新燃料采集铲", function()
local args = {
    [1] = "FuelScoop",
    [2] = 2
}

game:GetService("ReplicatedStorage").BuyFuelScoop:InvokeServer(unpack(args))
end)

about:Button("电动燃料采集铲", function()
local args = {
    [1] = "FuelScoop",
    [2] = 3
}

game:GetService("ReplicatedStorage").BuyFuelScoop:InvokeServer(unpack(args))
end)

about:Button("数字燃料采集铲", function()
local args = {
    [1] = "FuelScoop",
    [2] = 4
}

game:GetService("ReplicatedStorage").BuyFuelScoop:InvokeServer(unpack(args))
end)

about:Button("人工智能燃料采集器", function()
local args = {
    [1] = "FuelScoop",
    [2] = 5
}

game:GetService("ReplicatedStorage").BuyFuelScoop:InvokeServer(unpack(args))
end)

about:Button("采矿激光", function()
local args = {
    [1] = "FuelScoop",
    [2] = 6
}

game:GetService("ReplicatedStorage").BuyFuelScoop:InvokeServer(unpack(args))
end)

about:Button("红宝石采矿激光", function()
local args = {
    [1] = "FuelScoop",
    [2] = 7
}

game:GetService("ReplicatedStorage").BuyFuelScoop:InvokeServer(unpack(args))
end)

about:Button("霓虹采矿激光", function()
local args = {
    [1] = "FuelScoop",
    [2] = 8
}

game:GetService("ReplicatedStorage").BuyFuelScoop:InvokeServer(unpack(args))
end)

about:Button("太空水晶采矿激光", function()
local args = {
    [1] = "FuelScoop",
    [2] = 9
}

game:GetService("ReplicatedStorage").BuyFuelScoop:InvokeServer(unpack(args))
end)

about:Button("绿色水晶激光", function()
local args = {
    [1] = "FuelScoop",
    [2] = 10
}

game:GetService("ReplicatedStorage").BuyFuelScoop:InvokeServer(unpack(args))
end)

about:Button("红色水晶激光", function()
local args = {
    [1] = "FuelScoop",
    [2] = 11
}

game:GetService("ReplicatedStorage").BuyFuelScoop:InvokeServer(unpack(args))
end)

about:Button("蓝色水晶激光", function()
local args = {
    [1] = "FuelScoop",
    [2] = 12
}

game:GetService("ReplicatedStorage").BuyFuelScoop:InvokeServer(unpack(args))
end)

local UITab4 = win:Tab("『信息』",'7734068321')

local about = UITab4:section("『作者信息』",true)

about:Label("冷脚本")
about:Label("作者QQ：2368002332")
about:Label("QQ主群：977686030")
about:Label("QQ2群：727619105")
about:Label("作者：冷")
about:Label("进群发最新冷脚本")
about:Label("脚本懒得更新")
about:Label("脚本懒得优化中")

local about = UITab4:section("『玩家信息』",true)

about:Label("你的账号年龄:"..player.AccountAge.."天")
about:Label("你的注入器:"..identifyexecutor())
about:Label("你的用户名:"..game.Players.LocalPlayer.Character.Name)
about:Label("你现在的服务器名称:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
about:Label("你现在的服务器id:"..game.GameId)
about:Label("你的用户ID:"..game.Players.LocalPlayer.UserId)
about:Label("获取客户端ID:"..game:GetService("RbxAnalyticsService"):GetClientId())