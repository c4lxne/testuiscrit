local openshit = Instance.new("ScreenGui")
local mainopen = Instance.new("TextButton")
local mainopens = Instance.new("UICorner")
local loki = Instance.new("ImageLabel")
local posto = Instance.new("UIStroke")

openshit.Name = "openshit"
openshit.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
openshit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainopen.Name = "mainopen"
mainopen.Parent = openshit
mainopen.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
mainopen.Position = UDim2.new(0.101969875, 0, 0.110441767, 0)
mainopen.Size = UDim2.new(0, 64, 0, 42)
mainopen.Text = ""
mainopen.Visible = true
mainopen.MouseButton1Click:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
	game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)

mainopens.Parent = mainopen
 
 loki.Name = "loki"
 loki.Parent = mainopen
 loki.BackgroundColor3 = Color3.fromRGB(0,128,255)
 loki.BackgroundTransparency = 1.000
 loki.Position = UDim2.new(-0.0529999994, 0, -0.244000003, 0)
 loki.Size = UDim2.new(0, 69, 0, 62)
 loki.Image = "rbxassetid://12462028268"
 
 posto.Name = "posto"
 posto.Parent = mainopen
 posto.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 posto.Color = Color3.fromRGB(0,128,255)
 posto.LineJoinMode = Enum.LineJoinMode.Round
 posto.Thickness = 1
 posto.Transparency = 0
 posto.Enabled = true
 posto.Archivable = true
 
 
 local UserInputService = game:GetService("UserInputService")
 local TweenService = game:GetService("TweenService")
 
 local function MakeDraggable(topbarobject, object)
 local Dragging = nil
 local DragInput = nil
 local DragStart = nil
 local StartPosition = nil
 
 local function Update(input)
 local Delta = input.Position - DragStart
 local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
 local Tween = TweenService:Create(object, TweenInfo.new(0.15), {
  Position = pos
 })
 Tween:Play()
 end
 
 topbarobject.InputBegan:Connect(
  function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
  Dragging = true
  DragStart = input.Position
  StartPosition = object.Position
 
  input.Changed:Connect(
   function()
   if input.UserInputState == Enum.UserInputState.End then
   Dragging = false
   end
   end
  )
  end
  end
 )
 
 topbarobject.InputChanged:Connect(
  function(input)
  if
   input.UserInputType == Enum.UserInputType.MouseMovement or
  input.UserInputType == Enum.UserInputType.Touch
  then
  DragInput = input
  end
  end
 )
 
 UserInputService.InputChanged:Connect(
  function(input)
  if input == DragInput and Dragging then
  Update(input)
  end
  end
 )
 end
 _G.BGColor_1 = Color3.fromRGB(30,30,30)
 _G.BGColor_2 = Color3.fromRGB(20, 20, 20)
 _G.Color = Color3.fromRGB(0,128,255)
 _G.WindowBackgroundColor = Color3.fromRGB(12,12,12)
 _G.BackgroundItemColor = Color3.fromRGB(20, 20, 20)
 _G.TabWindowColor = Color3.fromRGB(30, 30, 30)
 _G.ContainerColor = Color3.fromRGB(30, 30, 30)
 _G.TitleTextColor = Color3.fromRGB(150, 150, 150)
 _G.ImageColor = Color3.fromRGB(150, 150, 150)
 _G.LineThemeColor = Color3.fromRGB(150, 150, 150)
 _G.TabTextColor = Color3.fromRGB(150, 150, 150)
 _G.TabImageColor = Color3.fromRGB(150, 150, 150)
 _G.TabThemeColor = Color3.fromRGB(250, 0, 0)
 _G.SectionColor = Color3.fromRGB(150, 150, 150)
 _G.SectionImageColor = Color3.fromRGB(150, 150, 150)
 _G.SectionTextColor = Color3.fromRGB(150, 150, 150)
 _G.SectionOn = Color3.fromRGB(0, 250, 0)
 
 local Update = {}
 
 local DiscordLib = {}
 
	local TweenService = game:GetService("TweenService")
	local Balaraja = Instance.new("ScreenGui")
	
		Balaraja.Name = "Balaraja"
    Balaraja.Parent = game.CoreGui
    Balaraja.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
    local NotiFrame = Instance.new("Frame")
    NotiFrame.Name = "NotiFrame"
    NotiFrame.Parent = Balaraja
    NotiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    NotiFrame.BackgroundColor3 = Color3.fromRGB(35,35,35)
    NotiFrame.BorderSizePixel = 0
    NotiFrame.Position =  UDim2.new(1, -210, 1, 100)
    NotiFrame.Size = UDim2.new(0, 400, 0, 500)
    NotiFrame.ClipsDescendants = true
    NotiFrame.BackgroundTransparency = 1
    
    local Notilistlayout = Instance.new("UIListLayout")
    Notilistlayout.Parent = NotiFrame
    Notilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
    Notilistlayout.Padding = UDim.new(0, 5)		

    function DiscordLib:Notification(titel,text,delays)
        local TitleFrame = Instance.new("Frame")
        TitleFrame.Name = "TitleFrame"
        TitleFrame.Parent = NotiFrame
        TitleFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        TitleFrame.BackgroundColor3 = Color3.fromRGB(35,35,35)
        TitleFrame.BorderSizePixel = 0
        TitleFrame.Position =  UDim2.new(0.5, 0, 0.5,0)
        TitleFrame.Size = UDim2.new(0, 0, 0, 0)
        TitleFrame.ClipsDescendants = true
        TitleFrame.BackgroundTransparency = 0
    
        local ConnerTitile = Instance.new("UICorner")
    
        ConnerTitile.CornerRadius = UDim.new(0, 4)
        ConnerTitile.Name = ""
        ConnerTitile.Parent = TitleFrame
    
        TitleFrame:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 70),  UDim2.new(0.5, 0, 0.5,0), "Out", "Quad", 0.3, true)
    
        local imagenoti = Instance.new("ImageLabel")
    
        imagenoti.Parent = TitleFrame
        imagenoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        imagenoti.BackgroundTransparency = 1.000
        imagenoti.AnchorPoint = Vector2.new(0.5, 0.5)
        imagenoti.Position = UDim2.new(0.9, 0, 0.5, 0)
        imagenoti.Size = UDim2.new(0, 90, 0, 90)
      imagenoti.Image = "rbxassetid://12462028268"
    
        local txdlid = Instance.new("TextLabel")
    
        txdlid.Parent = TitleFrame
        txdlid.Name = "TextLabel_Tap"
        txdlid.BackgroundColor3 = Color3.fromRGB(50,50,50)
        txdlid.Size =UDim2.new(0, 160, 0,25 )
        txdlid.Font = Enum.Font.Code
        txdlid.Text = titel
        txdlid.TextColor3 = Color3.fromRGB(255,255,255)
        txdlid.TextSize = 17.000
        txdlid.AnchorPoint = Vector2.new(0.5, 0.5)
        txdlid.Position = UDim2.new(0.23, 0, 0.3, 0)
        -- txdlid.TextYAlignment = Enum.TextYAlignment.Top
        txdlid.TextXAlignment = Enum.TextXAlignment.Left
        txdlid.BackgroundTransparency = 1
    
        local LableFrame = Instance.new("Frame")
        LableFrame.Name = "LableFrame"
        LableFrame.Parent = TitleFrame
        LableFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        LableFrame.BackgroundColor3 = Color3.fromRGB(50,50,50)
        LableFrame.BorderSizePixel = 0
        LableFrame.Position =  UDim2.new(0.36, 0, 0.67,0)
        LableFrame.Size = UDim2.new(0, 260, 0,25 )
        LableFrame.ClipsDescendants = true
        LableFrame.BackgroundTransparency = 1
    
        local TextNoti = Instance.new("TextLabel")
    
        TextNoti.Parent = LableFrame
        TextNoti.Name = "TextLabel_Tap"
        TextNoti.BackgroundColor3 = Color3.fromRGB(255,255,255)
        TextNoti.Size =UDim2.new(0, 260, 0,25 )
        TextNoti.Font = Enum.Font.Code
        TextNoti.Text = text
        TextNoti.TextColor3 = Color3.fromRGB(255,255,255)
        TextNoti.TextSize = 15.000
        TextNoti.AnchorPoint = Vector2.new(0.5, 0.5)
        TextNoti.Position = UDim2.new(0.5, 0, 0.5, 0)
        -- TextNoti.TextYAlignment = Enum.TextYAlignment.Top
        TextNoti.TextXAlignment = Enum.TextXAlignment.Left
        TextNoti.BackgroundTransparency = 1
    
        repeat wait() until TitleFrame.Size == UDim2.new(0, 400-10, 0, 70)
    
        local Time = Instance.new("Frame")
        Time.Name = "Time"
        Time.Parent = TitleFrame
    --Time.AnchorPoint = Vector2.new(0.5, 0.5)
        Time.BackgroundColor3 =  Color3.fromRGB(255,255,255)
        Time.BorderSizePixel = 0
        Time.Position =  UDim2.new(0, 0, 0.,0)
        Time.Size = UDim2.new(0, 0,0,0)
        Time.ClipsDescendants = false
        Time.BackgroundTransparency = 0
    
        local ConnerTitile_Time = Instance.new("UICorner")
    
        ConnerTitile_Time.CornerRadius = UDim.new(0, 4)
        ConnerTitile_Time.Name = ""
        ConnerTitile_Time.Parent = Time
    
    
        Time:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 3),  UDim2.new(0., 0, 0.,0), "Out", "Quad", 0.3, true)
        repeat wait() until Time.Size == UDim2.new(0, 400-10, 0, 3)
    
        TweenService:Create(
            Time,
            TweenInfo.new(tonumber(delays), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
            {Size = UDim2.new(0, 0, 0, 3)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        delay(tonumber(delays),function()
            TweenService:Create(
                TitleFrame,
                TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
                {Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.3)
            TitleFrame:Destroy()
        end
    )
    end
 
 do  local ui =  game:GetService("CoreGui").RobloxGui.Modules:FindFirstChild("Arces_HUB")  if ui then ui:Destroy() end end
 
 function Update:Window(text,logo,keybind)
 local osfunc = {}
 local uihide = false
 local abc = false
 local logo = logo or 11340301587
 local currentpage = ""
 local keybind = keybind or Enum.KeyCode.RightControl
 local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")
 
 local Arces_HUB = Instance.new("ScreenGui")
 Arces_HUB.Name = "Arces_HUB"
 Arces_HUB.Parent = game.CoreGui
 Arces_HUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
 local Main = Instance.new("Frame")
 Main.Name = "Main"
 Main.Parent = Arces_HUB
 Main.ClipsDescendants = true
 Main.AnchorPoint = Vector2.new(0.5,0.5)
 Main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
 Main.Position = UDim2.new(0.5, 0, 0.5, 0)
 Main.Size = UDim2.new(0, 0, 0, 0)
 
 --Main:TweenSize(UDim2.new(0, 656, 0, 400),"Out","Quad",0.4,true)
 --Main:TweenSize(UDim2.new(0, 656, 0, 300),"Out","Quad",0.4,true)
 Main:TweenSize(UDim2.new(0, 480, 0, 280),"Out","Quad",0.4,true)
 
 
 local MCNR = Instance.new("UICorner")
 MCNR.Name = "MCNR"
 MCNR.Parent = Main
 
 local Top = Instance.new("Frame")
 Top.Name = "Top"
 Top.Parent = Main
 Top.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
 --Top.Size = UDim2.new(0, 656, 0, 27)
 Top.Size = UDim2.new(0, 480, 0, 27)
 
 local TCNR = Instance.new("UICorner")
 TCNR.Name = "TCNR"
 TCNR.Parent = Top
 
 local Logo = Instance.new("ImageLabel")
 Logo.Name = "Logo"
 Logo.Parent = Top
 Logo.BackgroundColor3 = Color3.fromRGB(0,128,255)
 Logo.BackgroundTransparency = 1.000
 Logo.Position = UDim2.new(-0.01, 0,-0.319, 0)
 Logo.Size = UDim2.new(0, 55,0, 45)
 Logo.Image = "rbxassetid://"..tostring(logo)
 
 local Name = Instance.new("TextLabel")
 Name.Name = "Name"
 Name.Parent = Top
 Name.BackgroundColor3 = Color3.fromRGB(0,128,255)
 Name.BackgroundTransparency = 1.000
 Name.Position = UDim2.new(0.0909756112, 0, 0, 0)
 Name.Size = UDim2.new(0, 61, 0, 27)
 Name.Font = Enum.Font.Code
 Name.Text = text
 Name.TextColor3 = Color3.fromRGB(255, 255, 255)
 Name.TextSize = 14.000
 
 local Hub = Instance.new("TextLabel")
 Hub.Name = "Hub"
 Hub.Parent = Top
 Hub.BackgroundColor3 = Color3.fromRGB(0,128,255)
 Hub.BackgroundTransparency = 1.000
 Hub.Position = UDim2.new(0, 110, 0, 0)
 Hub.Size = UDim2.new(0, 61, 0, 27)
 Hub.Font = Enum.Font.Code
 Hub.Text = "| Blox Fruit "
 Hub.TextColor3 = Color3.fromRGB(224,224,224)
 Hub.TextSize = 16.000
 Hub.TextXAlignment = Enum.TextXAlignment.Left
 
 local ServerTime = Instance.new("TextLabel")
 ServerTime.Name = "ServerTime"
 ServerTime.Parent = Top
 ServerTime.BackgroundColor3 = Color3.fromRGB(0,128,255)
 ServerTime.BackgroundTransparency = 1.000
 ServerTime.Position = UDim2.new(0.58, 0,0.074, 0)
 ServerTime.Size = UDim2.new(0, 225, 0, 25)
 ServerTime.Font = Enum.Font.Code
 ServerTime.Text = ""
 ServerTime.TextSize = 12.000
 ServerTime.TextColor3 = Color3.fromRGB(224,224,224)
 ServerTime.TextXAlignment = Enum.TextXAlignment.Left
 
 
 function osfunc:Set(textadd)
 ServerTime.Text = textadd
 end
 
 local function UpdateOS()
 local date = os.date("*t")
 local hour = (date.hour) % 24
 local ampm = hour < 12 and "AM" or "PM"
 local timezone = string.format("%02i:%02i:%02i %s", ((hour -1) % 12) + 1, date.min, date.sec, ampm)
 local datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
 local LocalizationService = game:GetService("LocalizationService")
 local Players = game:GetService("Players")
 local player = Players.LocalPlayer
 local name = player.Name
 local result, Gotham = pcall(function()
  return LocalizationService:GetCountryRegionForPlayerAsync(player)
  end)
 osfunc:Set(datetime.." - "..timezone.." [ " .. Gotham .. " ]")
 end
 spawn(function()
  while true do
  UpdateOS()
  game:GetService("RunService").RenderStepped:Wait()
  end
  end)
 
 
 local MainImage = Instance.new("ImageLabel")
 local MainImageFrame = Instance.new("Frame")
 -- MainImage.Name =  "MainImage"
 MainImage.Parent = Main
 MainImage.BackgroundColor3 = Color3.fromRGB(0,128,255)
 MainImage.BackgroundTransparency = 1.000
 MainImage.Position = UDim2.new(0, 25, 0, 25)
 MainImage.Size = UDim2.new(0, 100, 0, 170)
 MainImage.Image = ""
 
 
 local Tab = Instance.new("Frame")
 Tab.Name = "Tab"
 Tab.Parent = Main
 Tab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
 Tab.Position = UDim2.new(0, 5, 0, 30)
 --Tab.CornerRadius = UDim.new(0,5)
 Tab.Size = UDim2.new(0, 0, 0, 0)
 --Tab.Size = UDim2.new(0, 150, 0, 365)
 
 --local TabCorner = Instance.new("UICorner")
 local TabCorner = Instance.new("UIListLayout")
 TabCorner.Name = "TabCorner"
 TabCorner.Parent = Tab
 TabCorner.SortOrder = Enum.SortOrder.LayoutOrder
 TabCorner.Padding = UDim.new(0, 15)
 
 local TCNR = Instance.new("UICorner")
 TCNR.Name = "TCNR"
 TCNR.Parent = Tab
 
 local ScrollTab = Instance.new("ScrollingFrame")
 ScrollTab.Name = "ScrollTab"
 ScrollTab.Parent = Tab
 ScrollTab.Active = true
 ScrollTab.BackgroundColor3 = Color3.fromRGB(0,128,255)
 ScrollTab.BackgroundTransparency = 1.000
 ScrollTab.Size = UDim2.new(0, 133, 0, 250)
 ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
 ScrollTab.ScrollBarThickness = 0
 
 local PLL = Instance.new("UIListLayout")
 PLL.Name = "PLL"
 PLL.Parent = ScrollTab
 PLL.SortOrder = Enum.SortOrder.LayoutOrder
 PLL.Padding = UDim.new(0, 15)
 
 local PPD = Instance.new("UIPadding")
 PPD.Name = "PPD"
 PPD.Parent = ScrollTab
 PPD.PaddingLeft = UDim.new(0, 10)
 PPD.PaddingTop = UDim.new(0, 10)
 
 local Page = Instance.new("Frame")
 Page.Name = "Page"
 Page.Parent = Main
 Page.BackgroundColor3 = Color3.fromRGB(30,30,30)
 Page.Position = UDim2.new(0.295726834, 0, 0.144050003, 0)
 Page.Size = UDim2.new(0, 330, 0, 280)
 
 local PCNR = Instance.new("UICorner")
 PCNR.Name = "PCNR"
 PCNR.Parent = Page
 
 local MainPage = Instance.new("Frame")
 MainPage.Name = "MainPage"
 MainPage.Parent = Page
 MainPage.ClipsDescendants = true
 MainPage.BackgroundColor3 = Color3.fromRGB(0,128,255)
 MainPage.BackgroundTransparency = 1.000
 MainPage.Size = UDim2.new(0, 325, 0, 316)
 
 local PageList = Instance.new("Folder")
 PageList.Name = "PageList"
 PageList.Parent = MainPage
 
 local UIPageLayout = Instance.new("UIPageLayout")
 
 UIPageLayout.Parent = PageList
 UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
 UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
 UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
 UIPageLayout.FillDirection = Enum.FillDirection.Vertical
 UIPageLayout.Padding = UDim.new(0, 15)
 UIPageLayout.TweenTime = 0.400
 UIPageLayout.GamepadInputEnabled = false
 UIPageLayout.ScrollWheelInputEnabled = false
 UIPageLayout.TouchInputEnabled = false
 
 MakeDraggable(Top,Main)
 
 UserInputService.InputBegan:Connect(function(input)
  if input.KeyCode == Enum.KeyCode[yoo] then
  if uihide == false then
  uihide = true
  Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
  else
   uihide = false
  Main:TweenSize(UDim2.new(0, 480, 0, 280),"Out","Quad",0.5,true)
  end
  end
  end)
 local uitab = {}
 
 function uitab:Tab(text,img)
 local TabButton = Instance.new("TextButton")
 local TabImage = Instance.new("ImageLabel")
 TabButton.Parent = ScrollTab
 TabButton.Name = text.."Server"
 TabButton.Text = text
 TabButton.BackgroundColor3 = Color3.fromRGB(0,128,255)
 TabButton.BackgroundTransparency = 1.000
 TabButton.Size = UDim2.new(0, 130, 0, 23)
 TabButton.Font = Enum.Font.Gotham
 TabButton.TextColor3 = Color3.fromRGB(225, 225, 225)
 TabButton.TextSize = 11.000
 TabButton.TextTransparency = 0.100
 
 local TabFrame = Instance.new("Frame")
 local UICornerFrame = Instance.new("UICorner")
 TabFrame.Name = "TabFrame"
 TabFrame.Parent = TabButton
 TabFrame.ClipsDescendants = true
 --TabFrame.Position = UDim2.new(0, 1, 0.1, 2)
 TabFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
 TabFrame.BackgroundTransparency = 0.500
 TabFrame.Size = UDim2.new(0, 120, 0.1, 23)
 UICornerFrame.CornerRadius = UDim.new(0, 5)
 UICornerFrame.Parent = TabFrame
 
 TabImage.Name = text or "TabImage"
 TabImage.Parent = TabFrame
 TabImage.BackgroundColor3 = _G.Color
 TabImage.BackgroundTransparency = 1.000
 TabImage.Position = UDim2.new(0, 0, 0, 0)
 TabImage.Size = UDim2.new(0, 20, 0, 20)
 TabImage.Image = img or "rbxassetid://8666601749"
 TabImage.ImageColor3 = _G.Color
 
 local MainFramePage = Instance.new("ScrollingFrame")
 MainFramePage.Name = text.."_Page"
 MainFramePage.Parent = PageList
 MainFramePage.Active = true
 MainFramePage.BackgroundColor3 = Color3.fromRGB(0,128,255)
 MainFramePage.BackgroundTransparency = 1.000
 MainFramePage.BorderSizePixel = 0
 MainFramePage.Size = UDim2.new(0, 400, 0, 245)
 MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
 MainFramePage.ScrollBarThickness = 0
 
 local UIPadding = Instance.new("UIPadding")
 local UIListLayout = Instance.new("UIListLayout")
 
 UIPadding.Parent = MainFramePage
 UIPadding.PaddingLeft = UDim.new(0, 10)
 UIPadding.PaddingTop = UDim.new(0, 10)
 
 UIListLayout.Padding = UDim.new(0,15)
 UIListLayout.Parent = MainFramePage
 UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
 
 
 
 TabButton.MouseButton1Click:Connect(function()
  for i,v in next, ScrollTab:GetChildren() do
  if v:IsA("TextButton") then
  TweenService:Create(
   v,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0.5
   }
  ):Play()
  end
  TweenService:Create(
   TabButton,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0
   }
  ):Play()
  end
  for i,v in next, PageList:GetChildren() do
  currentpage = string.gsub(TabButton.Name,"Server","").."_Page"
  if v.Name == currentpage then
  UIPageLayout:JumpTo(v)
  end
  end
  end)
 
 if abc == false then
 for i,v in next, ScrollTab:GetChildren() do
 if v:IsA("TextButton") then
 TweenService:Create(
  v,
  TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
  {
   TextTransparency = 0.5
  }
 ):Play()
 end
 TweenService:Create(
  TabButton,
  TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
  {
   TextTransparency = 0
  }
 ):Play()
 end
 UIPageLayout:JumpToIndex(1)
 abc = true
 end
 
 game:GetService("RunService").Stepped:Connect(function()
  pcall(function()
   MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
   ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)
   end)
  end)
 function Update:Notification(textdesc)
local NotificationHold = Instance.new("TextButton")
local NotificationFrame = Instance.new("Frame")
local OkayBtn = Instance.new("TextButton")
local OkayBtnCorner = Instance.new("UICorner")
local OkayBtnTitle = Instance.new("TextLabel")
local NotificationTitle = Instance.new("TextLabel")
local NotificationDesc = Instance.new("TextLabel")
local NotifCorner = Instance.new("UICorner")
local NotifHolderUIStroke = Instance.new("UIStroke")
local Line = Instance.new("Frame")

NotificationHold.Name = "NotificationHold"
NotificationHold.Parent = ZENHUB
NotificationHold.BackgroundColor3 = _G.WindowBackgroundColor
NotificationHold.BackgroundTransparency = 1
NotificationHold.BorderSizePixel = 0
NotificationHold.Size = UDim2.new(0, 589, 0, 378)
NotificationHold.AutoButtonColor = false
NotificationHold.Font = Enum.Font.SourceSans
NotificationHold.Text = ""
NotificationHold.TextColor3 = _G.SectionTextColor
NotificationHold.TextSize = 13.000

TweenService:Create(NotificationHold, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
 BackgroundTransparency = 1
}):Play()
wait(0.4)

NotificationFrame.Name = "NotificationFrame"
NotificationFrame.Parent = NotificationHold
NotificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)
NotificationFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
NotificationFrame.BorderColor3 = _G.SectionColor
NotificationFrame.BorderSizePixel = 0
NotificationFrame.Transparency = 0
NotificationFrame.ClipsDescendants = true
NotificationFrame.Position = UDim2.new(0, 295, 0, 190)
NotificationFrame.Size = UDim2.new(0, 0, 0, 0)

NotificationFrame:TweenSize(UDim2.new(0, 400, 0, 250), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)

NotifCorner.Name = "NotifCorner"
NotifCorner.Parent = NotificationFrame
NotifCorner.CornerRadius = UDim.new(0, 5)

NotifHolderUIStroke.Name = "NotifHolderUIStroke"
NotifHolderUIStroke.Parent = NotificationFrame
NotifHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
NotifHolderUIStroke.Color = _G.SectionColor
NotifHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
NotifHolderUIStroke.Thickness = 1
NotifHolderUIStroke.Transparency = 0
NotifHolderUIStroke.Enabled = true
NotifHolderUIStroke.Archivable = true

OkayBtn.Name = "OkayBtn"
OkayBtn.Parent = NotificationFrame
OkayBtn.BackgroundColor3 = Color3.fromRGB(190, 190, 190)
OkayBtn.BorderSizePixel = 1
OkayBtn.BorderColor3 = _G.SectionColor
OkayBtn.Position = UDim2.new(0, 125, 0, 190)
OkayBtn.Size = UDim2.new(0, 150, 0, 30)
OkayBtn.AutoButtonColor = true
OkayBtn.Font = Enum.Font.SourceSans
OkayBtn.Text = ""
OkayBtn.TextColor3 = _G.SectionTextColor
OkayBtn.TextSize = 13.000

OkayBtnCorner.CornerRadius = UDim.new(0, 5)
OkayBtnCorner.Name = "OkayBtnCorner"
OkayBtnCorner.Parent = OkayBtn

OkayBtnTitle.Name = "OkayBtnTitle"
OkayBtnTitle.Parent = OkayBtn
OkayBtnTitle.BackgroundColor3 = _G.SectionColor
OkayBtnTitle.BackgroundTransparency = 1.000
OkayBtnTitle.Size = UDim2.new(0, 150, 0, 30)
OkayBtnTitle.Text = "OK"
OkayBtnTitle.Font = Enum.Font.Gotham
OkayBtnTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
OkayBtnTitle.TextSize = 22.000

NotificationTitle.Name = "NotificationTitle"
NotificationTitle.Parent = NotificationFrame
NotificationTitle.BackgroundColor3 = _G.SectionColor
NotificationTitle.BackgroundTransparency = 1.000
NotificationTitle.Position = UDim2.new(0, 0, 0, 10)
NotificationTitle.Size = UDim2.new(0, 400, 0, 25)
NotificationTitle.ZIndex = 3
NotificationTitle.Font = Enum.Font.Gotham
NotificationTitle.Text = "Notification"
NotificationTitle.TextColor3 = Color3.fromRGB(255, 0, 0)
NotificationTitle.TextSize = 22.000

Line.Name = "Line"
Line.Parent = NotificationFrame
Line.BackgroundColor3 = _G.SectionColor
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0, 10, 0, 40)
Line.Size = UDim2.new(0, 380, 0, 1)

NotificationDesc.Name = "NotificationDesc"
NotificationDesc.Parent = NotificationFrame
NotificationDesc.BackgroundColor3 = _G.SectionColor
NotificationDesc.BackgroundTransparency = 1.000
NotificationDesc.Position = UDim2.new(0, 10, 0, 80)
NotificationDesc.Size = UDim2.new(0, 380, 0, 200)
NotificationDesc.Font = Enum.Font.Gotham
NotificationDesc.Text = textdesc
NotificationDesc.TextScaled = false
NotificationDesc.TextColor3 = _G.SectionTextColor
NotificationDesc.TextSize = 16.000
NotificationDesc.TextWrapped = true
NotificationDesc.TextXAlignment = Enum.TextXAlignment.Center
NotificationDesc.TextYAlignment = Enum.TextYAlignment.Top

OkayBtn.MouseEnter:Connect(function()
 TweenService:Create(OkayBtn, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
  BackgroundColor3 = Color3.fromRGB(34,34,34)}):Play()
 end)

OkayBtn.MouseLeave:Connect(function()
 TweenService:Create(OkayBtn, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
  BackgroundColor3 = Color3.fromRGB(25, 25, 25)}):Play()
 end)

OkayBtn.MouseButton1Click:Connect(function()
 NotificationFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)

 wait(0.4)

 TweenService:Create(NotificationHold, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
  BackgroundTransparency = 1
 }):Play()

 wait(.3)

 NotificationHold:Destroy()
 end)
end
 
 
 local main = {}
 function main:Button(text,callback)
 local Button = Instance.new("Frame")
 local UICorner = Instance.new("UICorner")
 local TextBtn = Instance.new("TextButton")
 local UICorner_2 = Instance.new("UICorner")
 local Black = Instance.new("Frame")
 local UICorner_3 = Instance.new("UICorner")
 
 Button.Name = "Button"
 Button.Parent = MainFramePage
 Button.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
 Button.BackgroundTransparency = 1
 Button.Size = UDim2.new(0, 310, 0, 31)
 
 UICorner.CornerRadius = UDim.new(0, 5)
 UICorner.Parent = Button
 
 TextBtn.Name = "TextBtn"
 TextBtn.Parent = Button
 TextBtn.BackgroundColor3 = Color3.fromRGB(0,128,255)
 TextBtn.BackgroundTransparency = 0.500
 TextBtn.Position = UDim2.new(0, 1, 0, 1)
 TextBtn.Size = UDim2.new(0, 308, 0, 29)
 TextBtn.AutoButtonColor = false
 TextBtn.Font = Enum.Font.Gotham
 TextBtn.Text = text
 TextBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
 TextBtn.TextSize = 12.000
 
 UICorner_2.CornerRadius = UDim.new(0, 5)
 UICorner_2.Parent = TextBtn
 
 Black.Name = "Black"
 Black.Parent = Button
 Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
 Black.BackgroundTransparency = 1.000
 Black.BorderSizePixel = 0
 Black.Position = UDim2.new(0, 1, 0, 1)
 Black.Size = UDim2.new(0, 310, 0, 29)
 
 UICorner_3.CornerRadius = UDim.new(0, 5)
 UICorner_3.Parent = Black
 
 
 
 TextBtn.MouseEnter:Connect(function()
  TweenService:Create(
   Black,
   TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    BackgroundTransparency = 0.7
   }
  ):Play()
  end)
 TextBtn.MouseLeave:Connect(function()
  TweenService:Create(
   Black,
   TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    BackgroundTransparency = 1
   }
  ):Play()
  end)
 TextBtn.MouseButton1Click:Connect(function()
  TextBtn.TextSize = 0
  TweenService:Create(
   TextBtn,
   TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextSize = 15
   }
  ):Play()
  callback()
  end)
 end
 function main:Toggle(TogInfo,default,callback)
 local toggle = false
 local CheckFrame = Instance.new("Frame")
 local CheckFrame2 = Instance.new("Frame")
 local UIStroke = Instance.new("UIStroke")
 local UIListLayout = Instance.new("UIListLayout")
 local UICorner = Instance.new("UICorner")
 local ImageLabel = Instance.new("ImageLabel")
 local Space = Instance.new("TextLabel")
 local Title = Instance.new("TextLabel")
 local ImageButton = Instance.new("ImageButton")
 
 -- Prop --
 CheckFrame.Name = TogInfo or "CheckFrame"
 CheckFrame.Parent = MainFramePage
 CheckFrame.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
 CheckFrame.BackgroundTransparency = 1.000
 CheckFrame.BorderSizePixel = 0
 CheckFrame.Size = UDim2.new(0, 38, 0, 30)
 
 CheckFrame2.Name = "CheckFrame2"
 CheckFrame2.Parent = CheckFrame
 CheckFrame2.BackgroundColor3 = Color3.fromRGB(30,30,30)
 CheckFrame2.BackgroundTransparency = 1
 CheckFrame2.BorderSizePixel = 0
 CheckFrame2.Position = UDim2.new(0, 3, 0, 0)
 CheckFrame2.Size = UDim2.new(0, 308, 0, 30)
 
 UIStroke.Name = "UIStroke"
 UIStroke.Parent = CheckFrame2
 UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 UIStroke.Color = Color3.fromRGB(0,128,255)
 UIStroke.LineJoinMode = Enum.LineJoinMode.Round
 UIStroke.Thickness = 1
 UIStroke.Transparency = 0
 UIStroke.Enabled = true
 UIStroke.Archivable = true
 
 UICorner.Parent = CheckFrame2
 UICorner.CornerRadius = UDim.new(0, 3)
 
 ImageLabel.Name = "ImageLabel"
 ImageLabel.Parent = CheckFrame2
 ImageLabel.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
 ImageLabel.BackgroundTransparency = 1.000
 ImageLabel.BorderSizePixel = 0
 ImageLabel.Position = UDim2.new(-0.018, 0,-0.252, 0)
 ImageLabel.Size = UDim2.new(0, 45,0, 45)
 ImageLabel.Image = "rbxassetid://12462028268"
 ImageLabel.ImageColor3 = Color3.fromRGB(224,224,224)
 
 Space.Name = "Space"
 Space.Parent = CheckFrame2
 Space.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
 Space.BackgroundTransparency = 1.000
 Space.Position = UDim2.new(0, 30, 0, 0)
 Space.Size = UDim2.new(0, 15, 0, 30)
 Space.Font = Enum.Font.Gotham
 Space.Text = "|"
 Space.TextSize = 12.000
 Space.TextColor3 = Color3.fromRGB(255,225,225)
 Space.TextXAlignment = Enum.TextXAlignment.Center
 
 Title.Name = "Title"
 Title.Parent = CheckFrame2
 Title.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
 Title.BackgroundTransparency = 1.000
 Title.Position = UDim2.new(0, 50, 0, 0)
 Title.Size = UDim2.new(0, 280, 0, 30)
 Title.Font = Enum.Font.Gotham
 Title.Text = TogInfo or "checkBox Title"
 Title.TextColor3 = Color3.fromRGB(224,224,224)
 Title.TextSize = 12.000
 Title.TextXAlignment = Enum.TextXAlignment.Left
 
 ImageButton.Name = "ImageButton"
 ImageButton.Parent = CheckFrame2
 ImageButton.BackgroundColor3 = Color3.fromRGB(0,128,255)
 ImageButton.BackgroundTransparency = 1.000
 ImageButton.Position = UDim2.new(0, 280, 0, 4)
 ImageButton.Size = UDim2.new(0, 23, 0, 23)
 ImageButton.ZIndex = 2
 ImageButton.Image = "rbxassetid://3926311105"
 ImageButton.ImageColor3 = Color3.fromRGB(224,224,224)
 ImageButton.ImageRectOffset = Vector2.new(940, 784)
 ImageButton.ImageRectSize = Vector2.new(48, 48)
 
 -- Toggle Script --
 
 if default == true then
 ImageButton.ImageRectOffset = Vector2.new(4, 836)
 game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
  {
   ImageColor3 = Color3.fromRGB(255,225,225)}
 ):Play()
 toggle = not toggle
 pcall(callback, toggle)
 end
 
 ImageButton.MouseButton1Click:Connect(function()
  if toggle == false then
  game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
   {
    ImageColor3 = Color3.fromRGB(255,225,225)}
  ):Play()
  ImageButton.ImageRectOffset = Vector2.new(4, 836)
  else
   game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
   {
    ImageColor3 = Color3.fromRGB(224,224,224)}
  ):Play()
  ImageButton.ImageRectOffset = Vector2.new(940, 784)
  end
  toggle = not toggle
  pcall(callback, toggle)
  end)
 end
 
 function main:Dropdown(text,option,callback)
 local isdropping = false
 local Dropdown = Instance.new("Frame")
 local UICorner = Instance.new("UICorner")
 local DropTitle = Instance.new("TextLabel")
 local DropScroll = Instance.new("ScrollingFrame")
 local UIListLayout = Instance.new("UIListLayout")
 local UIPadding = Instance.new("UIPadding")
 local DropButton = Instance.new("TextButton")
 local DropImage = Instance.new("ImageLabel")
 local posto1 = Instance.new("UIStroke")
 
 Dropdown.Name = "Dropdown"
 Dropdown.Parent = MainFramePage
 Dropdown.BackgroundColor3 = Color3.fromRGB(28,28,28)
 Dropdown.BackgroundTransparency = 1
 Dropdown.ClipsDescendants = true
 Dropdown.Size = UDim2.new(0, 310, 0, 31)
 
 posto1.Name = "posto"
 posto1.Parent = Dropdown
 posto1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 posto1.Color = Color3.fromRGB(0,128,255)
 posto1.LineJoinMode = Enum.LineJoinMode.Round
 posto1.Thickness = 1
 posto1.Transparency = 0
 posto1.Enabled = true
 posto1.Archivable = true
 
 UICorner.CornerRadius = UDim.new(0, 5)
 UICorner.Parent = Dropdown
 
 DropTitle.Name = "DropTitle"
 DropTitle.Parent = Dropdown
 DropTitle.BackgroundColor3 = Color3.fromRGB(0,128,255)
 DropTitle.BackgroundTransparency = 1.000
 DropTitle.Size = UDim2.new(0, 310, 0, 31)
 DropTitle.Font = Enum.Font.Gotham
 DropTitle.Text = text.. " : "
 DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
 DropTitle.TextSize = 12.000
 
 DropScroll.Name = "DropScroll"
 DropScroll.Parent = DropTitle
 DropScroll.Active = true
 DropScroll.BackgroundColor3 = Color3.fromRGB(0,128,255)
 DropScroll.BackgroundTransparency = 1.000
 DropScroll.BorderSizePixel = 0
 DropScroll.Position = UDim2.new(0, 0, 0, 31)
 DropScroll.Size = UDim2.new(0, 310, 0, 100)
 DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
 DropScroll.ScrollBarThickness = 3
 
 UIListLayout.Parent = DropScroll
 UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
 UIListLayout.Padding = UDim.new(0, 5)
 
 UIPadding.Parent = DropScroll
 UIPadding.PaddingLeft = UDim.new(0, 5)
 UIPadding.PaddingTop = UDim.new(0, 5)
 
 DropImage.Name = "DropImage"
 DropImage.Parent = Dropdown
 DropImage.BackgroundColor3 = Color3.fromRGB(0,128,255)
 DropImage.BackgroundTransparency = 1.000
 DropImage.Position = UDim2.new(0, 280, 0, 6)
 DropImage.Rotation = 180.000
 DropImage.Size = UDim2.new(0, 20, 0, 20)
 DropImage.Image = "rbxassetid://6031090990"
 
 DropButton.Name = "DropButton"
 DropButton.Parent = Dropdown
 DropButton.BackgroundColor3 = Color3.fromRGB(0,128,255)
 DropButton.BackgroundTransparency = 1.000
 DropButton.Size = UDim2.new(0, 310, 0, 31)
 DropButton.Font = Enum.Font.SourceSans
 DropButton.Text = ""
 DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
 DropButton.TextSize = 14.000
 
 for i,v in next,option do
 local Item = Instance.new("TextButton")
 
 Item.Name = "Item"
 Item.Parent = DropScroll
 Item.BackgroundColor3 = Color3.fromRGB(0,128,255)
 Item.BackgroundTransparency = 1.000
 Item.Size = UDim2.new(0, 310, 0, 26)
 Item.Font = Enum.Font.Gotham
 Item.Text = tostring(v)
 Item.TextColor3 = Color3.fromRGB(225, 225, 225)
 Item.TextSize = 13.000
 Item.TextTransparency = 0.500
 
 Item.MouseEnter:Connect(function()
  TweenService:Create(
   Item,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0
   }
  ):Play()
  end)
 
 Item.MouseLeave:Connect(function()
  TweenService:Create(
   Item,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0.5
   }
  ):Play()
  end)
 
 Item.MouseButton1Click:Connect(function()
  isdropping = false
  Dropdown:TweenSize(UDim2.new(0,310,0,31),"Out","Quad",0.3,true)
  TweenService:Create(
   DropImage,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    Rotation = 180
   }
  ):Play()
  callback(Item.Text)
  DropTitle.Text = text.." : "..Item.Text
  end)
 end
 
 DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
 
 DropButton.MouseButton1Click:Connect(function()
  if isdropping == false then
  isdropping = true
  Dropdown:TweenSize(UDim2.new(0,310,0,131),"Out","Quad",0.3,true)
  TweenService:Create(
   DropImage,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    Rotation = 0
   }
  ):Play()
  else
   isdropping = false
  Dropdown:TweenSize(UDim2.new(0,310,0,31),"Out","Quad",0.3,true)
  TweenService:Create(
   DropImage,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    Rotation = 180
   }
  ):Play()
  end
  end)
 
 local dropfunc = {}
 function dropfunc:Add(t)
 local Item = Instance.new("TextButton")
 Item.Name = "Item"
 Item.Parent = DropScroll
 Item.BackgroundColor3 = Color3.fromRGB(0,128,255)
 Item.BackgroundTransparency = 1.000
 Item.Size = UDim2.new(0, 310, 0, 26)
 Item.Font = Enum.Font.Gotham
 Item.Text = tostring(t)
 Item.TextColor3 = Color3.fromRGB(225, 225, 225)
 Item.TextSize = 13.000
 Item.TextTransparency = 0.500
 
 Item.MouseEnter:Connect(function()
  TweenService:Create(
   Item,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0
   }
  ):Play()
  end)
 
 Item.MouseLeave:Connect(function()
  TweenService:Create(
   Item,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0.5
   }
  ):Play()
  end)
 
 Item.MouseButton1Click:Connect(function()
  isdropping = false
  Dropdown:TweenSize(UDim2.new(0,310,0,31),"Out","Quad",0.3,true)
  TweenService:Create(
   DropImage,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    Rotation = 180
   }
  ):Play()
  callback(Item.Text)
  DropTitle.Text = text.." : "..Item.Text
  end)
 end
 function dropfunc:Clear()
 DropTitle.Text = tostring(text).." : "
 isdropping = false
 Dropdown:TweenSize(UDim2.new(0,310,0,31),"Out","Quad",0.3,true)
 TweenService:Create(
  DropImage,
  TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
  {
   Rotation = 180
  }
 ):Play()
 for i,v in next, DropScroll:GetChildren() do
 if v:IsA("TextButton") then
 v:Destroy()
 end
 end
 end
 return dropfunc
 end
 
function main:Slider1(slidertitle, min, max, start, callback)
local slider1func = {}
local SliderFrame = Instance.new("Frame")
local SliderFrame_2 = Instance.new("Frame")
local UIStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local Space = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local SliderInput = Instance.new("Frame")
local SliderButton = Instance.new("Frame")
local SliderCount = Instance.new("Frame")
local SliderCorner = Instance.new("UICorner")
local SliderCorner2 = Instance.new("UICorner")
local BoxFrame = Instance.new("Frame")
local SliderBox = Instance.new("TextBox")
local SliderStroke = Instance.new("UIStroke")
local Title_2 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")

-- Prop --
SliderFrame.Name = slidertitle or "SliderFrame"
SliderFrame.Parent = MainFramePage
SliderFrame.BackgroundColor3 = Color3.fromRGB(28,28,28)
SliderFrame.BackgroundTransparency = 1.000
SliderFrame.BorderSizePixel = 0
SliderFrame.Size = UDim2.new(0, 300, 0, 55)

SliderFrame_2.Name = "SliderFrame_2"
SliderFrame_2.Parent = SliderFrame
SliderFrame_2.BackgroundColor3 = Color3.fromRGB(28,28,28)
SliderFrame_2.BackgroundTransparency = 1
SliderFrame_2.BorderSizePixel = 0
SliderFrame_2.Position = UDim2.new(0, 3, 0, 0)
SliderFrame_2.Size = UDim2.new(0, 308, 0, 55)

UIStroke.Name = "UIStroke"
UIStroke.Parent = SliderFrame_2
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Color = Color3.fromRGB(0,128,255)
UIStroke.LineJoinMode = Enum.LineJoinMode.Round
UIStroke.Thickness = 1
UIStroke.Transparency = 0
UIStroke.Enabled = true
UIStroke.Archivable = true

UICorner.Parent = SliderFrame_2
UICorner.CornerRadius = UDim.new(0, 3)

ImageLabel.Name = "ImageLabel"
ImageLabel.Parent = SliderFrame_2
ImageLabel.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0, 5, 0, 5)
ImageLabel.Size = UDim2.new(0, 18, 0, 18)
ImageLabel.Image = "rbxassetid://12462028268"
ImageLabel.ImageColor3 = Color3.fromRGB(224,224,224)

Space.Name = "Space"
Space.Parent = SliderFrame_2
Space.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
Space.BackgroundTransparency = 1.000
Space.Position = UDim2.new(0, 30, 0, 0)
Space.Size = UDim2.new(0, 15, 0, 30)
Space.Font = Enum.Font.Gotham
Space.Text = "|"
Space.TextSize = 15.000
Space.TextColor3 = Color3.fromRGB(224,224,224)
Space.TextXAlignment = Enum.TextXAlignment.Center

Title.Name = "Title"
Title.Parent = SliderFrame_2
Title.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0, 50, 0, 0)
Title.Size = UDim2.new(0, 280, 0, 30)
Title.Font = Enum.Font.Gotham
Title.Text = slidertitle or "Slider Title"
Title.TextColor3 = Color3.fromRGB(224,224,224)
Title.TextSize = 12.000
Title.TextXAlignment = Enum.TextXAlignment.Left

SliderInput.Name = "SliderInput"
SliderInput.Parent = SliderFrame_2
SliderInput.BackgroundColor3 = Color3.fromRGB(0,128,255)
SliderInput.BackgroundTransparency = 0.7
SliderInput.BorderSizePixel = 0
SliderInput.Position = UDim2.new(0, 8, 0, 37)
SliderInput.Size = UDim2.new(0, 290, 0, 4)

SliderCorner2.CornerRadius = UDim.new(0, 100000)
SliderCorner2.Parent = SliderInput

SliderButton.Name = "SliderButton"
SliderButton.Parent = SliderInput
SliderButton.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
SliderButton.BackgroundTransparency = 1.000
SliderButton.BorderSizePixel = 0
SliderButton.Position = UDim2.new(0, 0, 0, -7)
SliderButton.Size = UDim2.new(0, 290, 0, 25)

SliderCount.Name = "SliderCount"
SliderCount.Parent = SliderButton
SliderCount.BackgroundColor3 = Color3.fromRGB(0,128,255)
SliderCount.BackgroundTransparency = 0.3
SliderCount.BorderSizePixel = 0
SliderCount.Position = UDim2.new(0,start,0,0)
SliderCount.Size = UDim2.new(0, 18, 0, 18)

Title_2.Name = "Title_2"
Title_2.Parent = SliderButton
Title_2.AnchorPoint = Vector2.new(0, 0)
Title_2.BackgroundColor3 = Color3.fromRGB(0,128,255)
Title_2.AutoButtonColor = false
Title_2.BackgroundTransparency = 1.000
Title_2.Position = UDim2.new(0,start,0,0)
Title_2.Size = UDim2.new(0, 18, 0, 18)
Title_2.Font = Enum.Font.GothamBold
Title_2.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
Title_2.TextColor3 = Color3.fromRGB(224,224,224)
Title_2.TextSize = 8.000
Title_2.TextXAlignment = Enum.TextXAlignment.Center

UICorner_2.Parent = Title_2
UICorner_2.CornerRadius = UDim.new(0, 100000)

SliderCorner.CornerRadius = UDim.new(0, 100000)
SliderCorner.Parent = SliderCount

SliderStroke.Name = "SliderStroke"
SliderStroke.Parent = BoxFrame
SliderStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
SliderStroke.Color = Color3.fromRGB(0,128,255)
SliderStroke.LineJoinMode = Enum.LineJoinMode.Round
SliderStroke.Thickness = 1
SliderStroke.Transparency = 0.5
SliderStroke.Enabled = true
SliderStroke.Archivable = true

BoxFrame.Name = "BoxFrame"
BoxFrame.Parent = SliderFrame_2
BoxFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
BoxFrame.BackgroundTransparency = 1.000
BoxFrame.Size = UDim2.new(0, 50, 0, 15)
BoxFrame.Position = UDim2.new(0, 240, 0, 8)

SliderBox.Name = "SliderBox"
SliderBox.Parent = BoxFrame
SliderBox.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
SliderBox.BackgroundTransparency = 1.000
SliderBox.Position = UDim2.new(0, 0, 0, 1.65)
SliderBox.Size = UDim2.new(0, 50, 0, 15)
SliderBox.ClearTextOnFocus = false
SliderBox.Font = Enum.Font.GothamBold
SliderBox.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
SliderBox.TextColor3 = Color3.fromRGB(224,224,224)
SliderBox.TextSize = 9.000
SliderBox.TextTransparency = 0
SliderBox.TextXAlignment = Enum.TextXAlignment.Center
SliderBox.TextEditable = true

UICorner_3.Parent = BoxFrame
UICorner_3.CornerRadius = UDim.new(0, 2)

-- Slider Script --
local dragging
local SliderButtonStart
local SliderButtonInput
local slide = SliderButton

local function slide(input)
local slidein = UDim2.new(math.clamp((input.Position.X - SliderButton.AbsolutePosition.X) / SliderButton.AbsoluteSize.X, 0, 1), 0, 0, 0)
SliderCount:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.08, true)
Title_2:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.12, true)
local Value = math.floor(((slidein.X.Scale * max) / max) * (max - min) + min)
SliderBox.Text = tostring(Value)
Title_2.Text = tostring(Value)
pcall(callback, Value, slidein)
end

SliderButton.InputBegan:Connect(function(input)
 if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
 dragging = true
 SliderButtonInput = input
 SliderButtonStart = input.Position.X
 slidein = SliderButton.AbsolutePosition.X
 game.TweenService:Create(SliderCount, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  BackgroundTransparency = 0, Size = UDim2.new(0, 14, 0, 14)}):Play()
 game.TweenService:Create(Title_2, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  AnchorPoint = Vector2.new(0.22, 0.8), TextSize = 13.000, BackgroundTransparency = 0, Size = UDim2.new(0, 25, 0, 25)}):Play()
 game.TweenService:Create(SliderBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  TextTransparency = 0
 }):Play()
 game.TweenService:Create(SliderInput, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  BackgroundTransparency = 0.5
 }):Play()
 game.TweenService:Create(SliderStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  Transparency = 0
 }):Play()
 end
 input.Changed:Connect(function(input)
  if input.UserInputType == Enum.UserInputState.End then
  dragging = false

  end
  end)
 end)
SliderButton.InputEnded:Connect(function(input)
 if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
 dragging = false
 SliderButtonInput = input
 game.TweenService:Create(SliderCount, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  BackgroundTransparency = 0.3, Size = UDim2.new(0, 18, 0, 18)}):Play()
 game.TweenService:Create(Title_2, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  AnchorPoint = Vector2.new(0, 0), TextSize = 8.000, BackgroundTransparency = 1.000, Size = UDim2.new(0, 18, 0, 18)}):Play()
 game.TweenService:Create(SliderBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  TextTransparency = 0.5
 }):Play()
 game.TweenService:Create(SliderInput, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  BackgroundTransparency = 0.7
 }):Play()
 game.TweenService:Create(SliderStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  Transparency = 0.5
 }):Play()
 end
 end)
UserInputService.InputChanged:Connect(function(input)
 if input == SliderButtonInput and dragging then
 slide(input)
 end
 end)

function set(property)
if property == "Text" then
if tonumber(SliderBox.Text) then
if tonumber(SliderBox.Text) <= max then
Value = SliderBox.Text
Title_2.Text = SliderBox.Text
SliderCount:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
Title_2:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
pcall(function()
 callback(Value)
 end)
end
if tonumber(SliderBox.Text) > max then
SliderBox.Text = max
Title_2.Text = max
Value = max
SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
pcall(function()
 callback(Value)
 end)
end
if tonumber(SliderBox.Text) >= min then
Value = SliderBox.Text
Title_2.Text = SliderBox.Text
SliderCount:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
Title_2:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
pcall(function()
 callback(Value)
 end)
end
if tonumber(SliderBox.Text) < min then
Value = min
Title_2 = min
SliderCount.Position = UDim2.new(((min or min) - min) / (max - min), 0, 0, 0)
Title_2.Position = UDim2.new(((min or min) - min) / (max - min), 0, 0, 0)
pcall(function()
 callback(Value)
 end)
end
else
 SliderBox.Text = "" or Value
Title_2.Text = Value
end
end
end

SliderBox.Focused:Connect(function()
 SliderBox.Changed:Connect(set)
 end)

SliderBox.FocusLost:Connect(function(enterP)
 if not enterP then
 if SliderBox.Text == "" then
 SliderBox.Text = min
 Title_2.Text = min
 Value = min
 SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
 Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
 pcall(function()
  callback(Value)
  end)
 end
 if tonumber(SliderBox.Text) > tonumber(max) then
 Value = max
 SliderBox.Text = max
 Title_2.Text = max
 SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
 Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
 pcall(function()
  callback(Value)
  end)
 else
  Value = tonumber(SliderBox.Text)
 end
 if tonumber(SliderBox.Text) < min then
 SliderBox.Text = min
 Title_2.Text = min
 Value = min
 SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
 Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
 pcall(function()
  callback(Value)
  end)
 else
  Value = tonumber(SliderBox.Text)
 end
 end
 if tonumber(SliderBox.Text) > max then
 SliderBox.Text = max
 Title_2.Text = max
 Value = max
 SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
 Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
 pcall(function()
  callback(Value)
  end)
 else
  Value = tonumber(SliderBox.Text)
 end
 if tonumber(SliderBox.Text) < min then
 SliderBox.Text = min
 Title_2.Text = min
 Value = min
 SliderCount.Position = UDim2.new(((min) - min) / (max - min), 0, 0, 0)
 Title_2.Position = UDim2.new(((min) - min) / (max - min), 0, 0, 0)
 pcall(function()
  callback(Value)
  end)
 else
  Value = tonumber(SliderBox.Text)
 end
 if SliderBox.Text == "" then
 SliderBox.Text = min
 Title_2.Text = min
 Value = min
 SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
 Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
 pcall(function()
  callback(Value)
  end)
 end
 end)
return sliderfunc
end
 
 function main:Slider(text,min,max,set,callback)
 local Slider = Instance.new("Frame")
 local slidercorner = Instance.new("UICorner")
 local sliderr = Instance.new("Frame")
 local sliderrcorner = Instance.new("UICorner")
 local SliderLabel = Instance.new("TextLabel")
 local HAHA = Instance.new("Frame")
 local AHEHE = Instance.new("TextButton")
 local bar = Instance.new("Frame")
 local bar1 = Instance.new("Frame")
 local bar1corner = Instance.new("UICorner")
 local barcorner = Instance.new("UICorner")
 local circlebar = Instance.new("Frame")
 local UICorner = Instance.new("UICorner")
 local slidervalue = Instance.new("Frame")
 local valuecorner = Instance.new("UICorner")
 local TextBox = Instance.new("TextBox")
 local UICorner_2 = Instance.new("UICorner")
 local posto = Instance.new("UIStroke")
 
 Slider.Name = "Slider"
 Slider.Parent = MainFramePage
 Slider.BackgroundColor3 = _G.Color
 Slider.BackgroundTransparency = 0
 Slider.Size = UDim2.new(0, 310, 0, 51)
 
 slidercorner.CornerRadius = UDim.new(0, 5)
 slidercorner.Name = "slidercorner"
 slidercorner.Parent = Slider
 
 sliderr.Name = "sliderr"
 sliderr.Parent = Slider
 sliderr.BackgroundTransparency = 0
 sliderr.BackgroundColor3 = Color3.fromRGB(30,30,30)
 sliderr.Position = UDim2.new(0, 1, 0, 1)
 sliderr.Size = UDim2.new(0, 308, 0, 49)
 
 sliderrcorner.CornerRadius = UDim.new(0, 5)
 sliderrcorner.Name = "sliderrcorner"
 sliderrcorner.Parent = sliderr
 
 SliderLabel.Name = "SliderLabel"
 SliderLabel.Parent = sliderr
 SliderLabel.BackgroundColor3 = Color3.fromRGB(0,128,255)
 SliderLabel.BackgroundTransparency = 1.000
 SliderLabel.Position = UDim2.new(0, 15, 0, 0)
 SliderLabel.Size = UDim2.new(0, 180, 0, 26)
 SliderLabel.Font = Enum.Font.Gotham
 SliderLabel.Text = text
 SliderLabel.TextColor3 = Color3.fromRGB(224,224,224)
 SliderLabel.TextSize = 12.000
 SliderLabel.TextTransparency = 0
 SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
 
 HAHA.Name = "HAHA"
 HAHA.Parent = sliderr
 HAHA.BackgroundColor3 = Color3.fromRGB(0,128,255)
 HAHA.BackgroundTransparency = 1.000
 HAHA.Size = UDim2.new(0, 290, 0, 29)
 
 AHEHE.Name = "AHEHE"
 AHEHE.Parent = sliderr
 AHEHE.BackgroundColor3 = Color3.fromRGB(0,128,255)
 AHEHE.BackgroundTransparency = 1.000
 AHEHE.Position = UDim2.new(0, 10, 0, 35)
 AHEHE.Size = UDim2.new(0, 290, 0, 5)
 AHEHE.Font = Enum.Font.SourceSans
 AHEHE.Text = ""
 AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
 AHEHE.TextSize = 14.000
 
 bar.Name = "bar"
 bar.Parent = AHEHE
 bar.BackgroundColor3 = _G.BGColor_2
 bar.Size = UDim2.new(0, 290, 0, 5)
 
 bar1.Name = "bar1"
 bar1.Parent = bar
 bar1.BackgroundColor3 = _G.Color
 bar1.BackgroundTransparency = 0
 bar1.Size = UDim2.new(set/max, 0, 0, 5)
 
 bar1corner.CornerRadius = UDim.new(0, 5)
 bar1corner.Name = "bar1corner"
 bar1corner.Parent = bar1
 
 barcorner.CornerRadius = UDim.new(0, 5)
 barcorner.Name = "barcorner"
 barcorner.Parent = bar
 
 circlebar.Name = "circlebar"
 circlebar.Parent = bar1
 circlebar.BackgroundColor3 = Color3.fromRGB(0,128,255)
 circlebar.Position = UDim2.new(1, -2, 0, -3)
 circlebar.Size = UDim2.new(0, 10, 0, 10)
 
 UICorner.CornerRadius = UDim.new(0, 100)
 UICorner.Parent = circlebar
 
 slidervalue.Name = "slidervalue"
 slidervalue.Parent = sliderr
 slidervalue.BackgroundColor3 = _G.Color
 slidervalue.BackgroundTransparency = 1
 slidervalue.Position = UDim2.new(0, 245, 0, 5)
 slidervalue.Size = UDim2.new(0, 65, 0, 18)
 
 valuecorner.CornerRadius = UDim.new(0, 5)
 valuecorner.Name = "valuecorner"
 valuecorner.Parent = slidervalue
 
 TextBox.Parent = slidervalue
 TextBox.BackgroundColor3 = _G.BGColor_2
 TextBox.Position = UDim2.new(0, 0, 0, 0)
 TextBox.Size = UDim2.new(0, 60, 0, 20)
 TextBox.Font = Enum.Font.Gotham
 TextBox.TextColor3 = Color3.fromRGB(224,224,224)
 TextBox.TextSize = 9.000
 TextBox.Text = set
 TextBox.TextTransparency = 0
 
 posto.Name = "posto"
 posto.Parent = TextBox
 posto.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 posto.Color = Color3.fromRGB(0,128,255)
 posto.LineJoinMode = Enum.LineJoinMode.Round
 posto.Thickness = 1
 posto.Transparency = 0
 posto.Enabled = true
 posto.Archivable = true
 
 UICorner_2.CornerRadius = UDim.new(0, 5)
 UICorner_2.Parent = TextBox
 
 local mouse = game.Players.LocalPlayer:GetMouse()
 local uis = game:GetService("UserInputService")
 
 if Value == nil then
 Value = set
 pcall(function()
  callback(Value)
  end)
 end
 
 AHEHE.MouseButton1Down:Connect(function()
  Value = math.floor((((tonumber(max) - tonumber(min)) / 300) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
  pcall(function()
   callback(Value)
   end)
  bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 300), 0, 5)
  circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 290), 0, -3)
  moveconnection = mouse.Move:Connect(function()
   TextBox.Text = Value
   Value = math.floor((((tonumber(max) - tonumber(min)) / 300) * bar1.AbsoluteSize.X) + tonumber(min))
   pcall(function()
    callback(Value)
    end)
   bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 300), 0, 5)
   circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 290), 0, -3)
   end)
  releaseconnection = uis.InputEnded:Connect(function(Mouse)
   if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
   Value = math.floor((((tonumber(max) - tonumber(min)) / 300) * bar1.AbsoluteSize.X) + tonumber(min))
   pcall(function()
    callback(Value)
    end)
   bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 300), 0, 5)
   circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 290), 0, -3)
   moveconnection:Disconnect()
   releaseconnection:Disconnect()
   end
   end)
  end)
 releaseconnection = uis.InputEnded:Connect(function(Mouse)
  if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
  Value = math.floor((((tonumber(max) - tonumber(min)) / 300) * bar1.AbsoluteSize.X) + tonumber(min))
  TextBox.Text = Value
  end
  end)
 
 TextBox.FocusLost:Connect(function()
  if tonumber(TextBox.Text) > max then
  TextBox.Text = max
  end
  bar1.Size = UDim2.new((TextBox.Text or 0) / max, 0, 0, 5)
  circlebar.Position = UDim2.new(1, -2, 0, -3)
  TextBox.Text = tostring(TextBox.Text and math.floor((TextBox.Text / max) * (max - min) + min))
  pcall(callback, TextBox.Text)
  end)
 end
 function main:Textbox(text,disappear,callback)
 local Textbox = Instance.new("Frame")
 local TextboxCorner = Instance.new("UICorner")
 local Textboxx = Instance.new("Frame")
 local TextboxxCorner = Instance.new("UICorner")
 local TextboxLabel = Instance.new("TextLabel")
 local txtbtn = Instance.new("TextButton")
 local RealTextbox = Instance.new("TextBox")
 local UICorner = Instance.new("UICorner")
 
 Textbox.Name = "Textbox"
 Textbox.Parent = MainFramePage
 Textbox.BackgroundColor3 = _G.Color
 Textbox.BackgroundTransparency = 0
 Textbox.Size = UDim2.new(0, 310, 0, 31)
 
 TextboxCorner.CornerRadius = UDim.new(0, 5)
 TextboxCorner.Name = "TextboxCorner"
 TextboxCorner.Parent = Textbox
 
 Textboxx.Name = "Textboxx"
 Textboxx.Parent = Textbox
 Textboxx.BackgroundColor3 = Color3.fromRGB(30,30,30)
 Textboxx.Position = UDim2.new(0, 1, 0, 1)
 Textboxx.Size = UDim2.new(0, 310, 0, 29)
 
 TextboxxCorner.CornerRadius = UDim.new(0, 5)
 TextboxxCorner.Name = "TextboxxCorner"
 TextboxxCorner.Parent = Textboxx
 
 TextboxLabel.Name = "TextboxLabel"
 TextboxLabel.Parent = Textbox
 TextboxLabel.BackgroundColor3 = Color3.fromRGB(0,128,255)
 TextboxLabel.BackgroundTransparency = 1.000
 TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
 TextboxLabel.Text = text
 TextboxLabel.Size = UDim2.new(0, 145, 0, 31)
 TextboxLabel.Font = Enum.Font.Gotham
 TextboxLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
 TextboxLabel.TextSize = 16.000
 TextboxLabel.TextTransparency = 0
 TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left
 
 txtbtn.Name = "txtbtn"
 txtbtn.Parent = Textbox
 txtbtn.BackgroundColor3 = Color3.fromRGB(0,128,255)
 txtbtn.BackgroundTransparency = 1.000
 txtbtn.Position = UDim2.new(0, 1, 0, 1)
 txtbtn.Size = UDim2.new(0, 310, 0, 29)
 txtbtn.Font = Enum.Font.SourceSans
 txtbtn.Text = ""
 txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
 txtbtn.TextSize = 14.000
 
 RealTextbox.Name = "RealTextbox"
 RealTextbox.Parent = Textbox
 RealTextbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
 RealTextbox.BackgroundTransparency = 0
 RealTextbox.Position = UDim2.new(0, 230, 0, 4)
 RealTextbox.Size = UDim2.new(0, 100, 0, 24)
 RealTextbox.Font = Enum.Font.Gotham
 RealTextbox.Text = ""
 RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
 RealTextbox.TextSize = 11.000
 RealTextbox.TextTransparency = 0
 
 RealTextbox.FocusLost:Connect(function()
  callback(RealTextbox.Text)
  if disappear then
  RealTextbox.Text = ""
  end
  end)
 
 UICorner.CornerRadius = UDim.new(0, 5)
 UICorner.Parent = RealTextbox
 end
 function main:Label(text)
 local Label = Instance.new("TextLabel")
 local PaddingLabel = Instance.new("UIPadding")
 local labelfunc = {}
 
 Label.Name = "Label"
 Label.Parent = MainFramePage
 Label.BackgroundColor3 = Color3.fromRGB(0,128,255)
 Label.BackgroundTransparency = 1.000
 Label.Size = UDim2.new(0, 325, 0, 20)
 Label.Font = Enum.Font.Gotham
 Label.TextColor3 = Color3.fromRGB(225, 225, 225)
 Label.TextSize = 12.000
 Label.Text = text
 Label.TextXAlignment = Enum.TextXAlignment.Left
 
 PaddingLabel.PaddingLeft = UDim.new(0,15)
 PaddingLabel.Parent = Label
 PaddingLabel.Name = "PaddingLabel"
 
 function labelfunc:Set(newtext)
 Label.Text = newtext
 end
 return labelfunc
 end
 
 function main:Label1(text)
 local Label1 = Instance.new("TextLabel")
 local PaddingLabel1 = Instance.new("UIPadding")
 local Label1func = {}
 
 Label1.Name = "Label1"
 Label1.Parent = MainFramePage
 Label1.BackgroundColor3 = Color3.fromRGB(0,128,255)
 Label1.BackgroundTransparency = 1.000
 Label1.Size = UDim2.new(0, 325, 0, 20)
 Label1.Font = Enum.Font.Gotham
 Label1.TextColor3 = Color3.fromRGB(225, 225, 225)
 Label1.TextSize = 12.000
 Label1.Text = text
 Label1.TextXAlignment = Enum.TextXAlignment.Left
 
 PaddingLabel1.PaddingLeft = UDim.new(0,15)
 PaddingLabel1.Parent = Label1
 PaddingLabel1.Name = "PaddingLabel1"
 function Label1func:Refresh(tochange)
 Label1.Text = tochange
 end
 
 return Label1func
 end
 
function main:Seperator(text)
 local Seperator = Instance.new("Frame")
 local Sep1 = Instance.new("Frame")
 local Sep2 = Instance.new("TextLabel")
 local Sep3 = Instance.new("Frame")
 
 Seperator.Name = "Seperator"
 Seperator.Parent = MainFramePage
 Seperator.BackgroundColor3 = Color3.fromRGB(0,128,255)
 Seperator.BackgroundTransparency = 1.000
 Seperator.Size = UDim2.new(0, 290, 0, 20)
 
 Sep1.Name = "Sep1"
 Sep1.Parent = Seperator
 Sep1.BackgroundColor3 = _G.Color
 Sep1.BorderSizePixel = 0
 Sep1.Position = UDim2.new(0, 0, 0, 10)
 Sep1.Size = UDim2.new(0, 80, 0, 1)
 
 Sep2.Name = "Sep2"
 Sep2.Parent = Seperator
 Sep2.BackgroundColor3 = Color3.fromRGB(0,128,255)
 Sep2.BackgroundTransparency = 1.000
 Sep2.Position = UDim2.new(0, 120, 0, 0)
 Sep2.Size = UDim2.new(0, 80, 0, 20)
 Sep2.Font = Enum.Font.Gotham
 Sep2.Text = text
 Sep2.TextColor3 = Color3.fromRGB(0,128,255)
 Sep2.TextSize = 14.000
 
 Sep3.Name = "Sep3"
 Sep3.Parent = Seperator
 Sep3.BackgroundColor3 = _G.Color
 Sep3.BorderSizePixel = 0
 Sep3.Position = UDim2.new(0, 240, 0, 10)
 Sep3.Size = UDim2.new(0, 80, 0, 1)
 end
 
 
 function main:Line()
 local Linee = Instance.new("Frame")
 local Line = Instance.new("Frame")
 
 Linee.Name = "Linee"
 Linee.Parent = MainFramePage
 Linee.BackgroundColor3 = Color3.fromRGB(0,128,255)
 Linee.BackgroundTransparency = 1.000
 Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
 Linee.Size = UDim2.new(0, 310, 0, 20)
 
 Line.Name = "Line"
 Line.Parent = Linee
 Line.BackgroundColor3 = _G.Color
 Line.BorderSizePixel = 0
 Line.Position = UDim2.new(0, 0, 0, 10)
 Line.Size = UDim2.new(0, 325, 0, 1)
 end
 return main
 end
 return uitab
 end

if _G.Select_Weapon == nil then
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if v.ToolTip == "Melee" then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                _G.Select_Weapon = tostring(v.Name)
            end
        end
    end
end

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
	if v.ToolTip == "Melee" then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
			_G.Select_Weapon_Kill_Player_Melee = tostring(v.Name)
		end
	end
end

if _G.Select_Weapon_Law_Raid == nil then
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if v.ToolTip == "Melee" then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                _G.Select_Weapon_Law_Raid = tostring(v.Name)
            end
        end
    end
end

if _G.Select_Boss == nil then
	_G.Select_Boss = "nil"
end

if game.PlaceId == 2753915549 then
	World1 = true
elseif game.PlaceId == 4442272183 then
	World2 = true
elseif game.PlaceId == 7449423635 then
	World3 = true
end
 
function CheckQuest() 
	local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    if World1 then
		if MyLevel == 1 or MyLevel <= 9 or _G.Select_Mob_Farm == "Bandit [Lv. 5]" then -- Bandit
			Ms = "Bandit [Lv. 5]"
			NameQuest = "BanditQuest1"
			LevelQuest = 1
			NameMon = "Bandit"
			CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
			CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331)
			SPAWNPOINT = "Default"
        elseif MyLevel == 10 or MyLevel <= 14 or _G.Select_Mob_Farm == "Monkey [Lv. 14]" then -- Monkey
			Ms = "Monkey [Lv. 14]"
			NameQuest = "JungleQuest"
			LevelQuest = 1
			NameMon = "Monkey"
			CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			CFrameMon = CFrame.new(-1502.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
			SPAWNPOINT = "Jungle"
		elseif MyLevel == 15 or MyLevel <= 29 or _G.Select_Mob_Farm == "Gorilla [Lv. 20]" then -- Gorilla
			Ms = "Gorilla [Lv. 20]"
			NameQuest = "JungleQuest"
			LevelQuest = 2
			NameMon = "Gorilla"
			CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
			SPAWNPOINT = "Jungle"
		elseif MyLevel == 30 or MyLevel <= 39 or _G.Select_Mob_Farm == "Pirate [Lv. 35]" then -- Pirate
			Ms = "Pirate [Lv. 35]"
			NameQuest = "BuggyQuest1"
			LevelQuest = 1
			NameMon = "Pirate"
			CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
			SPAWNPOINT = "Pirate"
		elseif MyLevel == 40 or MyLevel <= 59 or _G.Select_Mob_Farm == "Brute [Lv. 45]" then -- Brute
			Ms = "Brute [Lv. 45]"
			NameQuest = "BuggyQuest1"
			LevelQuest = 2
			NameMon = "Brute"
			CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
			SPAWNPOINT = "Pirate"
		elseif MyLevel == 60 or MyLevel <= 74 or _G.Select_Mob_Farm == "Desert Bandit [Lv. 60]" then -- Desert Bandit
			Ms = "Desert Bandit [Lv. 60]"
			NameQuest = "DesertQuest"
			LevelQuest = 1
			NameMon = "Desert Bandit"
			CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
			CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
			SPAWNPOINT = "Desert"
		elseif MyLevel == 75 or MyLevel <= 89 or _G.Select_Mob_Farm == "Desert Officer [Lv. 70]" then -- Desert Officre
			Ms = "Desert Officer [Lv. 70]"
			NameQuest = "DesertQuest"
			LevelQuest = 2
			NameMon = "Desert Officer"
			CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
			CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005)
			SPAWNPOINT = "Desert"
		elseif MyLevel == 90 or MyLevel <= 99 or _G.Select_Mob_Farm == "Snow Bandit [Lv. 90]" then -- Snow Bandits
			Ms = "Snow Bandit [Lv. 90]"
			NameQuest = "SnowQuest"
			LevelQuest = 1
			NameMon = "Snow Bandits"
			CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
			CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
			SPAWNPOINT = "Ice"
		elseif MyLevel == 100 or MyLevel <= 119 or _G.Select_Mob_Farm == "Snowman [Lv. 100]"  then -- Snowman
			Ms = "Snowman [Lv. 100]"
			NameQuest = "SnowQuest"
			LevelQuest = 2
			NameMon = "Snowman"
			CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
			CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
			SPAWNPOINT = "Ice"
		elseif MyLevel == 120 or MyLevel <= 149 or _G.Select_Mob_Farm == "Chief Petty Officer [Lv. 120]" then -- Chief Petty Officer
			Ms = "Chief Petty Officer [Lv. 120]"
			NameQuest = "MarineQuest2"
			LevelQuest = 1
			NameMon = "Chief Petty Officer"
			CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
			CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
			SPAWNPOINT = "MarineBase"
		elseif MyLevel == 150 or MyLevel <= 174 or _G.Select_Mob_Farm == "Sky Bandit [Lv. 150]" then -- Sky Bandit
			Ms = "Sky Bandit [Lv. 150]"
			NameQuest = "SkyQuest"
			LevelQuest = 1
			NameMon = "Sky Bandit"
			CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
			CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
			SPAWNPOINT = "Sky"
		elseif MyLevel == 175 or MyLevel <= 189 or _G.Select_Mob_Farm == "Dark Master [Lv. 175]" then -- Dark Master
			Ms = "Dark Master [Lv. 175]"
			NameQuest = "SkyQuest"
			LevelQuest = 2
			NameMon = "Dark Master"
			CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
			CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521)
			SPAWNPOINT = "Sky"
		elseif MyLevel == 190 or MyLevel <= 209 or _G.Select_Mob_Farm == "Prisoner [Lv. 190]" then
			Ms = "Prisoner [Lv. 190]"
			NameQuest = "PrisonerQuest"
			LevelQuest = 1
			NameMon = "Prisoner"
			CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
			CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
			SPAWNPOINT = "Prison"
		elseif MyLevel == 210 or MyLevel <= 249 or _G.Select_Mob_Farm == "Dangerous Prisoner [Lv. 210]" then
			Ms = "Dangerous Prisoner [Lv. 210]"
			NameQuest = "PrisonerQuest"
			LevelQuest = 2
			NameMon = "Dangerous Prisoner"
			CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
			CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
			SPAWNPOINT = "Prison"
		elseif MyLevel == 250 or MyLevel <= 274 or _G.Select_Mob_Farm == "Toga Warrior [Lv. 225]" then -- Toga Warrior
			Ms = "Toga Warrior [Lv. 250]"
			NameQuest = "ColosseumQuest"
			LevelQuest = 1
			NameMon = "Toga Warrior"
			CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
			CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
			SPAWNPOINT = "Colosseum"
		elseif MyLevel == 275 or MyLevel <= 299 or _G.Select_Mob_Farm == "Gladiator [Lv. 275]" then -- Gladiato
			Ms = "Gladiator [Lv. 275]"
			NameQuest = "ColosseumQuest"
			LevelQuest = 2
			NameMon = "Gladiato"
			CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
			CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
			SPAWNPOINT = "Colosseum"
		elseif MyLevel == 300 or MyLevel <= 324 or _G.Select_Mob_Farm == "Military Soldier [Lv. 300]" then -- Military Soldier
			Ms = "Military Soldier [Lv. 300]"
			NameQuest = "MagmaQuest"
			LevelQuest = 1
			NameMon = "Military Soldier"
			CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
			CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
			SPAWNPOINT = "Magma"
		elseif MyLevel == 325 or MyLevel <= 374 or _G.Select_Mob_Farm == "Military Spy [Lv. 330]" then -- Military Spy
			Ms = "Military Spy [Lv. 325]"
			NameQuest = "MagmaQuest"
			LevelQuest = 2
			NameMon = "Military Spy"
			CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
			CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
			SPAWNPOINT = "Magma"
		elseif MyLevel == 375 or MyLevel <= 399 or _G.Select_Mob_Farm == "Fishman Warrior [Lv. 375]" then -- Fishman Warrior
			Ms = "Fishman Warrior [Lv. 375]"
			NameQuest = "FishmanQuest"
			LevelQuest = 1
			NameMon = "Fishman Warrior"
			CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
			CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
			SPAWNPOINT = "Fountain"
        elseif MyLevel == 400 or MyLevel <= 449 or _G.Select_Mob_Farm == "Fishman Commando [Lv. 400]" then -- Fishman Commando
			Ms = "Fishman Commando [Lv. 400]"
			NameQuest = "FishmanQuest"
			LevelQuest = 2
			NameMon = "Fishman Commando"
			CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
			CFrameMon = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
			SPAWNPOINT = "Fountain"
        elseif MyLevel == 450 or MyLevel <= 474 or _G.Select_Mob_Farm == "God's Guard [Lv. 450]" then -- God's Guards
			Ms = "God's Guard [Lv. 450]"
			NameQuest = "SkyExp1Quest"
			LevelQuest = 1
			NameMon = "God's Guards"
			CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
			CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
			SPAWNPOINT = "Sky"
        elseif MyLevel == 475 or MyLevel <= 524 or _G.Select_Mob_Farm == "Shanda [Lv. 475]" then -- Shandas
            sky = false
			Ms = "Shanda [Lv. 475]"
			NameQuest = "SkyExp1Quest"
			LevelQuest = 2
			NameMon = "Shandas"
			CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
			CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243)
			SPAWNPOINT = "Sky"
        elseif MyLevel == 525 or MyLevel <= 549 or _G.Select_Mob_Farm == "Royal Squad [Lv. 525]" then -- Royal Squad
            sky = true
			Ms = "Royal Squad [Lv. 525]"
			NameQuest = "SkyExp2Quest"
			LevelQuest = 1
			NameMon = "Royal Squad"
			CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
			CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823)
			SPAWNPOINT = "Sky2"
		elseif MyLevel == 550 or MyLevel <= 624 or _G.Select_Mob_Farm == "Royal Soldier [Lv. 550]" then -- Royal Soldier
            Dis = 240
            sky = true
			Ms = "Royal Soldier [Lv. 550]"
			NameQuest = "SkyExp2Quest"
			LevelQuest = 2
			NameMon = "Royal Soldier"
			CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
			CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959)
			SPAWNPOINT = "Sky2"
		elseif MyLevel == 625 or MyLevel <= 649 or _G.Select_Mob_Farm == "Galley Pirate [Lv. 625]" then -- Galley Pirate
            Dis = 240
            sky = false
			Ms = "Galley Pirate [Lv. 625]"
			NameQuest = "FountainQuest"
			LevelQuest = 1
			NameMon = "Galley Pirate"
			CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
			CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803)
			SPAWNPOINT = "Fountain"
		elseif MyLevel >= 650 or _G.Select_Mob_Farm == "Galley Captain [Lv. 650]" then -- Galley Captain
            Dis = 240
			Ms = "Galley Captain [Lv. 650]"
			NameQuest = "FountainQuest"
			LevelQuest = 2
			NameMon = "Galley Captain"
			CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
			CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
			SPAWNPOINT = "Fountain"
		end
    elseif World2 then
		if MyLevel == 700 or MyLevel <= 724 or _G.Select_Mob_Farm == "Raider [Lv. 700]" then -- Raider [Lv. 700]
			Ms = "Raider [Lv. 700]"
			NameQuest = "Area1Quest"
			LevelQuest = 1
			NameMon = "Raider"
			CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
			SPAWNPOINT = "DressTown"
		elseif MyLevel == 725 or MyLevel <= 774 or _G.Select_Mob_Farm == "Mercenary [Lv. 725]" then -- Mercenary [Lv. 725]
			Ms = "Mercenary [Lv. 725]"
			NameQuest = "Area1Quest"
			LevelQuest = 2
			NameMon = "Mercenary"
			CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
			SPAWNPOINT = "DressTown"
		elseif MyLevel == 775 or MyLevel <= 799 or _G.Select_Mob_Farm == "Swan Pirate [Lv. 775]" then -- Swan Pirate [Lv. 775]
			Ms = "Swan Pirate [Lv. 775]"
			NameQuest = "Area2Quest"
			LevelQuest = 1
			NameMon = "Swan Pirate"
			CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
			SPAWNPOINT = "DressTown"
		elseif MyLevel == 800 or MyLevel <= 874 or _G.Select_Mob_Farm == "Factory Staff [Lv. 800]" then -- Factory Staff [Lv. 800]
			Ms = "Factory Staff [Lv. 800]"
			NameQuest = "Area2Quest"
			LevelQuest = 2
			NameMon = "Factory Staff"
			CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
			SPAWNPOINT = "DressTown"
		elseif MyLevel == 875 or MyLevel <= 899 or _G.Select_Mob_Farm == "Marine Lieutenant [Lv. 875]" then -- Marine Lieutenant [Lv. 875]
			Ms = "Marine Lieutenant [Lv. 875]"
			NameQuest = "MarineQuest3"
			LevelQuest = 1
			NameMon = "Marine Lieutenant"
			CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
			CFrameMon = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
			SPAWNPOINT = "Greenb"
		elseif MyLevel == 900 or MyLevel <= 949 or _G.Select_Mob_Farm == "Marine Captain [Lv. 900]" then -- Marine Captain [Lv. 900]
			Ms = "Marine Captain [Lv. 900]"
			NameQuest = "MarineQuest3"
			LevelQuest = 2
			NameMon = "Marine Captain"
			CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
			CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
			SPAWNPOINT = "Greenb"
		elseif MyLevel == 950 or MyLevel <= 974 or _G.Select_Mob_Farm == "Zombie [Lv. 950]" then -- Zombie [Lv. 950]
			Ms = "Zombie [Lv. 950]"
			NameQuest = "ZombieQuest"
			LevelQuest = 1
			NameMon = "Zombie"
			CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
			CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
			SPAWNPOINT = "Graveyard"
		elseif MyLevel == 975 or MyLevel <= 999 or _G.Select_Mob_Farm == "Vampire [Lv. 975]" then -- Vampire [Lv. 975]
			Ms = "Vampire [Lv. 975]"
			NameQuest = "ZombieQuest"
			LevelQuest = 2
			NameMon = "Vampire"
			CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
			CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
			SPAWNPOINT = "Graveyard"
		elseif MyLevel == 1000 or MyLevel <= 1049 or _G.Select_Mob_Farm == "Snow Trooper [Lv. 1000]" then -- Snow Trooper [Lv. 1000] **
			Ms = "Snow Trooper [Lv. 1000]"
			NameQuest = "SnowMountainQuest"
			LevelQuest = 1
			NameMon = "Snow Trooper"
			CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
			CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
			SPAWNPOINT = "Snowy"
		elseif MyLevel == 1050 or MyLevel <= 1099 or _G.Select_Mob_Farm == "Winter Warrior [Lv. 1050]" then -- Winter Warrior [Lv. 1050]
			Ms = "Winter Warrior [Lv. 1050]"
			NameQuest = "SnowMountainQuest"
			LevelQuest = 2
			NameMon = "Winter Warrior"
			CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
			CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
			SPAWNPOINT = "Snowy"
		elseif MyLevel == 1100 or MyLevel <= 1124 or _G.Select_Mob_Farm == "Lab Subordinate [Lv. 1100]" then -- Lab Subordinate [Lv. 1100]
			Ms = "Lab Subordinate [Lv. 1100]"
			NameQuest = "IceSideQuest"
			LevelQuest = 1
			NameMon = "Lab Subordinate"
			CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
			CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
			SPAWNPOINT = "CircleIslandIce"
		elseif MyLevel == 1125 or MyLevel <= 1174 or _G.Select_Mob_Farm == "Horned Warrior [Lv. 1125]" then -- Horned Warrior [Lv. 1125]
			Ms = "Horned Warrior [Lv. 1125]"
			NameQuest = "IceSideQuest"
			LevelQuest = 2
			NameMon = "Horned Warrior"
			CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
			CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
			SPAWNPOINT = "CircleIslandIce"
		elseif MyLevel == 1175 or MyLevel <= 1199 or _G.Select_Mob_Farm == "Magma Ninja [Lv. 1175]" then -- Magma Ninja [Lv. 1175]
			Ms = "Magma Ninja [Lv. 1175]"
			NameQuest = "FireSideQuest"
			LevelQuest = 1
			NameMon = "Magma Ninja"
			CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
			CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
			SPAWNPOINT = "CircleIslandFire"
		elseif MyLevel == 1200 or MyLevel <= 1249 or _G.Select_Mob_Farm == "Lava Pirate [Lv. 1200]" then -- Lava Pirate [Lv. 1200]
			Ms = "Lava Pirate [Lv. 1200]"
			NameQuest = "FireSideQuest"
			LevelQuest = 2
			NameMon = "Lava Pirate"
			CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
			CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
			SPAWNPOINT = "CircleIslandFire"
		elseif MyLevel == 1250 or MyLevel <= 1274 or _G.Select_Mob_Farm == "Ship Deckhand [Lv. 1250]" then -- Ship Deckhand [Lv. 1250]
			Ms = "Ship Deckhand [Lv. 1250]"
			NameQuest = "ShipQuest1"
			LevelQuest = 1
			NameMon = "Ship Deckhand"
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
			CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
			SPAWNPOINT = "Ship"
        elseif MyLevel == 1275 or MyLevel <= 1299 or _G.Select_Mob_Farm == "Ship Engineer [Lv. 1275]"  then -- Ship Engineer [Lv. 1275]
			Ms = "Ship Engineer [Lv. 1275]"
			NameQuest = "ShipQuest1"
			LevelQuest = 2
			NameMon = "Ship Engineer"
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
			CFrameMon = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
			SPAWNPOINT = "Ship"
        elseif MyLevel == 1300 or MyLevel <= 1324 or _G.Select_Mob_Farm == "Ship Steward [Lv. 1300]" then -- Ship Steward [Lv. 1300]
			Ms = "Ship Steward [Lv. 1300]"
			NameQuest = "ShipQuest2"
			LevelQuest = 1
			NameMon = "Ship Steward"
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
			CFrameMon = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
			SPAWNPOINT = "Ship"
        elseif MyLevel == 1325 or MyLevel <= 1349 or _G.Select_Mob_Farm == "Ship Officer [Lv. 1325]" then -- Ship Officer [Lv. 1325]
			Ms = "Ship Officer [Lv. 1325]"
			NameQuest = "ShipQuest2"
			LevelQuest = 2
			NameMon = "Ship Officer"
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
			CFrameMon = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698)
			SPAWNPOINT = "Ship"
        elseif MyLevel == 1350 or MyLevel <= 1374 or _G.Select_Mob_Farm == "Arctic Warrior [Lv. 1350]" then -- Arctic Warrior [Lv. 1350]
			Ms = "Arctic Warrior [Lv. 1350]"
			NameQuest = "FrostQuest"
			LevelQuest = 1
			NameMon = "Arctic Warrior"
			CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
			CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
			SPAWNPOINT = "IceCastle"
        elseif MyLevel == 1375 or MyLevel <= 1424 or _G.Select_Mob_Farm == "Snow Lurker [Lv. 1375]" then -- Snow Lurker [Lv. 1375]
			Ms = "Snow Lurker [Lv. 1375]"
			NameQuest = "FrostQuest"
			LevelQuest = 2
			NameMon = "Snow Lurker"
			CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
			CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
			SPAWNPOINT = "IceCastle"
		elseif MyLevel == 1425 or MyLevel <= 1449 or _G.Select_Mob_Farm == "Sea Soldier [Lv. 1425]" then -- Sea Soldier [Lv. 1425]
			Ms = "Sea Soldier [Lv. 1425]"
			NameQuest = "ForgottenQuest"
			LevelQuest = 1
			NameMon = "Sea Soldier"
			CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
			CFrameMon = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
			SPAWNPOINT = "ForgottenIsland"
		elseif MyLevel >= 1450 or _G.Select_Mob_Farm == "Water Fighter [Lv. 1450]" then -- Water Fighter [Lv. 1450]
			Ms = "Water Fighter [Lv. 1450]"
			NameQuest = "ForgottenQuest"
			LevelQuest = 2
			NameMon = "Water Fighter"
			CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
			CFrameMon = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
			SPAWNPOINT = "ForgottenIsland"
		end
	elseif World3 then
		if MyLevel == 1500 or MyLevel <= 1524 or _G.Select_Mob_Farm == "Pirate Millionaire [Lv. 1500]" then
			Ms = "Pirate Millionaire [Lv. 1500]"
			NameQuest = "PiratePortQuest"
			LevelQuest = 1
			NameMon = "Pirate Millionaire"
			CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
			CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
			SPAWNPOINT = "Default"
		elseif MyLevel == 1525 or MyLevel <= 1574 or _G.Select_Mob_Farm == "Pistol Billionaire [Lv. 1525]" then
			Ms = "Pistol Billionaire [Lv. 1525]"
			NameQuest = "PiratePortQuest"
			LevelQuest = 2
			NameMon = "Pistol Billionaire"
			CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
			CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
			SPAWNPOINT = "Default"
		elseif MyLevel == 1575 or MyLevel <= 1599 or _G.Select_Mob_Farm == "Dragon Crew Warrior [Lv. 1575]" then
			Ms = "Dragon Crew Warrior [Lv. 1575]"
			NameQuest = "AmazonQuest"
			LevelQuest = 1
			NameMon = "Dragon Crew Warrior"
			CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
			CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
			SPAWNPOINT = "Hydra3"
		elseif MyLevel == 1600 or MyLevel <= 1624 or _G.Select_Mob_Farm == "Dragon Crew Archer [Lv. 1600]" then
			Ms = "Dragon Crew Archer [Lv. 1600]"
			NameQuest = "AmazonQuest"
			LevelQuest = 2
			NameMon = "Dragon Crew Archer"
			CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
			CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
			SPAWNPOINT = "Hydra3"
		elseif MyLevel == 1625 or MyLevel <= 1649 or _G.Select_Mob_Farm == "Female Islander [Lv. 1625]" then
			Ms = "Female Islander [Lv. 1625]"
			NameQuest = "AmazonQuest2"
			LevelQuest = 1
			NameMon = "Female Islander"
			CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
			SPAWNPOINT = "Hydra1"
		elseif MyLevel == 1650 or MyLevel <= 1699 or _G.Select_Mob_Farm == "Giant Islander [Lv. 1650]" then
			Ms = "Giant Islander [Lv. 1650]"
			NameQuest = "AmazonQuest2"
			LevelQuest = 2
			NameMon = "Giant Islander"
			CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
			SPAWNPOINT = "Hydra1"
		elseif MyLevel == 1700 or MyLevel <= 1724 or _G.Select_Mob_Farm == "Marine Commodore [Lv. 1700]" then
			Ms = "Marine Commodore [Lv. 1700]"
			NameQuest = "MarineTreeIsland"
			LevelQuest = 1
			NameMon = "Marine Commodore"
			CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
			CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
			SPAWNPOINT = "GreatTree"
		elseif MyLevel == 1725 or MyLevel <= 1774 or _G.Select_Mob_Farm == "Marine Rear Admiral [Lv. 1725]" then
			Ms = "Marine Rear Admiral [Lv. 1725]"
			NameQuest = "MarineTreeIsland"
			LevelQuest = 2
			NameMon = "Marine Rear Admiral"
			CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
			CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
			SPAWNPOINT = "GreatTree"
		elseif MyLevel == 1775 or MyLevel <= 1799 or _G.Select_Mob_Farm == "Fishman Raider [Lv. 1775]" then
			Ms = "Fishman Raider [Lv. 1775]"
			NameQuest = "DeepForestIsland3"
			LevelQuest = 1
			NameMon = "Fishman Raider"
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
			SPAWNPOINT = "PineappleTown"
		elseif MyLevel == 1800 or MyLevel <= 1824 or _G.Select_Mob_Farm == "Fishman Captain [Lv. 1800]" then
			Ms = "Fishman Captain [Lv. 1800]"
			NameQuest = "DeepForestIsland3"
			LevelQuest = 2
			NameMon = "Fishman Captain"
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
			SPAWNPOINT = "PineappleTown"
		elseif MyLevel == 1825 or MyLevel <= 1849 or _G.Select_Mob_Farm == "Forest Pirate [Lv. 1825]" then
			Ms = "Forest Pirate [Lv. 1825]"
			NameQuest = "DeepForestIsland"
			LevelQuest = 1
			NameMon = "Forest Pirate"
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
			CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
			SPAWNPOINT = "BigMansion"
		elseif MyLevel == 1850 or MyLevel <= 1899 or _G.Select_Mob_Farm == "Mythological Pirate [Lv. 1850]" then
			Ms = "Mythological Pirate [Lv. 1850]"
			NameQuest = "DeepForestIsland"
			LevelQuest = 2
			NameMon = "Mythological Pirate"
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
			CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
			SPAWNPOINT = "BigMansion"
		elseif MyLevel == 1900 or MyLevel <= 1924 or _G.Select_Mob_Farm == "Jungle Pirate [Lv. 1900]" then
			Ms = "Jungle Pirate [Lv. 1900]"
			NameQuest = "DeepForestIsland2"
			LevelQuest = 1
			NameMon = "Jungle Pirate"
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
			SPAWNPOINT = "PineappleTown"
		elseif MyLevel == 1925 or MyLevel <= 1974 or _G.Select_Mob_Farm == "Musketeer Pirate [Lv. 1925]" then
			Ms = "Musketeer Pirate [Lv. 1925]"
			NameQuest = "DeepForestIsland2"
			LevelQuest = 2
			NameMon = "Musketeer Pirate"
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
			SPAWNPOINT = "PineappleTown"
		elseif MyLevel == 1975 or MyLevel <= 1999 or _G.Select_Mob_Farm == "Reborn Skeleton [Lv. 1975]" then
			Ms = "Reborn Skeleton [Lv. 1975]"
			NameQuest = "HauntedQuest1"
			LevelQuest = 1
			NameMon = "Reborn Skeleton"
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			CFrameMon = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
			SPAWNPOINT = "HauntedCastle"
		elseif MyLevel == 2000 or MyLevel <= 2024 or _G.Select_Mob_Farm == "Living Zombie [Lv. 2000]" then
			Ms = "Living Zombie [Lv. 2000]"
			NameQuest = "HauntedQuest1"
			LevelQuest = 2
			NameMon = "Living Zombie"
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			CFrameMon = CFrame.new(-10093.930664063, 237.38233947754, 6180.5654296875)
			SPAWNPOINT = "HauntedCastle"
		elseif MyLevel == 2025 or MyLevel <= 2049 or _G.Select_Mob_Farm == "Demonic Soul [Lv. 2025]" then
			Ms = "Demonic Soul [Lv. 2025]"
			NameQuest = "HauntedQuest2"
			LevelQuest = 1
			NameMon = "Demonic Soul"
			CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
			CFrameMon = CFrame.new(-9466.72949, 171.162918, 6132.01514)
			SPAWNPOINT = "HauntedCastle"
		elseif MyLevel == 2050 or MyLevel <= 2074 or _G.Select_Mob_Farm == "Posessed Mummy [Lv. 2050]" then
			Ms = "Posessed Mummy [Lv. 2050]" 
			NameQuest = "HauntedQuest2"
			LevelQuest = 2
			NameMon = "Posessed Mummy"
			CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
			CFrameMon = CFrame.new(-9589.93848, 4.85058546, 6190.27197)
			SPAWNPOINT = "HauntedCastle"
		elseif MyLevel == 2075 or MyLevel <= 2099 or _G.Select_Mob_Farm == "Peanut Scout [Lv. 2075]" then
            Ms = "Peanut Scout [Lv. 2075]"
            NameQuest = "NutsIslandQuest"
            LevelQuest = 1
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
			SPAWNPOINT = "Peanut"
		elseif MyLevel == 2100 or MyLevel <= 2124 or _G.Select_Mob_Farm == "Peanut President [Lv. 2100]" then
            Ms = "Peanut President [Lv. 2100]"
            NameQuest = "NutsIslandQuest"
            LevelQuest = 2
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
			SPAWNPOINT = "Peanut"
		elseif MyLevel == 2125 or MyLevel <= 2149 or _G.Select_Mob_Farm == "Ice Cream Chef [Lv. 2125]" then
            Ms = "Ice Cream Chef [Lv. 2125]"
            NameQuest = "IceCreamIslandQuest"
            LevelQuest = 1
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
            CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
			SPAWNPOINT = "IceCream"
		elseif MyLevel == 2150 or MyLevel <= 2199 or _G.Select_Mob_Farm == "Ice Cream Commander [Lv. 2150]" then
            Ms = "Ice Cream Commander [Lv. 2150]"
            NameQuest = "IceCreamIslandQuest"
            LevelQuest = 2
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
            CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
			SPAWNPOINT = "IceCream"
		elseif MyLevel == 2200 or MyLevel <= 2224 or _G.Select_Mob_Farm == "Cookie Crafter [Lv. 2200]" then
            Ms = "Cookie Crafter [Lv. 2200]"
            NameQuest = "CakeQuest1"
            LevelQuest = 1
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
            CFrameMon = CFrame.new(-2273.00244140625, 90.22590637207031, -12151.62109375)
			SPAWNPOINT = "Loaf"
		elseif MyLevel == 2225 or MyLevel <= 2249 or _G.Select_Mob_Farm == "Cake Guard [Lv. 2225]" then
            Ms = "Cake Guard [Lv. 2225]"
            NameQuest = "CakeQuest1"
            LevelQuest = 2
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
            CFrameMon = CFrame.new(-1442.373046875, 158.14111328125, -12277.37109375)
			SPAWNPOINT = "Loaf"
		elseif MyLevel == 2250 or MyLevel <= 2274 or _G.Select_Mob_Farm == "Baking Staff [Lv. 2250]" then
            Ms = "Baking Staff [Lv. 2250]"
            NameQuest = "CakeQuest2"
            LevelQuest = 1
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
            CFrameMon = CFrame.new(-1837.2803955078125, 129.0594482421875, -12934.5498046875)
			SPAWNPOINT = "Loaf"
		elseif MyLevel == 2275 or MyLevel <= 2299 or _G.Select_Mob_Farm == "Head Baker [Lv. 2275]" then
            Ms = "Head Baker [Lv. 2275]"
            NameQuest = "CakeQuest2"
            LevelQuest = 2
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
            CFrameMon = CFrame.new(-2203.302490234375, 109.90937042236328, -12788.7333984375)
			SPAWNPOINT = "Loaf"
		elseif MyLevel == 2300 or MyLevel <= 2324 or _G.Select_Mob_Farm == "Cocoa Warrior [Lv. 2300]" then
            Ms = "Cocoa Warrior [Lv. 2300]"
            NameQuest = "ChocQuest1"
            LevelQuest = 1
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
            CFrameMon = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
			SPAWNPOINT = "Chocolate"
		elseif MyLevel == 2325 or MyLevel <= 2349 or _G.Select_Mob_Farm == "Chocolate Bar Battler [Lv. 2325]" then
            Ms = "Chocolate Bar Battler [Lv. 2325]"
            NameQuest = "ChocQuest1"
            LevelQuest = 2
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
            CFrameMon = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
			SPAWNPOINT = "Chocolate"
		elseif MyLevel == 2350 or MyLevel <= 2374 or _G.Select_Mob_Farm == "Sweet Thief [Lv. 2350]" then
            Ms = "Sweet Thief [Lv. 2350]"
            NameQuest = "ChocQuest2"
            LevelQuest = 1
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
            CFrameMon = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
			SPAWNPOINT = "Chocolate"
		elseif MyLevel == 2375 or MyLevel <= 2400 or _G.Select_Mob_Farm == "Candy Rebel [Lv. 2375]" then
            Ms = "Candy Rebel [Lv. 2375]"
            NameQuest = "ChocQuest2"
            LevelQuest = 2
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
            CFrameMon = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
			SPAWNPOINT = "Chocolate"
			elseif MyLevel == 2400 or MyLevel <= 2425 or _G.Select_Mob_Farm == "Candy Pirate [Lv. 2400]" then
			Ms = "Candy Pirate [Lv. 2400]"
            NameQuest = "CandyQuest1"
            LevelQuest = 1
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.85698254e-08, -0.948560953, -2.05343067e-08, 1, -6.54346692e-08, 0.948560953, -1.23821675e-09, -0.316594511)
            CFrameMon = CFrame.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.17216943e-08, -0.432239741, 7.81264475e-08, 1, -2.60746162e-08, 0.432239741, -1.02563433e-08, 0.90175873)
			SPAWNPOINT = "Chocolate"
			elseif MyLevel >= 2425 or _G.Select_Mob_Farm == "Snow Demon [Lv. 2425]" then
			Ms = "Snow Demon [Lv. 2425]"
            NameQuest = "CandyQuest1"
            LevelQuest = 2
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.85698254e-08, -0.948560953, -2.05343067e-08, 1, -6.54346692e-08, 0.948560953, -1.23821675e-09, -0.316594511)
            CFrameMon = CFrame.new(-777.070862, 23.5809536, -14453.0078, 0.33384338, 0, -0.942628562, 0, 1, 0, 0.942628562, 0, 0.33384338)
			SPAWNPOINT = "Chocolate"
		end
    end
end

function CheckBossQuest()
    if _G.Select_Boss == "Saber Expert [Lv. 200] [Boss]" then
        MsBoss = "Saber Expert [Lv. 200] [Boss]"
        NameBoss = "Saber Expert"
        CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
    elseif _G.Select_Boss == "The Saw [Lv. 100] [Boss]" then
        MsBoss = "The Saw [Lv. 100] [Boss]"
        NameBoss = "The Saw"
        CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
    elseif _G.Select_Boss == "Greybeard [Lv. 750] [Raid Boss]" then
        MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
        NameBoss = "Greybeard"
        CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
    elseif _G.Select_Boss == "The Gorilla King [Lv. 25] [Boss]" then
        MsBoss = "The Gorilla King [Lv. 25] [Boss]"
        NameBoss = "The Gorilla King"
        NameQuestBoss = "JungleQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
        CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
    elseif _G.Select_Boss == "Bobby [Lv. 55] [Boss]" then
        MsBoss = "Bobby [Lv. 55] [Boss]"
        NameBoss = "Bobby"
        NameQuestBoss = "BuggyQuest1"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
        CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
    elseif _G.Select_Boss == "Yeti [Lv. 110] [Boss]" then
        MsBoss = "Yeti [Lv. 110] [Boss]"
        NameBoss = "Yeti"
        NameQuestBoss = "SnowQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
        CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
    elseif _G.Select_Boss == "Mob Leader [Lv. 120] [Boss]" then
        MsBoss = "Mob Leader [Lv. 120] [Boss]"
        NameBoss = "Mob Leader"
        CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
    elseif _G.Select_Boss == "Vice Admiral [Lv. 130] [Boss]" then
        MsBoss = "Vice Admiral [Lv. 130] [Boss]"
        NameBoss = "Vice Admiral"
        NameQuestBoss = "MarineQuest2"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
        CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
    elseif _G.Select_Boss == "Warden [Lv. 175] [Boss]" then
        MsBoss = "Warden [Lv. 175] [Boss]"
        NameBoss = "Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 1
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif _G.Select_Boss == "Chief Warden [Lv. 200] [Boss]" then
        MsBoss = "Chief Warden [Lv. 200] [Boss]"
        NameBoss = "Chief Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif _G.Select_Boss == "Swan [Lv. 225] [Boss]" then
        MsBoss = "Swan [Lv. 225] [Boss]"
        NameBoss = "Swan"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif _G.Select_Boss == "Magma Admiral [Lv. 350] [Boss]" then
        MsBoss = "Magma Admiral [Lv. 350] [Boss]"
        NameBoss = "Magma Admiral"
        NameQuestBoss = "MagmaQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
        CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
    elseif _G.Select_Boss == "Fishman Lord [Lv. 425] [Boss]" then
        MsBoss = "Fishman Lord [Lv. 425] [Boss]"
        NameBoss = "Fishman Lord"
        NameQuestBoss = "FishmanQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
        CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
    elseif _G.Select_Boss == "Wysper [Lv. 500] [Boss]" then
        MsBoss = "Wysper [Lv. 500] [Boss]"
        NameBoss = "Wysper"
        NameQuestBoss = "SkyExp1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
        CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
    elseif _G.Select_Boss == "Thunder God [Lv. 575] [Boss]" then
        MsBoss = "Thunder God [Lv. 575] [Boss]"
        NameBoss = "Thunder God"
        NameQuestBoss = "SkyExp2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
        CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
    elseif _G.Select_Boss == "Cyborg [Lv. 675] [Boss]" then
        MsBoss = "Cyborg [Lv. 675] [Boss]"
        NameBoss = "Cyborg"
        NameQuestBoss = "FountainQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
        CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
    -- New World
    elseif _G.Select_Boss == "Diamond [Lv. 750] [Boss]" then
        MsBoss = "Diamond [Lv. 750] [Boss]"
        NameBoss = "Diamond"
        NameQuestBoss = "Area1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
        CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
    elseif _G.Select_Boss == "Jeremy [Lv. 850] [Boss]" then
        MsBoss = "Jeremy [Lv. 850] [Boss]"
        NameBoss = "Jeremy"
        NameQuestBoss = "Area2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
        CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
    elseif _G.Select_Boss == "Fajita [Lv. 925] [Boss]" then
        MsBoss = "Fajita [Lv. 925] [Boss]"
        NameBoss = "Fajita"
        NameQuestBoss = "MarineQuest3"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
        CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
    elseif _G.Select_Boss == "Don Swan [Lv. 1000] [Boss]" then
        MsBoss = "Don Swan [Lv. 1000] [Boss]"
        NameBoss = "Don Swan"
        CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
    elseif _G.Select_Boss == "Smoke Admiral [Lv. 1150] [Boss]" then
        MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
        NameBoss = "Smoke Admiral"
        NameQuestBoss = "IceSideQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
        CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
    elseif _G.Select_Boss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
        MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
        NameBoss = "Cursed Captain"
        CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
    elseif _G.Select_Boss == "Darkbeard [Lv. 1000] [Raid Boss]" then
        MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
        NameBoss = "Darkbeard"
        CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
    elseif _G.Select_Boss == "Order [Lv. 1250] [Raid Boss]" then
        MsBoss = "Order [Lv. 1250] [Raid Boss]"
        NameBoss = "Order"
        CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
    elseif _G.Select_Boss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
        MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
        NameBoss = "Awakened Ice Admiral"
        NameQuestBoss = "FrostQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
        CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
    elseif _G.Select_Boss == "Tide Keeper [Lv. 1475] [Boss]" then
        MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
         NameBoss = "Tide Keeper"
        NameQuestBoss = "ForgottenQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
        CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
    -- Thire World
    elseif _G.Select_Boss == "Stone [Lv. 1550] [Boss]" then
        MsBoss = "Stone [Lv. 1550] [Boss]"
        NameBoss = "Stone"
        NameQuestBoss = "PiratePortQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-290, 44, 5577)
        CFrameBoss = CFrame.new(-1085, 40, 6779)
    elseif _G.Select_Boss == "Island Empress [Lv. 1675] [Boss]" then
        MsBoss = "Island Empress [Lv. 1675] [Boss]"
         NameBoss = "Island Empress"
        NameQuestBoss = "AmazonQuest2"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5443, 602, 752)
        CFrameBoss = CFrame.new(5659, 602, 244)
    elseif _G.Select_Boss == "Kilo Admiral [Lv. 1750] [Boss]" then
        MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
        NameBoss = "Kilo Admiral"
        NameQuestBoss = "MarineTreeIsland"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(2178, 29, -6737)
        CFrameBoss =CFrame.new(2846, 433, -7100)
    elseif _G.Select_Boss == "Captain Elephant [Lv. 1875] [Boss]" then
        MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
        NameBoss = "Captain Elephant"
        NameQuestBoss = "DeepForestIsland"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
        CFrameBoss = CFrame.new(-13221, 325, -8405)
    elseif _G.Select_Boss == "Beautiful Pirate [Lv. 1950] [Boss]" then
        MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
        NameBoss = "Beautiful Pirate"
        NameQuestBoss = "DeepForestIsland2"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
        CFrameBoss = CFrame.new(5182, 23, -20)
    elseif _G.Select_Boss == "Cake Queen [Lv. 2175] [Boss]" then
        MsBoss = "Cake Queen [Lv. 2175] [Boss]"
        NameBoss = "Cake Queen"
        NameQuestBoss = "IceCreamIslandQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-716, 382, -11010)
        CFrameBoss = CFrame.new(-821, 66, -10965)
    elseif _G.Select_Boss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
        MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
        NameBoss = "rip_indra True Form"
        CFrameBoss = CFrame.new(-5359, 424, -2735)
    elseif _G.Select_Boss == "Longma [Lv. 2000] [Boss]" then
        MsBoss = "Longma [Lv. 2000] [Boss]"
        NameBoss = "Longma"
        CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
    elseif _G.Select_Boss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
        MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
        NameBoss = "Soul Reaper"
        CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
    end
end

function AutoHaki()
	if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
	end
end
 
function EquipWeapon(ToolSe)
	if not _G.NotAutoEquip then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			wait(.1)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
		end
	end
end

-- [Isnetwork Owner]

function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
			return true
		end
		return false
	end
end

-- [Function (Abandoned Quest , Others)]

function Com(com,...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end

-- [Tween Functions]

local function GetIsLand(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = targetPos
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos.Position
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
		RealTarget = RealTarget.p
	end

	local ReturnValue
	local CheckInOut = math.huge;
	if game.Players.LocalPlayer.Team then
		for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
			local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
			if ReMagnitude < CheckInOut then
				CheckInOut = ReMagnitude;
				ReturnValue = v.Name
			end
		end
		if ReturnValue then
			return ReturnValue
		end 
	end
end

--BTP

function BTP(Position)
	game.Players.LocalPlayer.Character.Head:Destroy()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	wait(1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end

-- [Tween Functions (toTarget)]

local function toTarget(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = CFrame.new(targetPos)
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
	end

	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then if tween then tween:Cancel() end repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2) end

	local tweenfunc = {}
	local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
	if Distance < 1000 then
		Speed = 315
	elseif Distance >= 1000 then
		Speed = 300
	end

	if _G.Bypass then
		if Distance > 3000 and not AutoFarmMaterial and not _G.Settings.FightingStyle["Auto God Human"] and not _G.Settings.Raids["Auto Raids"] and not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") then
			pcall(function()
				tween:Cancel()
				fkwarp = false

				if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(RealTarget)) then 
					wait(.1)
					Com("F_","TeleportToSpawn")
				elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					wait(0.1)
					repeat task.wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
				else
					if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
						if fkwarp == false then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
						end
						fkwarp = true
					end
					wait(.08)
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					repeat task.wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
					wait(.1)
					Com("F_","SetSpawnPoint")
				end
				wait(0.2)

				return
			end)
		end
	end

	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed, Enum.EasingStyle.Linear)
	local tweenw, err = pcall(function()
		tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = RealTarget})
		tween:Play()
	end)

	function tweenfunc:Stop()
		tween:Cancel()
	end 

	function tweenfunc:Wait()
		tween.Completed:Wait()
	end 

	return tweenfunc
end

function toTargetP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat task.wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
		pcall(function()
			tween:Cancel()

			game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

			return
		end)
	end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end

function UseCode(Text)
	game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
end

function Hop()
	local PlaceID = game.PlaceId
	local AllIDs = {}
	local foundAnything = ""
	local actualHour = os.date("!*t").hour
	local Deleted = false
	function TpReturner()
		local Site;
		if foundAnything == "" then
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
		else
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
		end
		local ID = ""
		if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
			foundAnything = Site.nextPageCursor
		end
		local num = 0;
		for i,v in pairs(Site.data) do
			local Possible = true
			ID = tostring(v.id)
			if tonumber(v.maxPlayers) > tonumber(v.playing) then
				for _,Existing in pairs(AllIDs) do
					if num ~= 0 then
						if ID == tostring(Existing) then
							Possible = false
						end
					else
						if tonumber(actualHour) ~= tonumber(Existing) then
							local delFile = pcall(function()
								AllIDs = {}
								table.insert(AllIDs, actualHour)
							end)
						end
					end
					num = num + 1
				end
				if Possible == true then
					table.insert(AllIDs, ID)
					wait()
					pcall(function()
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
					end)
					wait(4)
				end
			end
		end
	end
	function Teleport() 
		while wait() do
			pcall(function()
				TpReturner()
				if foundAnything ~= "" then
					TpReturner()
				end
			end)
		end
	end
	Teleport()
end

function SkyJumpNoCoolDown()
	if _G.Infinit_SkyJump then
		for i,v in next, getgc() do
			if game.Players.LocalPlayer.Character.Geppo then
				if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Geppo then
					for i2,v2 in next, getupvalues(v) do
						if tostring(v2) == "0" then
							repeat wait(.1)
								setupvalue(v,i2,0)
							until not _G.Infinit_SkyJump
						end
					end
				end
			end
		end
	end
end

function InfAbility()
	if _G.Infinit_Ability then
		if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
			local inf = Instance.new("ParticleEmitter")
			inf.Acceleration = Vector3.new(0,0,0)
			inf.Archivable = true
			inf.Drag = 20
			inf.EmissionDirection = Enum.NormalId.Top
			inf.Enabled = true
			inf.Lifetime = NumberRange.new(0.2,0.2)
			inf.LightInfluence = 0
			inf.LockedToPart = true
			inf.Name = "Agility"
			inf.Rate = 500
			local numberKeypoints2 = {
				NumberSequenceKeypoint.new(0, 0); 
				NumberSequenceKeypoint.new(1, 4); 
			}

			inf.Size = NumberSequence.new(numberKeypoints2)
			inf.RotSpeed = NumberRange.new(999, 9999)
			inf.Rotation = NumberRange.new(0, 0)
			inf.Speed = NumberRange.new(30, 30)
			inf.SpreadAngle = Vector2.new(360,360)
			inf.Texture = "rbxassetid://243098098"
			inf.VelocityInheritance = 0
			inf.ZOffset = 2
			inf.Transparency = NumberSequence.new(0)
			inf.Color = ColorSequence.new(Color3.fromRGB(0, 255, 255),Color3.fromRGB(0, 255, 255))
			inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		end
	else
		if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
			game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
		end
	end
end

_G.Dodge_No_CoolDown = false
function DodgeNoCoolDown()
	if _G.Dodge_No_CoolDown then
		for i,v in next, getgc() do
			if game.Players.LocalPlayer.Character.Dodge then
				if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
					for i2,v2 in next, getupvalues(v) do
						if tostring(v2) == "0.4" then
							repeat wait(.1)
								setupvalue(v,i2,0)
							until not _G.Dodge_No_CoolDown
						end
					end
				end
			end
		end
	end
end

local LocalPlayer = game:GetService'Players'.LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function InfinitEnergy()
	game:GetService'Players'.LocalPlayer.Character.Energy.Changed:connect(function()
		if _G.Infinit_Energy then
			LocalPlayer.Character.Energy.Value = originalstam
		end 
	end)
end

function SoruNoCoolDown()
	for i, v in pairs(getgc()) do
		if type(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Soru") then
			for i2,v2 in pairs(debug.getupvalues(v)) do
				if type(v2) == 'table' then
					if v2.LastUse then
						repeat task.wait()
							setupvalue(v, i2, {LastAfter = 0,LastUse = 0})
						until not _G.Infinit_Soru
					end
				end
			end
		end
	end
end

function RemoveSpaces(str)
    return str:gsub(" Fruit", "")
end

local function formatNumber(number)
	local i, k, j = tostring(number):match("(%-?%d?)(%d*)(%.?.*)")
	return i..k:reverse():gsub("(%d%d%d)", "%1,"):reverse()..j
 end

---------------------------------------------------------------

spawn(function()
	while wait() do
		repeat task.wait() until game.CoreGui:FindFirstChild('RobloxPromptGui')
		local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')							
		po.ChildAdded:connect(function(a)
			if a.Name == 'ErrorPrompt' then
				repeat
					ts:Teleport(game.PlaceId)
					wait(2)
				until false
			end
		end)
	end
end)

spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
		  	if _G.Auto_Farm_Level or _G.Auto_New_World or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.TeleportIsland or _G.Auto_Farm_Boss or _G.Auto_Elite_Hunter or _G.Auto_Cake_Prince or _G.Auto_Farm_All_Boss or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Farm_Scrap_and_Leather or _G.Auto_Farm_Angel_Wing or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Farm_Radioactive or _G.Auto_Farm_Vampire_Fang or _G.Auto_Farm_Mystic_Droplet or _G.Auto_Farm_GunPowder or _G.Auto_Farm_Dragon_Scales or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Fish_Tail or _G.Auto_Farm_Mini_Tusk or _G.Auto_Farm_Magma_Ore or _G.Auto_Farm_Bone or _G.Auto_Farm_Conjured_Cocoa or _G.Auto_Open_Dough_Dungeon or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Holy_Torch or _G.Auto_Canvander or _G.d or _G.Auto_Twin_Hook or _G.Auto_Serpent_Bow or _G.Auto_Fully_Death_Step or _G.Auto_Fully_SharkMan_Karate or _G.Teleport_to_Player or _G.Auto_Kill_Player_Melee or _G.Auto_Kill_Player_Gun or _G.Start_Tween_Island or _G.Auto_Next_Island or _G.Auto_Kill_Law then
			 	if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local Noclip = Instance.new("BodyVelocity")
					Noclip.Name = "BodyClip"
					Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
					Noclip.MaxForce = Vector3.new(100000,100000,100000)
					Noclip.Velocity = Vector3.new(0,0,0)
			 	end
		  	else	
			 	if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
			 	end
		  	end
		end)
	end)
end)
 
spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
			if _G.Auto_Farm_Level or _G.Auto_New_World or _G.TeleportIsland or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.Auto_Farm_Boss or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.Auto_Elite_Hunter or _G.Auto_Cake_Prince or _G.Auto_Farm_All_Boss or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Farm_Scrap_and_Leather or _G.Auto_Farm_Angel_Wing or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.d or _G.Auto_Rengoku or _G.Auto_Farm_Radioactive or _G.Auto_Farm_Vampire_Fang or _G.Auto_Farm_Mystic_Droplet or _G.Auto_Farm_GunPowder or _G.Auto_Farm_Dragon_Scales or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Fish_Tail or _G.Auto_Farm_Mini_Tusk or _G.Auto_Farm_Magma_Ore or _G.Auto_Farm_Bone or _G.Auto_Farm_Conjured_Cocoa or _G.Auto_Open_Dough_Dungeon or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Holy_Torch or _G.Auto_Canvander or _G.Auto_Twin_Hook or _G.Auto_Serpent_Bow or _G.Auto_Fully_Death_Step or _G.Auto_Fully_SharkMan_Karate or _G.Teleport_to_Player or _G.Auto_Kill_Player_Melee or _G.Auto_Kill_Player_Gun or _G.Start_Tween_Island or _G.d or _G.Auto_Next_Island or _G.Auto_Kill_Law then
				for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.CanCollide = false    
					end
				end
			end
		end)
	end)
end)


spawn(function()
	while wait() do
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			if v:IsA("Tool") then
				if v:FindFirstChild("RemoteFunctionShoot") then 
					SelectToolWeaponGun = v.Name
				end
			end
		end
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
			if v:IsA("Tool") then
				if v:FindFirstChild("RemoteFunctionShoot") then 
					SelectToolWeaponGun = v.Name
				end
			end
		end
	end
end)

spawn(function()
	local gg = getrawmetatable(game)
	local old = gg.__namecall
	setreadonly(gg,false)
	gg.__namecall = newcclosure(function(...)
		local method = getnamecallmethod()
		local args = {...}
		if tostring(method) == "FireServer" then
			if tostring(args[1]) == "RemoteEvent" then
				if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
					if UseSkillMasteryDevilFruit then
						args[2] = PositionSkillMasteryDevilFruit
						return old(unpack(args))
					elseif AimSkillNearest then
						args[2] = AimBotSkillPosition
						return old(unpack(args))
					end
				end
			end
		end
		return old(...)
	end)
end)

spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
        if UseGun then
			pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == Ms then
						local args = {
							[1] = "TAP",
							[2] = v.HumanoidRootPart.Position
						}
						
						game:GetService("Players").LocalPlayer.Character.Humanoid:FindFirstChild("Soul Guitar"):InvokeServer(unpack(args))
                        local args = {
                            [1] = v.HumanoidRootPart.Position,
                            [2] = v.HumanoidRootPart
                        }
                        game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                    end
                end
            end)
        end
    end)
end)

spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
        if UseGunKillPlayer then
			pcall(function()
                for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                    if v.Name == _G.Select_Player then
                        local args = {
                            [1] = v.HumanoidRootPart.Position,
                            [2] = v.HumanoidRootPart
                        }
                        game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                    end
                end
            end)
        end
    end)
end)

local lp = game:GetService('Players').LocalPlayer
local mouse = lp:GetMouse()
spawn(function()
	while wait() do
		if _G.Aimbot_Skill_Fov then
			pcall(function()
				local MaxDist, Closest = math.huge
				for i,v in pairs(game:GetService("Players"):GetChildren()) do 
					local Head = v.Character:FindFirstChild("HumanoidRootPart")
					local Pos, Vis = game.Workspace.CurrentCamera.WorldToScreenPoint(game.Workspace.CurrentCamera, Head.Position)
					local MousePos, TheirPos = Vector2.new(mouse.X, mouse.Y), Vector2.new(Pos.X, Pos.Y)
					local Dist = (TheirPos - MousePos).Magnitude
					if Dist < MaxDist and Dist <= _G.Select_Size_Fov and v.Name ~= game.Players.LocalPlayer.Name then
						MaxDist = Dist
						_G.Aim_Players = v
					end
				end
			end)
		end
	end
end)

spawn(function()
	local gg = getrawmetatable(game)
	local old = gg.__namecall
	setreadonly(gg,false)
	gg.__namecall = newcclosure(function(...)
		local method = getnamecallmethod()
		local args = {...}
		if tostring(method) == "FireServer" then
			if tostring(args[1]) == "RemoteEvent" then
				if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
					if _G.Aimbot_Skill_Fov then
						args[2] = _G.Aim_Players.Character.HumanoidRootPart.Position
						return old(unpack(args))
					end
				end
			end
		end
		return old(...)
	end)
end)

 --------------------------------------------------------------------
local Library = Update:Window("Blade Hub","17140684264")
-------------------------------------------------------------------
spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Ectoplasm and MagnetEctoplasm and string.find(v.Name, "Ship") and (v.HumanoidRootPart.Position - PosMonEctoplasm.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonEctoplasm
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(10,10,10)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Farm_Ectoplasm then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if string.find(v.Name, "Ship") then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  PosMonEctoplasm = v.HumanoidRootPart.CFrame
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(10,10,10)
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  MagnetEctoplasm = true
  game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Farm_Ectoplasm == false or not v.Parent or v.Humanoid.Health <= 0
  MagnetEctoplasm = false
  else
   MagnetEctoplasm = false
  toTarget(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
  end
  end
  else
   MagnetEctoplasm = false
  local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
  if Distance > 20000 then
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
  end
  toTarget(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
  end
  end)
 end
 end
 end)

spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Bone and StartMagnetBoneMon and (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonBone
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(10,10,10)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Farm_Bone and World3 then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
  if v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  StartMagnetBoneMon = true
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(10,10,10)
  PosMonBone = v.HumanoidRootPart.CFrame
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Farm_Bone == false or not v.Parent or v.Humanoid.Health <= 0
  end
  end
  end
  else
   StartMagnetBoneMon = false
  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if v.Name == "Reborn Skeleton [Lv. 1975]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  elseif v.Name == "Living Zombie [Lv. 2000]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  elseif v.Name == "Demonic Soul [Lv. 2025]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  elseif v.Name == "Posessed Mummy [Lv. 2050]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  end
  end
  toTarget(CFrame.new(-9466.72949, 171.162918, 6132.01514))
  end
  end)
 end
 end
 end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Level and MasteryBFMagnetActive and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonMasteryFruit
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(10,10,10)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
    end)
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Level and MasteryGunMagnetActive and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonMasteryGun
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(10,10,10)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
    end)
end)
------------------------------------------------------------

spawn(function()
    while wait() do
        if _G.SelectModeFarm == "Normal Mode" and _G.Auto_Farm_Level then
            pcall(function()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                    StartMagnet = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    StartMagnet = false
                    CheckQuest()
                    repeat task.wait() toTarget(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Farm_Level
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                        wait(1.2)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        wait(0.5)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Ms then
                                    repeat task.wait()
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            EquipWeapon(_G.Select_Weapon)
                                            AutoHaki()
                                            PosMon = v.HumanoidRootPart.CFrame
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                                            StartMagnet = true
                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                        else
                                            StartMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    until not _G.Auto_Farm_Level or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        end
                    else
                        StartMagnet = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                            toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                        else
                            toTarget(CFrameMon)
                        end
                    end
                end
            end)

        elseif _G.SelectModeFarm == "Fast Mode" and _G.Auto_Farm_Level then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value == SPAWNPOINT then
                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                        FastFarmMode = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        FastFarmMode = false
                        CheckQuest()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Ms then
                                        repeat task.wait()
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                EquipWeapon(_G.Select_Weapon)
                                                AutoHaki()
                                                PosMonFast = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                                                FastFarmMode = true
                                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
                                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                            else
                                                FastFarmMode = false
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                            end
                                        until not _G.Auto_Farm_Level or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            end
                        else
                            FastFarmMode = false
                            if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                                toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                            else
                                toTarget(CFrameMon)
                            end
                        end
                    end
                else
                    repeat task.wait()
                        game.Players.LocalPlayer.Character.Head:Destroy()
                        wait(0.5)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                    until game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value == SPAWNPOINT
                end
            end)

        elseif _G.SelectModeFarm == "No Quest" and _G.Auto_Farm_Level then
            pcall(function()
                CheckQuest()
                if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if v.Name == Ms then
                                if v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.Select_Weapon)
                                        AutoHaki()
                                        PosMonNoQuest = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                                        NoQuest = true
                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                    until not _G.Auto_Farm_Level or v.Humanoid.Health <= 0 or not v.Parent
                                end
                            end
                        end
                    end
                else
                    NoQuest = false
                    if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                        toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                    else
                        toTarget(CFrameMon)
                    end
                end
            end)

        elseif _G.SelectModeFarm == "Near Farm Mode" and _G.Auto_Farm_Level then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name and v:FindFirstChild("Humanoid") then
                    if v.Humanoid.Health > 0 then
                        repeat game:GetService("RunService").Heartbeat:wait()
                            EquipWeapon(_G.Select_Weapon)
                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                local args = {
                                    [1] = "Buso"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.WalkSpeed = 0
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                            NearMode = true
                            PosMonModeNear = v.HumanoidRootPart.CFrame
                            game:GetService("VirtualUser"):CaptureController()
                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                        until not _G.Auto_Farm_Level or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                    end
                end
            end
        end
    end
end)

-- [[ Bring Mob Section ]]

-- [[ This script was Beutified by: xShadowyx ]]

-- // [[ Bring Mob Script Function ]] [Fixed]

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
        pcall(function()
            if _G.BringMonster then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.Auto_Farm_Level and StartMagnet and v.Name == Ms and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMon
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                    if _G.Auto_Farm_Level and NoQuest and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonNoQuest.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonNoQuest
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                    if _G.Auto_Farm_Level and NearMode and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonModeNear.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonModeNear
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                    if _G.Auto_Farm_Level and FastFarmMode and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonFast.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonFast
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                end
            end
        end)
    end)
end)
------------------------------------------------------------
spawn(function()
 while wait() do
 if _G.Auto_New_World then
 pcall(function()
  if game.Players.LocalPlayer.Data.Level.Value >= 700 and World1 then
  _G.Auto_Farm_Level = false
  if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
  repeat task.wait() toTarget(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563)) until (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_New_World
  wait(1)
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
  EquipWeapon("Key")
  local pos2 = CFrame.new(1347.7124, 37.3751602, -1325.6488)
  repeat task.wait() toTarget(pos2) until (pos2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_New_World
  wait(3)
  elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
  if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60,60,60)
  v.HumanoidRootPart.Transparency = 1
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  game:GetService("VirtualUser"):CaptureController()
  game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 870),workspace.CurrentCamera.CFrame)
  until v.Humanoid.Health <= 0 or not v.Parent or not _G.Auto_New_World
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
  end
  end
  else
   toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
  end
  else
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
  end
  end
  end)
 end
 end
 end)

spawn(function()
 while wait() do
 if _G.Auto_Third_World then
 pcall(function()
  if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
  _G.Auto_Farm_Level = false
  if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("QuestProgress","Check") == 0 then
  toTarget(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
  if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
  wait(1.5)
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("QuestProgress","Begin")
  end
  wait(1.8)
  if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "rip_indra [Lv. 1500] [Boss]" then
  OldCFrameThird = v.HumanoidRootPart.CFrame
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  v.HumanoidRootPart.CFrame = OldCFrameThird
  v.HumanoidRootPart.Size = Vector3.new(50,50,50)
  v.HumanoidRootPart.CanCollide = false
  v.Humanoid.WalkSpeed = 0
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
  sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
  until _G.Auto_Third_World == false or v.Humanoid.Health <= 0 or not v.Parent
  end
  end
  elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
  toTarget(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
  end
  end
  end
  end)
 end
 end
end)

function bypass(Point)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
end
--------------------------------------------------------------------
local Main = Library:Tab("Main","rbxassetid://6026568198")
local Weapon = Library:Tab("Weapons","rbxassetid://9606626034")
local Setting = Library:Tab("Settings","rbxassetid://9606644121")
local Stats = Library:Tab("Stats","rbxassetid://7040410130")
local P = Library:Tab("Player","rbxassetid://7251993295")
local Race = Library:Tab("Race V4","rbxassetid://8834748103")
local Teleport = Library:Tab("Teleport","rbxassetid://6035190846")
local Dungeon = Library:Tab("Raid","rbxassetid://7044284832")
local Esp = Library:Tab("Esp","rbxassetid://4483345998")
local Shop = Library:Tab("Shop","rbxassetid://6031265976")
local D = Library:Tab("Fruit","rbxassetid://6031265976")
local Op = Library:Tab("Status","rbxassetid://7040410130")
local Misc = Library:Tab("Misc","rbxassetid://6034509993")
--------------------------------------------------------------------


function EquipWeapon(ToolSe)
if not _G.NotAutoEquip then
if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
wait(.1)
game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
end
end
end
Main:Label("Join My discord For More Info!")

Main:Line()

Main:Button("Copy Discord Link",function()
 Update:Notification("Discord Link Copied")
 setclipboard("https://discord.gg/FZyeYGJvzk")
 end)
 
Main:Line()
if _G.Select_Weapon == nil then
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
if v.ToolTip == "Melee" then
if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
_G.Select_Weapon = tostring(v.Name)
end
end
end
end

WeaponList = {}

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") then
table.insert(WeaponList ,v.Name)
end
end
local SelectWeapona = Main:Dropdown("Select Weapon",WeaponList,function(value)
 _G.Select_Weapon = value
 end)

Main:Button("Refresh Weapon",function()
 SelectWeapona:Clear()
 for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
 SelectWeapona:Add(v.Name)
 end
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.click then
             pcall(function()
                game:GetService'VirtualUser':CaptureController()
			    game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
            end)
        end
    end)
end)

Main:Button("Stop Teleport",function()
  toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
  _G.Clip = false
  end)

Main:Toggle("Bypass Tp",false,function(value)
 _G.Bypass = value
end)

Main:Seperator("Main")

local FarmMethods = {"Normal Mode","Fast Mode","No Quest","Near Farm Mode"}

Main:Dropdown("Select Mode Farm",FarmMethods,function(value)
    _G.SelectModeFarm = value
end)

Main:Toggle("Auto Farm",false,function(value)
    _G.Auto_Farm_Level = value
    StopTween(_G.Auto_Farm_Level)
end)


Main:Seperator("Bones")

Main:Toggle("Auto Farm Bone",_G.Auto_Farm_Bone,function(value)
 _G.Auto_Farm_Bone = value
 StopTween(_G.Auto_Farm_Bone)
 end)

Main:Toggle("Auto Trade Bone",_G.Auto_Trade_Bone,function(value)
 _G.Auto_Trade_Bone = value
 end)

spawn(function()
 while wait(.1) do
 if _G.Auto_Trade_Bone then
 local args = {
  [1] = "Bones",
  [2] = "Buy",
  [3] = 1,
  [4] = 1
 }

 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 end
 end
 end)
 



Main:Toggle("Auto Farm Ectoplasm",_G.Auto_Farm_Ectoplasm,function(value)
 _G.Auto_Farm_Ectoplasm = value
 StopTween(_G.Auto_Farm_Ectoplasm)
 end)
Race:Seperator("Mystic Island")

Race:Toggle("Auto Mystic Island",false,function(value)
 if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                           toTarget(game:GetService("Workspace").Map:FindFirstChild("MysticIsland").HumanoidRootPart.CFrame * CFrame.new(0,500,-100))
                    else
if _G.Mystichop then
Hop()
end
end
end)

Race:Toggle("Auto Mystic Island Hop",false,function(value)
 _G.Mystichop = value
end)


Main:Seperator("Mastery")
 
 Main:Toggle("Auto Farm BF Mastery",_G.AutoFarmFruitMastery,function(value)
  _G.AutoFarmFruitMastery = value
  StopTween(_G.AutoFarmFruitMastery)
  if _G.AutoFarmFruitMastery == false then
  UseSkill = false
  end
  end)
 
 spawn(function()
  while wait() do
  if _G.AutoFarmFruitMastery then
  pcall(function()
   local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
   if not string.find(QuestTitle, NameMon) then
   StartMagnet = false
   UseSkill = false
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
   end
   if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
   MasteryBFMagnetActive = false
   UseSkill = false
   CheckQuest()
   repeat task.wait()
   toTarget(CFrameQuest)
   until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarmFruitMastery
   if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
   wait(1.2)
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
   wait(0.5)
   end
   elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
   CheckQuest()
   if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
   if v.Name == Ms then
   if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
   HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
   repeat task.wait()
   if v.Humanoid.Health <= HealthMs then
   AutoHaki()
   EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
   toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
   v.HumanoidRootPart.CanCollide = false
   PosMonMasteryFruit = v.HumanoidRootPart.CFrame
   v.Humanoid.WalkSpeed = 0
   v.Head.CanCollide = false
   UseSkill = true
   else
    UseSkill = false
   AutoHaki()
   EquipWeapon(_G.Select_Weapon)
   toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(50,50,50)
   PosMonMasteryFruit = v.HumanoidRootPart.CFrame
   v.Humanoid.WalkSpeed = 0
   v.Head.CanCollide = false
   end
   StartMasteryFruitMagnet = true
   game:GetService'VirtualUser':CaptureController()
   game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
   until not _G.AutoFarmFruitMastery or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
   else
    UseSkill = false
   StartMasteryFruitMagnet = false
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
   end
   end
   end
   end
   else
    StartMasteryFruitMagnet = false
   UseSkill = false
   local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Ms)
   if Mob then
   toTarget(Mob.HumanoidRootPart.CFrame * MethodFarm)
   else
    if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
   game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
   task.wait()
   game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
   end
   end
   end
   end
   end)
  end
  end
  end)
 
 spawn(function()
  while wait() do
  if UseSkill then
  pcall(function()
   CheckQuest()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
   MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
   elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
   MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
   end
   if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
   if _G.SkillZ then
   local args = {
    [1] = PosMonMasteryFruit.Position
   }
   game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
   game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
   game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
   end
   if _G.SkillX then
   local args = {
    [1] = PosMonMasteryFruit.Position
   }
   game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
   game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
   game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
   end
   if _G.SkillC then
   local args = {
    [1] = PosMonMasteryFruit.Position
   }
   game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
   game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
   wait(2)
   game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
   end
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then
   if _G.SkillZ then
   local args = {
    [1] = PosMonMasteryFruit.Position
   }
   game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
   game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
   game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
   end
   if _G.SkillX then
   local args = {
    [1] = PosMonMasteryFruit.Position
   }
   game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
   game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
   game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
   end
   if _G.SkillC then
   local args = {
    [1] = PosMonMasteryFruit.Position
   }
   game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
   game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
   wait(2)
   game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
   end
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
   if _G.SkillZ and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1) then
   local args = {
    [1] = PosMonMasteryFruit.Position
   }
   game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
   game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
   game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
   end
   if _G.SkillX then
   local args = {
    [1] = PosMonMasteryFruit.Position
   }
   game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
   game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
   game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
   end
   if _G.SkillC then
   local args = {
    [1] = PosMonMasteryFruit.Position
   }
   game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
   game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
   game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
   end
   if _G.SkillV then
   local args = {
    [1] = PosMonMasteryFruit.Position
   }
   game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
   game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
   game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
   end
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
   if _G.SkillZ then
   local args = {
    [1] = PosMonMasteryFruit.Position
   }
   game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
   game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
   game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
   end
   if _G.SkillX then
   local args = {
    [1] = PosMonMasteryFruit.Position
   }
   game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
   game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
   game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
   end
   if _G.SkillC then
   local args = {
    [1] = PosMonMasteryFruit.Position
   }
   game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
   game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
   game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
   end
   if _G.SkillV then
   local args = {
    [1] = PosMonMasteryFruit.Position
   }
   game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
   game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
   game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
   end
   end
   end
   end)
  end
  end
  end)
 
 spawn(function()
  game:GetService("RunService").RenderStepped:Connect(function()
   pcall(function()
    if UseSkill then
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
    if v.Name == "NotificationTemplate" then
    if string.find(v.Text,"Skill locked!") then
    v:Destroy()
    end
    end
    end
    end
    end)
   end)
  end)
 
 spawn(function()
  pcall(function()
   game:GetService("RunService").RenderStepped:Connect(function()
    if UseSkill then
    local args = {
     [1] = PosMonMasteryFruit.Position
    }
    game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
    end
    end)
   end)
  end)
 
 Main:Toggle("Auto Farm Gun Mastery",_G.AutoFarmGunMastery,function(value)
  _G.AutoFarmGunMastery = value
  StopTween(_G.AutoFarmGunMastery)
  end)
 
 spawn(function()
  pcall(function()
   while wait() do
   if _G.AutoFarmGunMastery then
   local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
   if not string.find(QuestTitle, NameMon) then
   StartMagnet = false
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
   end
   if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
   StartMasteryGunMagnet = false
   CheckQuest()
   toTarget(CFrameQuest)
   if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
   wait(1.2)
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
   end
   elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
   CheckQuest()
   if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
   pcall(function()
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == Ms then
    repeat task.wait()
    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
    HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
    if v.Humanoid.Health <= HealthMs then
    EquipWeapon(SelectWeaponGun)
    toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
    v.Humanoid.WalkSpeed = 0
    v.HumanoidRootPart.CanCollide = false
    v.HumanoidRootPart.Size = Vector3.new(2,2,1)
    v.Head.CanCollide = false
    local args = {
     [1] = v.HumanoidRootPart.Position,
     [2] = v.HumanoidRootPart
    }
    game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
    else
     AutoHaki()
    EquipWeapon(_G.Select_Weapon)
    v.Humanoid.WalkSpeed = 0
    v.HumanoidRootPart.CanCollide = false
    v.Head.CanCollide = false
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end
    StartMasteryGunMagnet = true
    PosMonMasteryGun = v.HumanoidRootPart.CFrame
    else
     StartMasteryGunMagnet = false
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
    end
    until v.Humanoid.Health <= 0 or _G.AutoFarmGunMastery == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
    StartMasteryGunMagnet = false
    end
    end
    end)
   else
    StartMasteryGunMagnet = false
   local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Ms)
   if Mob then
   toTarget(Mob.HumanoidRootPart.CFrame * MethodFarm)
   else
    if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
   game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
   task.wait()
   game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
   end
   end
   end
   end
   end
   end
   end)
 end)
 function toTarget(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 360 then
        Speed = 1200
    elseif Distance < 1000 then
        Speed = 360
    elseif Distance < 360 then
        Speed = 1200
    elseif Distance >= 1000 then
        Speed = 360
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

 Main:Seperator("Settings Mastery")

if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
_G.Kill_At = 25
Main:Slider("Kill Health [For Mastery]",1,100,25,function(value)
 _G.Kill_At = value
end)
else
_G.Kill_At = 25
Main:Slider1("Kill Health [For Mastery]",1,100,25,function(value)
 _G.Kill_At = value
end)
end

Main:Toggle("Skill Z",true,function(value)
 _G.SkillZ = value
 end)


Main:Toggle("Skill X",true,function(value)
 _G.SkillX = value
 end)


Main:Toggle("Skill C",true,function(value)
 _G.SkillC = value
 end)


Main:Toggle("Skill V",true,function(value)
 _G.SkillV = value
 end)
    
Main:Seperator("Chest")

Main:Toggle("Auto Farm Chest (Tween)",false,function(t)

 _G.d = t
 local function HttpGet(url)
 return game:GetService("HttpService"):JSONDecode(htgetf(url))
 end
 game:GetService('RunService').Stepped:connect(function()
  if _G.d then
  zeroGrav(game.Players.LocalPlayer.Character.HumanoidRootPart)
  end
  end)


 function FindNearest(chests)
 local lowest = math.huge -- infinity
 local chest = nil
 for i,v in pairs(chests) do
 if v then
 local distance = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
 if distance < lowest then
 lowest = distance
 chest = v
 end
 end
 end
 return chest
 end

 game:GetService("ReplicatedStorage"):WaitForChild("Remotes")
 local TeleportService = game:GetService("TeleportService")
 while _G.d and wait() do
 local chests = {}
 for i,d in pairs(game:GetService("Workspace"):GetChildren()) do
 if string.find(d.Name, "Chest") ~= nil then
 table.insert(chests, d)
 end
 end
 if #chests == 0 then
 pcall(function()
  local d = HttpGet("https://www.roblox.com/games/getgameinstancesjson?placeId=" .. game.PlaceId .. "&startindex=0")
  local f = HttpGet("https://www.roblox.com/games/getgameinstancesjson?placeId=" .. game.PlaceId .. "&startindex=".. math.random(0,tonumber(d.TotalCollectionSize)))
  local c = f.Collection[math.random(1,#f.Collection)]
  game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, c.Guid)
  end)
 wait(0.5)
 end
 if game.Players.LocalPlayer.Team == nil then
 game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("SetTeam", "Marines")
 end
 if game.Players.LocalPlayer.Character then
 local close = FindNearest(chests)
 if close == nil then
 if game.VIPServerOwnerId == 0 then
 pcall(function()
  local d = HttpGet("https://www.roblox.com/games/getgameinstancesjson?placeId=" .. game.PlaceId .. "&startindex=0")
  local f = HttpGet("https://www.roblox.com/games/getgameinstancesjson?placeId=" .. game.PlaceId .. "&startindex=".. math.random(0,tonumber(d.TotalCollectionSize)))
  local c = f.Collection[math.random(1,#f.Collection)]
  game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, c.Guid)
  end)
 end
 wait(0.5)
 else
  ChestCFrame = CFrame.new(close.CFrame.X,close.CFrame.Y,close.CFrame.Z)
 toTarget(ChestCFrame,TweenSpeedChest)
 repeat task.wait() until d == nil or d.Parent == nil or _G.d == false
 end
 end
end
end)

Main:Toggle("Auto Farm Chest Hop",_G.AutoFarmChest_Hop,function(value)
 _G.AutoFarmChest_Hop = value
 end)

Main:Button("Instant Tp Chest (Risk)",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptpastebin/raw/main/ChestFarm"))()
 end)
Main:Seperator("Bosses")

local Boss = {}
    
    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
        if string.find(v.Name, "Boss") then
            if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                else
                table.insert(Boss, v.Name)
            end
        end
    end
    
    local BossName = Main:Dropdown("Select Boss",Boss,function(value)
       _G.Select_Boss = value
    end)
    
    Main:Button("Refresh Boss",function()
        BossName:Clear()
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            if string.find(v.Name, "Boss") then
                BossName:Add(v.Name) 
            end
        end
    end)

Main:Toggle("Auto Farm Boss",_G.Auto_Farm_Boss,function(value)
 _G.Auto_Farm_Boss = value
 end)

Main:Toggle("Auto Quest Boss",true,function(value)
 _G.Auto_Quest_Boss = value
end)

spawn(function()
	while wait() do
		if _G.Auto_Farm_Boss then
			pcall(function()
				CheckBossQuest()
				if MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss == "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss == "Order [Lv. 1250] [Raid Boss]" or MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
					if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == MsBoss then
								repeat task.wait()
									EquipWeapon(_G.Select_Weapon)
									AutoHaki()
									toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					else
						toTarget(CFrameBoss)
					end
				else
					if _G.Auto_Quest_Boss then
						CheckBossQuest()
						if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							repeat task.wait() toTarget(CFrameQuestBoss) until (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Farm_Boss
							if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(1.1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == MsBoss then
										repeat task.wait()
											if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
												EquipWeapon(_G.Select_Weapon)
												AutoHaki()
												toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))									
											else
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											end
										until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							else
								toTarget(CFrameBoss)
							end
						end
					else
						if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == MsBoss then
									repeat task.wait()
										EquipWeapon(_G.Select_Weapon)
										AutoHaki()
										toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))										
									until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						else
							toTarget(CFrameBoss)
						end
					end
				end
			end)
		end
	end
end)

Main:Toggle("Auto Farm All Boss",_G.Auto_Farm_All_Boss,function(value)
 _G.Auto_Farm_All_Boss = value
StopTween(_G.Auto_Farm_All_Boss)
end)

spawn(function()
	while wait() do
		if _G.Auto_Farm_All_Boss then
			pcall(function()
				for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
					if string.find(v.Name,"Boss") then
						repeat task.wait()
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
								toTarget(v.HumanoidRootPart.CFrame)
							elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
								AutoHaki()
								EquipWeapon(_G.Select_Weapon)
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(80,80,80)
								toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						until v.Humanoid.Health <= 0 or _G.Auto_Farm_All_Boss == false or not v.Parent
					end
				end
			end)
		end
	end
end)

Main:Seperator("Materials")

if World1 then

Main:Toggle("Auto Farm Fish Tail",_G.Auto_Farm_Fish_Tail,function(value)
 _G.Auto_Farm_Fish_Tail = value
 StopTween(_G.Auto_Farm_Fish_Tail)
 end)

spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Fish_Tail and StartMagnetFishTailMon and (v.Name == "Fishman Warrior [Lv. 375]" or v.Name == "Fishman Commando [Lv. 400]") and (v.HumanoidRootPart.Position - PosMonFishTail.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonFishTail
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(50,50,50)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Farm_Fish_Tail and World1 then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Warrior [Lv. 375]") or game:GetService("Workspace").Enemies:FindFirstChild("Fishman Commando [Lv. 400]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Fishman Warrior [Lv. 375]" or v.Name == "Fishman Commando [Lv. 400]" then
  if v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  StartMagnetFishTailMon = true
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
  PosMonFishTail = v.HumanoidRootPart.CFrame
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Farm_Fish_Tail == false or not v.Parent or v.Humanoid.Health <= 0
  end
  end
  end
  else
   StartMagnetFishTailMon = false
  local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
  if Distance > 20000 then
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
  end
  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if v.Name == "Fishman Warrior [Lv. 375]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  elseif v.Name == "Fishman Commando [Lv. 400]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  end
  end
  end
  end)
 end
 end
 end)

Main:Toggle("Auto Farm Magma Ore",_G.Auto_Farm_Magma_Ore,function(value)
 _G.Auto_Farm_Magma_Ore = value
 StopTween(_G.Auto_Farm_Magma_Ore)
 end)


spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Magma_Ore and StartMagnetMagmaOreMon and (v.Name == "Military Soldier [Lv. 300]" or v.Name == "Military Spy [Lv. 325]") and (v.HumanoidRootPart.Position - PosMonMagmaOre.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonMagmaOre
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(50,50,50)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Farm_Magma_Ore and World1 then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Military Soldier [Lv. 300]") or game:GetService("Workspace").Enemies:FindFirstChild("Military Spy [Lv. 325]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Military Soldier [Lv. 300]" or v.Name == "Military Spy [Lv. 325]" then
  if v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  StartMagnetMagmaOreMon = true
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
  PosMonMagmaOre = v.HumanoidRootPart.CFrame
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Farm_Magma_Ore == false or not v.Parent or v.Humanoid.Health <= 0
  end
  end
  end
  else
   StartMagnetMagmaOreMon = false
  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if v.Name == "Military Soldier [Lv. 300]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  elseif v.Name == "Military Spy [Lv. 325]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  end
  end
  toTarget(CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984))
  end
  end)
 end
 end
 end)

Main:Toggle("Auto Farm Scrap and Leather",_G.Auto_Farm_Scrap_and_Leather,function(value)
 _G.Auto_Farm_Scrap_and_Leather = value
 StopTween(_G.Auto_Farm_Scrap_and_Leather)
 end)


spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Scrap_and_Leather and StartMagnetScrapleatherMon and (v.Name == "Pirate [Lv. 35]" or v.Name == "Brute [Lv. 45]") and (v.HumanoidRootPart.Position - PosMonScrapleather.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonScrapleather
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(50,50,50)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Farm_Scrap_and_Leather and World1 then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Pirate [Lv. 35]") or game:GetService("Workspace").Enemies:FindFirstChild("Brute [Lv. 45]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Pirate [Lv. 35]" or v.Name == "Brute [Lv. 45]" then
  if v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  StartMagnetScrapleatherMon = true
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
  PosMonScrapleather = v.HumanoidRootPart.CFrame
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Farm_Scrap_and_Leather == false or not v.Parent or v.Humanoid.Health <= 0
  end
  end
  end
  else
   StartMagnetScrapleatherMon = false
  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if v.Name == "Pirate [Lv. 35]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  elseif v.Name == "Brute [Lv. 45]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  end
  end
  toTarget(CFrame.new(-1182.3310546875, 60.88254928588867, 4049.5380859375))
  end
  end)
 end
 end
 end)

Main:Toggle("Auto Farm Angel Wing",_G.Auto_Farm_Angel_Wing,function(value)
 _G.Auto_Farm_Angel_Wing = value
 StopTween(_G.Auto_Farm_Angel_Wing)
 end)

spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Angel_Wing and StartMagnetAngelWingMon and (v.Name == "Royal Squad [Lv. 525]" or v.Name == "Royal Soldier [Lv. 550]") and (v.HumanoidRootPart.Position - PosMonAngelWing.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonAngelWing
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(50,50,50)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Farm_Angel_Wing and World1 then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad [Lv. 525]") or game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier [Lv. 550]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Royal Squad [Lv. 525]" or v.Name == "Royal Soldier [Lv. 550]" then
  if v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  StartMagnetAngelWingMon = true
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
  PosMonAngelWing = v.HumanoidRootPart.CFrame
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Farm_Angel_Wing == false or not v.Parent or v.Humanoid.Health <= 0
  end
  end
  end
  else
   StartMagnetAngelWingMon = false
  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if v.Name == "Royal Squad [Lv. 525]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  elseif v.Name == "Royal Soldier [Lv. 550]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  end
  end
  toTarget(CFrame.new(-7957.654296875, 5644.396484375, -1457.434814453125))
  end
  end)
 end
 end
 end)
end

if World2 then

Main:Toggle("Auto Farm Scrap and Leather",_G.Auto_Farm_Scrap_and_Leather,function(value)
 _G.Auto_Farm_Scrap_and_Leather = value
 StopTween(_G.Auto_Farm_Scrap_and_Leather)
 end)

spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Scrap_and_Leather and StartMagnetScrapleatherMon and v.Name == "Mercenary [Lv. 725]" and (v.HumanoidRootPart.Position - PosMonScrapleather.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonScrapleather
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(50,50,50)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Farm_Scrap_and_Leather and World2 then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Mercenary [Lv. 725]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Mercenary [Lv. 725]" then
  if v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  StartMagnetScrapleatherMon = true
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
  PosMonScrapleather = v.HumanoidRootPart.CFrame
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Farm_Scrap_and_Leather == false or not v.Parent or v.Humanoid.Health <= 0
  end
  end
  end
  else
   StartMagnetScrapleatherMon = false
  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if v.Name == "Mercenary [Lv. 725]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  end
  end
  toTarget(CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971))
  end
  end)
 end
 end
 end)

Main:Toggle("Auto Farm Radioactive",_G.Auto_Farm_Radioactive,function(value)
 _G.Auto_Farm_Radioactive = value
 StopTween(_G.Auto_Farm_Radioactive)
 end)

spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Radioactive and StartMagnetRadioactive and v.Name == "Factory Staff [Lv. 800]" and (v.HumanoidRootPart.Position - PosMonRadioactive.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonRadioactive
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(50,50,50)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Farm_Radioactive and World2 then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff [Lv. 800]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Factory Staff [Lv. 800]" then
  if v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  StartMagnetRadioactive = true
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
  PosMonRadioactive = v.HumanoidRootPart.CFrame
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Farm_Radioactive == false or not v.Parent or v.Humanoid.Health <= 0
  end
  end
  end
  else
   StartMagnetRadioactive = false
  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if v.Name == "Factory Staff [Lv. 800]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  end
  end
  toTarget(CFrame.new(262.9140625, 72.95976257324219, -89.57562255859375))
  end
  end)
 end
 end
 end)

Main:Toggle("Auto Farm Vampire Fang",_G.Auto_Farm_Vampire_Fang,function(value)
 _G.Auto_Farm_Vampire_Fang = value
 StopTween(_G.Auto_Farm_Vampire_Fang)
 end)


spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Vampire_Fang and StartMagnetVampireFang and v.Name == "Vampire [Lv. 975]" and (v.HumanoidRootPart.Position - PosMonVampireFang.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonVampireFang
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(50,50,50)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Farm_Vampire_Fang and World2 then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Vampire [Lv. 975]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Vampire [Lv. 975]" then
  if v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  StartMagnetVampireFang = true
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
  PosMonVampireFang = v.HumanoidRootPart.CFrame
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Farm_Vampire_Fang == false or not v.Parent or v.Humanoid.Health <= 0
  end
  end
  end
  else
   StartMagnetRadioactive = false
  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if v.Name == "Vampire [Lv. 975]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  end
  end
  toTarget(CFrame.new(-6041.29248046875, 6.402710914611816, -1304.63330078125))
  end
  end)
 end
 end
 end)

Main:Toggle("Auto Farm Magma Ore",_G.Auto_Farm_Magma_Ore,function(value)
 _G.Auto_Farm_Magma_Ore = value
 StopTween(_G.Auto_Farm_Magma_Ore)
 end)

spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Magma_Ore and StartMagnetMagmaOreMon and (v.Name == "Magma Ninja [Lv. 1175]" or v.Name == "Lava Pirate [Lv. 1200]") and (v.HumanoidRootPart.Position - PosMonMagmaOre.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonMagmaOre
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(50,50,50)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Farm_Magma_Ore and World2 then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Magma Ninja [Lv. 1175]") or game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Magma Ninja [Lv. 1175]" or v.Name == "Lava Pirate [Lv. 1200]" then
  if v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  StartMagnetMagmaOreMon = true
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
  PosMonMagmaOre = v.HumanoidRootPart.CFrame
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Farm_Magma_Ore == false or not v.Parent or v.Humanoid.Health <= 0
  end
  end
  end
  else
   StartMagnetMagmaOreMon = false
  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if v.Name == "Magma Ninja [Lv. 1175]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  elseif v.Name == "Lava Pirate [Lv. 1200]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  end
  end
  toTarget(CFrame.new(-5525.38037109375, 17.856924057006836, -5577.93359375))
  end
  end)
 end
 end
 end)

Main:Toggle("Auto Farm Mystic Droplet",_G.Auto_Farm_Mystic_Droplet,function(value)
 _G.Auto_Farm_Mystic_Droplet = value
 StopTween(_G.Auto_Farm_Mystic_Droplet)
 end)


spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Mystic_Droplet and StartMagnetMysticDropletMon and (v.Name == "Sea Soldier [Lv. 1425]") and (v.HumanoidRootPart.Position - PosMonMysticDroplet.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonMysticDroplet
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(50,50,50)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Farm_Mystic_Droplet and World2 then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Sea Soldier [Lv. 1425]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Sea Soldier [Lv. 1425]" then
  if v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  StartMagnetMysticDropletMon = true
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
  PosMonMysticDroplet = v.HumanoidRootPart.CFrame
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Farm_Mystic_Droplet == false or not v.Parent or v.Humanoid.Health <= 0
  end
  end
  end
  else
   StartMagnetMysticDropletMon = false
  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if v.Name == "Sea Soldier [Lv. 1425]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  end
  end
  toTarget(CFrame.new(-2955.86328125, 15.63549518585205, -9725.2802734375))
  end
  end)
 end
 end
 end)
end

if World3 then

Main:Toggle("Auto Farm Scrap and Leather",_G.Auto_Farm_Scrap_and_Leather,function(value)
 _G.Auto_Farm_Scrap_and_Leather = value
 StopTween(_G.Auto_Farm_Scrap_and_Leather)
 end)


spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Scrap_and_Leather and StartMagnetScrapleatherMon and v.Name == "Pirate Millionaire [Lv. 1500]" and (v.HumanoidRootPart.Position - PosMonScrapleather.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonScrapleather
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(50,50,50)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Farm_Scrap_and_Leather and World3 then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Pirate Millionaire [Lv. 1500]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Pirate Millionaire [Lv. 1500]" then
  if v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  StartMagnetScrapleatherMon = true
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
  PosMonScrapleather = v.HumanoidRootPart.CFrame
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Farm_Scrap_and_Leather == false or not v.Parent or v.Humanoid.Health <= 0
  end
  end
  end
  else
   StartMagnetScrapleatherMon = false
  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if v.Name == "Pirate Millionaire [Lv. 1500]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  end
  end
  toTarget(CFrame.new(-275.8073425292969, 44.80481719970703, 5598.36865234375))
  end
  end)
 end
 end
 end)

Main:Toggle("Auto Farm GunPowder",_G.Auto_Farm_GunPowder,function(value)
 _G.Auto_Farm_GunPowder = value
 StopTween(_G.Auto_Farm_GunPowder)
 end)

spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_GunPowder and StartMagnetGunPowderMon and v.Name == "Pistol Billionaire [Lv. 1525]" and (v.HumanoidRootPart.Position - PosMonGunPowder.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonGunPowder
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(50,50,50)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Farm_GunPowder and World3 then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire [Lv. 1525]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Pistol Billionaire [Lv. 1525]" then
  if v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  StartMagnetGunPowderMon = true
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
  PosMonGunPowder = v.HumanoidRootPart.CFrame
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Farm_GunPowder == false or not v.Parent or v.Humanoid.Health <= 0
  end
  end
  end
  else
   StartMagnetGunPowderMon = false
  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if v.Name == "Pistol Billionaire [Lv. 1525]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  end
  end
  toTarget(CFrame.new(-455.71466064453125, 73.72992706298828, 5929.4609375))
  end
  end)
 end
 end
 end)

Main:Toggle("Auto Farm Dragon Scales",_G.Auto_Farm_Dragon_Scales,function(value)
 _G.Auto_Farm_Dragon_Scales = value
 StopTween(_G.Auto_Farm_Dragon_Scales)
 end)


spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Dragon_Scales and StartMagnetDragonScalesMon and (v.Name == "Dragon Crew Warrior [Lv. 1575]") and (v.HumanoidRootPart.Position - PosMonDragonScales.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonDragonScales
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(50,50,50)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Farm_Dragon_Scales and World3 then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior [Lv. 1575]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Dragon Crew Warrior [Lv. 1575]" then
  if v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  StartMagnetDragonScalesMon = true
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
  PosMonDragonScales = v.HumanoidRootPart.CFrame
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Farm_Fish_Tail == false or not v.Parent or v.Humanoid.Health <= 0
  end
  end
  end
  else
   StartMagnetDragonScalesMon = false
  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if v.Name == "Dragon Crew Warrior [Lv. 1575]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  end
  end
  toTarget(CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516))
  end
  end)
 end
 end
 end)

Main:Toggle("Auto Farm Fish Tail",_G.Auto_Farm_Fish_Tail,function(value)
 _G.Auto_Farm_Fish_Tail = value
 StopTween(_G.Auto_Farm_Fish_Tail)
 end)


spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Fish_Tail and StartMagnetFishTailMon and (v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]") and (v.HumanoidRootPart.Position - PosMonFishTail.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonFishTail
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(50,50,50)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Farm_Fish_Tail and World3 then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Raider [Lv. 1775]") or game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain [Lv. 1800]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]" then
  if v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  StartMagnetFishTailMon = true
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
  PosMonFishTail = v.HumanoidRootPart.CFrame
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Farm_Fish_Tail == false or not v.Parent or v.Humanoid.Health <= 0
  end
  end
  end
  else
   StartMagnetFishTailMon = false
  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if v.Name == "Fishman Raider [Lv. 1775]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  elseif v.Name == "Fishman Captain [Lv. 1800]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  end
  end
  toTarget(CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125))
  end
  end)
 end
 end
 end)

Main:Toggle("Auto Farm Mini Tusk",_G.Auto_Farm_Mini_Tusk,function(value)
 _G.Auto_Farm_Mini_Tusk = value
 StopTween(_G.Auto_Farm_Mini_Tusk)
 end)


spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Mini_Tusk and StartMagnetMiniTuskMon and v.Name == "Mythological Pirate [Lv. 1850]" and (v.HumanoidRootPart.Position - PosMonMiniTusk.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonMiniTusk
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(50,50,50)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Farm_Mini_Tusk and World3 then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate [Lv. 1850]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Mythological Pirate [Lv. 1850]" then
  if v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  StartMagnetMiniTuskMon = true
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
  PosMonMiniTusk = v.HumanoidRootPart.CFrame
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Farm_Mini_Tusk == false or not v.Parent or v.Humanoid.Health <= 0
  end
  end
  end
  else
   StartMagnetMiniTuskMon = false
  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if v.Name == "Mythological Pirate [Lv. 1850]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  end
  end
  toTarget(CFrame.new(-13508.68359375, 582.6758422851562, -6986.06298828125))
  end
  end)
 end
 end
 end)

Main:Toggle("Auto Farm Conjured Cocoa",_G.Auto_Farm_Conjured_Cocoa,function(value)
 _G.Auto_Farm_Conjured_Cocoa = value
 StopTween(_G.Auto_Farm_Conjured_Cocoa)
 end)


spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Conjured_Cocoa and StartMagnetConjuredCocoaMon and (v.Name == "Cocoa Warrior [Lv. 2300]" or v.Name == "Chocolate Bar Battler [Lv. 2325]") and (v.HumanoidRootPart.Position - PosMonConjuredCocoa.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonConjuredCocoa
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(50,50,50)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Farm_Conjured_Cocoa and World3 then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior [Lv. 2300]") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler [Lv. 2325]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Cocoa Warrior [Lv. 2300]" or v.Name == "Chocolate Bar Battler [Lv. 2325]" then
  if v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  StartMagnetConjuredCocoaMon = true
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
  PosMonConjuredCocoa = v.HumanoidRootPart.CFrame
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Farm_Conjured_Cocoa == false or not v.Parent or v.Humanoid.Health <= 0
  end
  end
  end
  else
   StartMagnetConjuredCocoaMon = false
  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if v.Name == "Cocoa Warrior [Lv. 2300]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  elseif v.Name == "Chocolate Bar Battler [Lv. 2325]" then
  toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
  end
  end
  toTarget(CFrame.new(402.7189025878906, 81.06050109863281, -12259.54296875))
  end
  end)
 end
 end
 end)
end

Code = {
 "EXP_5B",
 "CONTROL",
 "UPDATE11",
 "XMASEXP",
 "1BILLION",
 "ShutDownFix2",
 "UPD14",
 "STRAWHATMAINE",
 "TantaiGaming",
 "Colosseum",
 "Axiore",
 "Sub2Daigrock",
 "Sky Island 3",
 "Sub2OfficialNoobie",
 "SUB2NOOBMASTER123",
 "THEGREATACE",
 "Fountain City",
 "BIGNEWS",
 "FUDD10",
 "SUB2GAMERROBOT_EXP1",
 "UPD15",
 "2BILLION",
 "UPD16",
 "3BVISITS",
 "fudd10_v2",
 "Starcodeheo",
 "Magicbus",
 "JCWK",
 "Bluxxy",
 "Sub2Fer999",
 "Enyu_is_Pro"
}





Main:Button("Redeem All Code",function()
 for i,v in pairs(Code) do
 UseCode(v)
 end
 end)
 Race:Seperator("Fake Race V4")
 
 
 Race:Button("Mink Fake Transform",function()
     require(game:GetService("ReplicatedStorage").Notification).new("Mink V4! / By : Sonic Hub"):Display();
     wait()
     setthreadcontext(5)
     
     local ReplicatedStorage = game:GetService("ReplicatedStorage")
     
     local Player = game:GetService("Players").LocalPlayer
     
     local ArgsTransform = {
         Character = game.Players.LocalPlayer.Character,
         CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
         Color1 = Color3.fromRGB(102, 255, 153),
         Color2 = Color3.fromRGB(102, 255, 153),
         Color3 = Color3.fromRGB(102, 255, 153),
     }
     
     Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
     
     delay(1, function()
         pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
     end)
     
     end)
     Race:Button("Fishman Fake Transform",function()
     require(game:GetService("ReplicatedStorage").Notification).new("Fishman V4! / By : Sonic Hub "):Display();
     wait()
     setthreadcontext(5)
     
     local ReplicatedStorage = game:GetService("ReplicatedStorage")
     
     local Player = game:GetService("Players").LocalPlayer
     
     local ArgsTransform = {
         Character = game.Players.LocalPlayer.Character,
         CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
         Color1 = Color3.fromRGB(5, 115, 166),
         Color2 = Color3.fromRGB(5, 115, 166),
         Color3 = Color3.fromRGB(5, 115, 166),
     }
     
     Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
     
     delay(1, function()
         pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
     end)
     
     end)
     Race:Button("Skypeian Fake Transform",function()
     require(game:GetService("ReplicatedStorage").Notification).new("Skypeian V4! / By : Sonic Hub"):Display();
     wait()
     setthreadcontext(5)
     
     local ReplicatedStorage = game:GetService("ReplicatedStorage")
     
     local Player = game:GetService("Players").LocalPlayer
     
     local ArgsTransform = {
         Character = game.Players.LocalPlayer.Character,
         CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
         Color1 = Color3.fromRGB(222, 222, 0),
         Color2 = Color3.fromRGB(222, 222, 0),
         Color3 = Color3.fromRGB(222, 222, 0),
     }
     
     Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
     
     delay(1, function()
         pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
     end)
     
     end)
     Race:Button("Ghoul Fake Transform",function()
     require(game:GetService("ReplicatedStorage").Notification).new("Ghoul V4! / By : Sonic Hub"):Display();
     wait()
     setthreadcontext(5)
     
     local ReplicatedStorage = game:GetService("ReplicatedStorage")
     
     local Player = game:GetService("Players").LocalPlayer
     
     local ArgsTransform = {
         Character = game.Players.LocalPlayer.Character,
         CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
         Color1 = Color3.fromRGB(155, 155, 155),
         Color2 = Color3.fromRGB(0, 0, 0),
         Color3 = Color3.fromRGB(155, 155, 155),
     }
     
     Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
     
     delay(1, function()
         pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
     end)
     
     
     end)
     Race:Button("Cyborg Fake Transform",function()
     require(game:GetService("ReplicatedStorage").Notification).new("Cyborg V4! / By : Sonic Hub"):Display();
     wait()
     setthreadcontext(5)
     
     local ReplicatedStorage = game:GetService("ReplicatedStorage")
     
     local Player = game:GetService("Players").LocalPlayer
     
     local ArgsTransform = {
         Character = game.Players.LocalPlayer.Character,
         CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
         Color1 = Color3.fromRGB(166, 0, 111),
         Color2 = Color3.fromRGB(166, 0, 111),
         Color3 = Color3.fromRGB(166, 0, 111),
     }
     
     Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
     
     delay(1, function()
         pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
     end)
     
     end)
     Race:Button("Human Fake Transform",function()
     require(game:GetService("ReplicatedStorage").Notification).new("Human V4! / By : Sonic Hub"):Display();
     wait()
     setthreadcontext(5)
     
     local ReplicatedStorage = game:GetService("ReplicatedStorage")
     
     local Player = game:GetService("Players").LocalPlayer
     
     local ArgsTransform = {
         Character = game.Players.LocalPlayer.Character,
         CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
         Color1 = Color3.fromRGB(166, 0, 0),
         Color2 = Color3.fromRGB(166, 0, 0),
         Color3 = Color3.fromRGB(166, 0, 0),
     }
     
     Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
     
     delay(1, function()
         pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
     end)
     
     end)
 
 Race:Button("Fake Mink Dash Animation",function()
  local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
  local Player = game:GetService("Players").LocalPlayer
 
  local ArgsDash = {
   Character = Player.Character,
   Duration = .25,
   CFrame = Player.Character.HumanoidRootPart.CFrame,
  }
 
  local old; old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
   if self.Name == "CommE" then
   local args = {
    ...
   }
 
   if args[1] == "Dodge" then
   coroutine.wrap(function() require(ReplicatedStorage.Effect.Container.Shared.LightningTP)(ArgsDash) end)()
   end
   end
 
   return old(self, ...)
   end))
  end)
 Weapon:Seperator("Elite Hunter Quest")
 
 if World3 then

local Total_Elite_Hunter = Weapon:Label("Elite Hunter")

local Elite_Hunter_Status = Weapon:Label("Status")


	spawn(function()
		while wait() do
			pcall(function()
				if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
					Elite_Hunter_Status:Set("Status : Elite Spawn!")	
				else
					Elite_Hunter_Status:Set("Status : Elite Not Spawn")	
				end
			end)
		end
	end)

	spawn(function()
		while wait() do
			Total_Elite_Hunter:Set("Total Elite Hunter : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
		end
	end)
	
	Weapon:Toggle("Auto Elite Hunter",_G.Auto_Elite_Hunter,function(value)
 _G.Auto_Elite_Hunter = value
StopTween(_G.Auto_Elite_Hunter)
end)

	
	Weapon:Toggle("Auto Elite Hunter Hop",_G.Auto_Elite_Hunter_Hop,function(value)
 _G.Auto_Elite_Hunter_Hop = value
end)

	spawn(function()
		while wait() do
			if _G.Auto_Elite_Hunter and World3 then
				pcall(function()
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat task.wait()
												AutoHaki()
												EquipWeapon(_G.Select_Weapon)
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
												game:GetService("VirtualUser"):CaptureController()
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
												sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
											until _G.Auto_Elite_Hunter == false or v.Humanoid.Health <= 0 or not v.Parent
										end
									end
								end
							else
								if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
									toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * MethodFarm)
								elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
									toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * MethodFarm)
								elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
									toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * MethodFarm)
								end
							end                    
						end
					else
						if _G.Auto_Elite_Hunter_Hop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
							Hop()
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						end
					end
				end)
			end
		end
	end)
	
	Weapon:Seperator("Dough Boss")

local Mob_Kill_Cake_Prince = Weapon:Label("Total")

	spawn(function()
		while wait() do
			pcall(function()
				if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
					Mob_Kill_Cake_Prince:Set("Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).." : Kill More")
				elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
					Mob_Kill_Cake_Prince:Set("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).." : Kill More")
				elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
					Mob_Kill_Cake_Prince:Set("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." : More")
				else
					Mob_Kill_Cake_Prince:Set("Boss Is Spawned")
				end
			end)
		end
	end)

Weapon:Toggle("Auto Cake Prince",_G.Auto_Cake_Prince,function(value)
 _G.Auto_Cake_Prince = value
StopTween(_G.Auto_Cake_Prince)
end)
	
	
	
	Weapon:Toggle("Auto Open Dough Dungeon",_G.Auto_Open_Dough_Dungeon,function(value)
 _G.Auto_Open_Dough_Dungeon = value
StopTween(_G.Auto_Open_Dough_Dungeon)
end)
	
	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Auto_Open_Dough_Dungeon and StartCakeMagnet and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
						v.HumanoidRootPart.CFrame = POSCAKE
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end)
		end)
	end) 

	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Auto_Cake_Prince and StartCakeMagnet and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
						v.HumanoidRootPart.CFrame = POSCAKE
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end)
		end)
	end)

	spawn(function()
		while wait() do
			if _G.Auto_Cake_Prince then
				pcall(function()
					if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then   
						if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
								if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.Select_Weapon)
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										v.HumanoidRootPart.CanCollide = false
										toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until _G.Auto_Cake_Prince == false or not v.Parent or v.Humanoid.Health <= 0
								end    
							end    
						else
							toTarget(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
						end
					else
						if game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]")  then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
								if (v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Cookie Crafter [Lv. 2200]") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.Select_Weapon)
										StartCakeMagnet = true
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
										POSCAKE = v.HumanoidRootPart.CFrame
										toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until _G.Auto_Cake_Prince == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						else
							StartCakeMagnet = false
							toTarget(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
						end
					end
				end)
			end
		end
	end)
end



if World3 then

Weapon:Seperator("Dual Curse Katana")

Weapon:Toggle("Auto Cdk Quest",_G.AutoCdk,function(value)
 _G.AutoCdk = value
end)

spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoCdk then
					if GetMaterial("Alucard Fragment") == 0 then
						Auto_Quest_Yama_1 = true
						Auto_Quest_Yama_2 = false
						Auto_Quest_Yama_3 = false
						Auto_Quest_Tushita_1 = false
						Auto_Quest_Tushita_2 = false
						Auto_Quest_Tushita_3 = false
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
					elseif GetMaterial("Alucard Fragment") == 1 then
						Auto_Quest_Yama_1 = false
						Auto_Quest_Yama_2 = true
						Auto_Quest_Yama_3 = false
						Auto_Quest_Tushita_1 = false
						Auto_Quest_Tushita_2 = false
						Auto_Quest_Tushita_3 = false
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
					elseif GetMaterial("Alucard Fragment") == 2 then
						Auto_Quest_Yama_1 = false
						Auto_Quest_Yama_2 = false
						Auto_Quest_Yama_3 = true
						Auto_Quest_Tushita_1 = false
						Auto_Quest_Tushita_2 = false
						Auto_Quest_Tushita_3 = false
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
					elseif GetMaterial("Alucard Fragment") == 3 then
						Auto_Quest_Yama_1 = false
						Auto_Quest_Yama_2 = false
						Auto_Quest_Yama_3 = false
						Auto_Quest_Tushita_1 = true
						Auto_Quest_Tushita_2 = false
						Auto_Quest_Tushita_3 = false
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
					elseif GetMaterial("Alucard Fragment") == 4 then
						Auto_Quest_Yama_1 = false
						Auto_Quest_Yama_2 = false
						Auto_Quest_Yama_3 = false
						Auto_Quest_Tushita_1 = false
						Auto_Quest_Tushita_2 = true
						Auto_Quest_Tushita_3 = false
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
					elseif GetMaterial("Alucard Fragment") == 5 then
						Auto_Quest_Yama_1 = false
						Auto_Quest_Yama_2 = false
						Auto_Quest_Yama_3 = false
						Auto_Quest_Tushita_1 = false
						Auto_Quest_Tushita_2 = false
						Auto_Quest_Tushita_3 = true
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
					elseif GetMaterial("Alucard Fragment") == 6 then
						if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
							Auto_Quest_Yama_1 = false
							Auto_Quest_Yama_2 = false
							Auto_Quest_Yama_3 = false
							Auto_Quest_Tushita_1 = false
							Auto_Quest_Tushita_2 = false
							Auto_Quest_Tushita_3 = false
							if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Cursed Skeleton Boss [Lv. 2025] [Boss]" or v.Name == "Cursed Skeleton [Lv. 2200]" then
										if v.Humanoid.Health > 0 then
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
									end
								end
							end
						else
							if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
								wait(1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
								wait(1)
								toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
								wait(1.5)
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
								wait(1.5)
								toTarget(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
							else
								toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
							end   
						end
					end
				end
			end)
		end
	end)

	spawn(function()
		while wait() do
			if Auto_Quest_Yama_1 then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate [Lv. 1850]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Mythological Pirate [Lv. 1850]" then
								repeat task.wait()
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
								until _G.AutoCdk == false or Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_1 == false
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
							end
						end
					else
						toTarget(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
					end
				end)
			end
		end
	end)

	spawn(function()
		while wait() do
			pcall(function()
				if Auto_Quest_Yama_2 then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v:FindFirstChild("HazeESP") then
							v.HazeESP.Size = UDim2.new(50,50,50,50)
							v.HazeESP.MaxDistance = "inf"
						end
					end
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
						if v:FindFirstChild("HazeESP") then
							v.HazeESP.Size = UDim2.new(50,50,50,50)
							v.HazeESP.MaxDistance = "inf"
						end
					end
				end
			end)
		end
	end)

	spawn(function()
		while wait() do
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
						v.HumanoidRootPart.CFrame = PosMonsEsp
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
							local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
							vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
							vc.Velocity = Vector3.new(0, 0, 0)
						end
					end
				end
			end)
		end
	end)

	spawn(function()
		while wait() do
			if Auto_Quest_Yama_2 then 
				pcall(function() 
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v:FindFirstChild("HazeESP") then
							repeat task.wait()
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
									toTarget(y.HumanoidRootPart.CFrameMon * CFrame.new(0,20,0))
								else
									StartMagnet = true
									FastAttack = true
									if Auto_Buso then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then
										wait()
										EquipWeapon(_G.Select_Weapon)
									end
									PosMonsEsp = v.HumanoidRootPart.CFrame
									if not FastAttack then
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									if _G.Configs["Show Hitbox"] then
										v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
									else
										v.HumanoidRootPart.Transparency = 1
									end
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))								
								end      
							until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
						else
							for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
								if y:FindFirstChild("HazeESP") then
									if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
										toTarget(y.HumanoidRootPart.CFrameMon* CFrame.new(0,20,0))
									else
										toTarget(y.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
									end
								end
							end
						end
					end
				end)
			end
		end
	end)

	spawn(function()
		while wait() do
			if Auto_Quest_Yama_3 then
				pcall(function()
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then         
						_G.Main["Auto Farm Bone"] = false           
						toTarget(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
					elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
						repeat task.wait()
							if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Hell's Messenger [Lv. 2200] [Boss]" then
										if v.Humanoid.Health > 0 then
											repeat task.wait()
												StartMagnet = true
												FastAttack = true
												if Auto_Buso then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then
													wait()
													EquipWeapon(_G.Select_Weapon)
												end
												PosMonsEsp = v.HumanoidRootPart.CFrame
												if not FastAttack then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												if _G.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
											until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
										end
									end
								end
							else
								wait(5)
								toTarget(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
								wait(1.5)
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
								wait(1.5)        
								toTarget(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
								wait(1.5)
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
								wait(1.5)     
								toTarget(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
								wait(1.5)
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
								wait(1.5)     
								toTarget(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
							end
						until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
					else
						if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" then
										if v.Humanoid.Health > 0 then
											repeat task.wait()
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
											until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
										end
									end
								end
							else
								toTarget(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
							end
						else
							_G.Main["Auto Farm Bone"] = true
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
						end
					end
				end)
			end
		end
	end)

	spawn(function() 
		while wait() do
			if Auto_Quest_Tushita_1 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
			end
		end
	end)

	spawn(function()
		while wait() do
			if Auto_Quest_Tushita_1 then
				toTarget(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
				wait(5)
				toTarget(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
				wait(5)
				toTarget(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))    
			end
		end
	end)

	spawn(function()
		while wait() do
			if Auto_Quest_Tushita_2 then
				pcall(function()
					if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
									repeat task.wait()
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
								end
							end
						end
					else
						toTarget(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
					end
				end)
			end
		end
	end)

	spawn(function()
		while wait() do
			if Auto_Quest_Tushita_3 then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
									if v.Humanoid.Health > 0 then
										repeat task.wait()
											if Auto_Buso then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then
												wait()
												EquipWeapon(_G.Select_Weapon)
											end
											if not FastAttack then
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											if _G.Configs["Show Hitbox"] then
												v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
											else
												v.HumanoidRootPart.Transparency = 1
											end
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
										until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
									end
								end
							end
						else
							toTarget(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
						end
					elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
						repeat task.wait()
							if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Heaven's Guardian [Lv. 2200] [Boss]" then
										if v.Humanoid.Health > 0 then
											repeat task.wait()
												if Auto_Buso then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then
													wait()
													EquipWeapon(_G.Select_Weapon)
												end
												if not FastAttack then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												if _G.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
											until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
										end
									end
								end
							else
								wait(5)
								toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
								wait(1.5)
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
								wait(1.5)        
								toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
								wait(1.5)
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
								wait(1.5)     
								toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
								wait(1.5)
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
								wait(1.5)     
								toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
							end
						until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or GetMaterial("Alucard Fragment") == 6
					else
						Hop()
					end
				end)
			end
		end
	end)
	end

if World1 then

Weapon:Seperator("Auto Saber")

Weapon:Toggle("Auto Saber",_G.Auto_Saber,function(value)
 _G.Auto_Saber = value
 StopTween(_G.Auto_Saber)
end)

	
	Weapon:Toggle("Auto Saber Hop",_G.Auto_Saber_Hop,function(value)
 _G.Auto_Saber_Hop = value
end)


	spawn(function()
		while wait() do
			if _G.Auto_Saber then
				if game.Players.localPlayer.Data.Level.Value < 200 then
	
				else
					if game.Workspace.Map.Jungle.Final.Part.CanCollide == false then
						if _G.Auto_Saber and game.ReplicatedStorage:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
							if game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Saber Expert [Lv. 200] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat task.wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then
													Farmtween:Stop()
												end
												AutoHaki()
												EquipWeapon(_G.Select_Weapon)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
										until not _G.Auto_Saber or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							else
								Questtween = toTarget(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
								if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Questtween then
										Questtween:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055, 0.885240912, 3.52892613e-08, 0.465132833, -6.60881128e-09, 1, -6.32913171e-08, -0.465132833, 5.29540891e-08, 0.885240912)
								end
							end
						else
							if _G.Auto_Saber_Hop then
								Hop()
							end
						end
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") and game.Players.localPlayer.Data.Level.Value >= 200 then
						EquipWeapon("Relic")
						wait(0.5)
						Questtween = toTarget(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
						if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
							if Questtween then
								Questtween:Stop()
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055, 0.885240912, 3.52892613e-08, 0.465132833, -6.60881128e-09, 1, -6.32913171e-08, -0.465132833, 5.29540891e-08, 0.885240912)
						end
					else
						if Workspace.Map.Jungle.QuestPlates.Door.CanCollide == false then
							if game.Workspace.Map.Desert.Burn.Part.CanCollide == false then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") == 0 then
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
										if game.Workspace.Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if _G.Auto_Saber and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Mob Leader [Lv. 120] [Boss]" then
													repeat
														pcall(function() wait() 
															if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
															elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																if Farmtween then
																	Farmtween:Stop()
																end
																AutoHaki()
																EquipWeapon(_G.Select_Weapon)
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	local args = {
																		[1] = "Buso"
																	}
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
																end
																game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															end
														end)
													until not _G.Auto_Saber or not v.Parent or v.Humanoid.Health <= 0
												end
											end
										else
											Questtween = toTarget(CFrame.new(-2848.59399, 7.4272871, 5342.44043).Position,CFrame.new(-2848.59399, 7.4272871, 5342.44043))
											if (CFrame.new(-2848.59399, 7.4272871, 5342.44043).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Questtween then
													Questtween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.928248107)
											end
										end
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
										if game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") then
											EquipWeapon("Relic")
											wait(0.5)
											Questtween = toTarget(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
											if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Questtween then
													Questtween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055)
											end
										else
											Questtween = toTarget(CFrame.new(-910.979736, 13.7520342, 4078.14624).Position,CFrame.new(-910.979736, 13.7520342, 4078.14624))
											if (CFrame.new(-910.979736, 13.7520342, 4078.14624).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Questtween then
													Questtween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.979736, 13.7520342, 4078.14624, 0.00685182028, -1.53155766e-09, -0.999976516, 9.15205245e-09, 1, -1.46888401e-09, 0.999976516, -9.14177267e-09, 0.00685182028)
												wait(.5)
												local args = {
													[1] = "ProQuestProgress",
													[2] = "RichSon"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
										end
									else
										Questtween = toTarget(CFrame.new(-910.979736, 13.7520342, 4078.14624).Position,CFrame.new(-910.979736, 13.7520342, 4078.14624))
										if (CFrame.new(-910.979736, 13.7520342, 4078.14624).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Questtween then
												Questtween:Stop()
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.979736, 13.7520342, 4078.14624)
											local args = {
												[1] = "ProQuestProgress",
												[2] = "RichSon"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
									end
								else
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Cup") or game.Players.LocalPlayer.Character:FindFirstChild("Cup") then
										EquipWeapon("Cup")
										if game.Players.LocalPlayer.Character.Cup.Handle:FindFirstChild("TouchInterest") then
											Questtween = toTarget(CFrame.new(1397.229, 37.3480148, -1320.85217).Position,CFrame.new(1397.229, 37.3480148, -1320.85217))
											if (CFrame.new(1397.229, 37.3480148, -1320.85217).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Questtween then
													Questtween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1397.229, 37.3480148, -1320.85217, -0.11285457, 2.01368788e-08, 0.993611455, 1.91641178e-07, 1, 1.50028845e-09, -0.993611455, 1.90586206e-07, -0.11285457)
											end
										else
											wait(0.5)
											if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
												local args = {
													[1] = "ProQuestProgress",
													[2] = "SickMan"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
										end
									else
										Questtween = toTarget(game.Workspace.Map.Desert.Cup.Position,game.Workspace.Map.Desert.Cup.CFrame)
										if (game.Workspace.Map.Desert.Cup.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Questtween then
												Questtween:Stop()
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Desert.Cup.CFrame
										end
										-- firetouchinterest(game.Workspace.Map.Desert.Cup.TouchInterest,game.Players.LocalPlayer.Character.Head, 1)
									end
								end
							else
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
									EquipWeapon("Torch")
									Questtween = toTarget(CFrame.new(1114.87708, 4.9214654, 4349.8501).Position,CFrame.new(1114.87708, 4.9214654, 4349.8501))
									if (CFrame.new(1114.87708, 4.9214654, 4349.8501).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Questtween then
											Questtween:Stop()
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.87708, 4.9214654, 4349.8501, -0.612586915, -9.68697833e-08, 0.790403247, -1.2634203e-07, 1, 2.4638446e-08, -0.790403247, -8.47679615e-08, -0.612586915)
									end
								else
									Questtween = toTarget(CFrame.new(-1610.00757, 11.5049858, 164.001587).Position,CFrame.new(-1610.00757, 11.5049858, 164.001587))
									if (CFrame.new(-1610.00757, 11.5049858, 164.001587).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Questtween then
											Questtween:Stop()
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408)
									end
								end
							end
						else
							for i,v in pairs(Workspace.Map.Jungle.QuestPlates:GetChildren()) do
								if v:IsA("Model") then wait()
									if v.Button.BrickColor ~= BrickColor.new("Camo") then
										repeat task.wait()
											Questtween = toTarget(v.Button.Position,v.Button.CFrame)
											if (v.Button.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if Questtween then
													Questtween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Button.CFrame
											end
										until not _G.Auto_Saber or v.Button.BrickColor == BrickColor.new("Camo")
									end
								end
							end    
						end
					end
				end 
			end
		end
	end)
	
	Weapon:Seperator("Pole")
	
	Weapon:Toggle("Auto Pole V1",_G.Auto_Pole_Hop,function(value)
 _G.Auto_Pole = value
StopTween(_G.Auto_Pole)
end)


	spawn(function()
		while wait() do
			pcall(function()
				if _G.Auto_Pole and game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]") or game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
					if game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if _G.Auto_Pole and v.Name == "Thunder God [Lv. 575] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat task.wait()  
									AutoHaki()
									EquipWeapon(_G.Select_Weapon)
									toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until not _G.Auto_Pole or v.Humanoid.Health <= 0 or not v.Parent
							end
						end
					else
						toTarget(CFrame.new(-7900.66406, 5606.90918, -2267.46436))
					end
				else
					if _G.Auto_Pole_Hop then
						Hop()
					end
				end
			end)
		end
	end)

elseif World2 then

Weapon:Toggle("Auto Factory Farm",_G.Auto_Factory_Farm,function(value)
 _G.Auto_Factory_Farm = value
StopTween(_G.Auto_Factory_Farm)
end)

	spawn(function()
		while wait() do
			if _G.Auto_Factory_Farm then
				pcall(function()
					if game.Workspace.Enemies:FindFirstChild("Core") then
						_G.FactoryCore = true
						_G.Auto_Farm_Level = false
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if _G.FactoryCore and v.Name == "Core" and v.Humanoid.Health > 0 then
								repeat task.wait()
									AutoHaki()
									EquipWeapon(_G.Select_Weapon)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,10))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until not _G.FactoryCore or v.Humanoid.Health <= 0 or _G.Auto_Factory_Farm == false
							end
						end
					elseif game.ReplicatedStorage:FindFirstChild("Core") and game.ReplicatedStorage:FindFirstChild("Core"):FindFirstChild("Humanoid") then
						_G.FactoryCore = true
						_G.Auto_Farm_Level = false
						toTarget(CFrame.new(502.7349853515625, 143.0749053955078, -379.078125))
					elseif _G.Auto_Farm_Level then
						_G.FactoryCore = false
						_G.Auto_Farm_Level = true
					end
				end)
			end
		end
	end)
	
		Weapon:Seperator("Rengoko")

	Weapon:Toggle("Auto Rengoku",_G.Auto_Rengoku,function(value)
 _G.Auto_Rengoku = value
StopTween(_G.Auto_Rengoku)
end)


	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Auto_Rengoku and StartRengokuMagnet and (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and (v.HumanoidRootPart.Position - RengokuMon.Position).magnitude <= 350 then
						v.HumanoidRootPart.CFrame = RengokuMon
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end)
		end)
	end)

	spawn(function()
		while wait() do
			if _G.Auto_Rengoku then
				pcall(function()
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
						EquipWeapon("Hidden Key")
						toTarget(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
					elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
								repeat task.wait()
									AutoHaki()
									EquipWeapon(_G.Select_Weapon)
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(50,50,50)
									RengokuMon = v.HumanoidRootPart.CFrame
									toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									StartRengokuMagnet = true
								until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.Auto_Rengoku == false or not v.Parent or v.Humanoid.Health <= 0
								StartRengokuMagnet = false
							end
						end
					else
						StartRengokuMagnet = false
						toTarget(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
					end
				end)
			end
		end
	end)
	
		Weapon:Seperator("Swan Glasses")

Weapon:Toggle("Auto Swan Glasses",_G.Auto_Swan_Glasses,function(value)
 _G.Auto_Swan_Glasses = value
StopTween(_G.Auto_Swan_Glasses)
end)


	Weapon:Toggle("Auto Swan Glasses Hop",_G.Auto_Swan_Glasses_Hop,function(value)
 _G.Auto_Swan_Glasses_Hop = value
end)

	spawn(function()
		while wait() do
			pcall(function()
				if _G.Auto_Swan_Glasses and game.ReplicatedStorage:FindFirstChild("Don Swan [Lv. 1000] [Boss]") or game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
					if game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if _G.Auto_Swan_Glasses and v.Name == "Don Swan [Lv. 1000] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat task.wait()  
									EquipWeapon(_G.Select_Weapon)
									AutoHaki()
									toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until not _G.Auto_Swan_Glasses or v.Humanoid.Health <= 0 or not v.Parent
							end
						end
					else
						toTarget(CFrame.new(2289.47900390625, 15.152046203613281, 739.512939453125))
					end
				else
					if _G.Auto_Swan_Glasses_Hop then
						Hop()
					end
				end
			end)
		end
	end)
	
		Weapon:Seperator("Trident")
	
	Weapon:Toggle("Auto Dragon Trident",_G.Auto_Dragon_Trident,function(value)
 _G.Auto_Dragon_Trident = value
StopTween(_G.Auto_Dragon_Trident)
end)

	
	Weapon:Toggle("Auto Dragon Trident Hop",_G.Auto_Dragon_Trident_Hop,function(value)
_G.Auto_Dragon_Trident_Hop = value
end)
	
	

	spawn(function()
		while wait() do
			if _G.Auto_Dragon_Trident then
				pcall(function()
					if _G.Auto_Dragon_Trident and game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
						if game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Tide Keeper [Lv. 1475] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat task.wait()
										EquipWeapon(_G.Select_Weapon)
										AutoHaki()
										toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until _G.Auto_Dragon_Trident or v.Humanoid.Health <= 0 or not v.Parent
								end
							end
						else
							toTarget(CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125))
						end
					else
						if _G.Auto_Dragon_Trident_Hop then
							Hop()
						end
					end
				end)
			end
		end
	end)

	

elseif World3 then

	Weapon:Seperator("Soul Reaper")

Weapon:Toggle("Auto Soul Reaper",_G.Auto_Soul_Reaper,function(value)
 _G.Auto_Soul_Reaper = value
StopTween(_G.Auto_Soul_Reaper)
end)


Weapon:Toggle("Auto Soul Reaper Hop",_G.Auto_Soul_Reaper_Hop,function(value)
 _G.Auto_Soul_Reaper_Hop = value
StopTween(_G.Auto_Soul_Reaper_Hop)
end)


	spawn(function()
		while wait() do
			if _G.Auto_Soul_Reaper then
				pcall(function()
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then                    
						toTarget(CFrame.new(-8932.83789, 144.098709, 6059.34229, -0.999290943, 7.95623478e-09, -0.0376505218, 4.4684243e-09, 1, 9.27205832e-08, 0.0376505218, 9.24866086e-08, -0.999290943))  
					elseif game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
						if game.Workspace.Enemies:FindFirstChild ("Soul Reaper [Lv. 2100] [Raid Boss]") then    
							for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]"  then
									if _G.Auto_Soul_Reaper and v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat task.wait()
											AutoHaki()
											EquipWeapon(_G.Select_Weapon)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until not _G.Auto_Soul_Reaper or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							end
						end
					else
						if _G.Auto_Soul_Reaper_Hop then
							Hop()
						else
							local args = {
								[1] = "Bones",
								[2] = "Buy",
								[3] = 1,
								[4] = 1
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
					end
				end)
			end
		end
	end)

	spawn(function()
		while wait() do
			if _G.Auto_Open_Dough_Dungeon then
				pcall(function()
					if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
						if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc"),"Where") then
							game.StarterGui:SetCore("SendNotification", {
								Title = "Notification", 
								Text = "Not Have Enough Material" ,
								Icon = "http://www.roblox.com/asset/?id=12462028268",
								Duration = 2.5
							})
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
						end
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
						if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),"Do you want to open the portal now?") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
						else
							if game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]")  then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
									if (v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Cookie Crafter [Lv. 2200]") and v.Humanoid.Health > 0 then
										repeat task.wait()
											AutoHaki()
											EquipWeapon(_G.Select_Weapon)
											StartCakeMagnet = true
											v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
											POSCAKE = v.HumanoidRootPart.CFrame
											toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.Auto_Open_Dough_Dungeon == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							else
								StartCakeMagnet = false
								toTarget(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
							end
						end						
					elseif game.ReplicatedStorage:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
								if v.Name == "Dough King [Lv. 2300] [Raid Boss]" then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.Select_Weapon)
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										v.HumanoidRootPart.CanCollide = false
										toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until _G.Auto_Open_Dough_Dungeon == false or not v.Parent or v.Humanoid.Health <= 0
								end    
							end    
						else
							toTarget(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
						end
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") or game.Players.LocalPlayer.Character:FindFirstChild("Red Key") then
						local args = {
							[1] = "CakeScientist",
							[2] = "Check"
						}

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					else
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat task.wait()
													AutoHaki()
													EquipWeapon(_G.Select_Weapon)
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
													game:GetService("VirtualUser"):CaptureController()
													game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
													sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
												until _G.Auto_Open_Dough_Dungeon == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")
											end
										end
									end
								else
									if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
										toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * MethodFarm)
									elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
										toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * MethodFarm)
									elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
										toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * MethodFarm)
									end
								end                    
							end
						else
							wait(0.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						end
					end
				end)
			end
		end
	end)
	
		Weapon:Seperator("Yama")
	
	Weapon:Toggle("Auto Yama",_G.Auto_Yama,function(value)
	 _G.Auto_Yama = value
 	StopTween(_G.Auto_Yama)
end)


	spawn(function()
		while wait() do
			if _G.Auto_Yama then
				pcall(function()
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
						fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
					end
				end)
			end
		end
	end)
	
		Weapon:Seperator("Rainbow Haki")
	
	Weapon:Toggle("Auto Rainbow Haki",_G.Auto_Rainbow_Haki,function(value)
 _G.Auto_Rainbow_Haki = value
StopTween(_G.Auto_Rainbow_Haki)
end)

	
	Weapon:Toggle("Auto Rainbow Haki Hop",_G.Auto_Rainbow_Haki_Hop,function(value)
 _G.Auto_Rainbow_Haki_Hop = value
StopTween(_G.Auto_Rainbow_Haki_Hop)
end)


	spawn(function()
		pcall(function()
			while wait() do
				if _G.Auto_Rainbow_Haki then
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
						if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Stone [Lv. 1550] [Boss]") or game.Workspace.Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Stone [Lv. 1550] [Boss]" then
										OldCFrameRainbow = v.HumanoidRootPart.CFrame
										repeat task.wait()
											AutoHaki()
											EquipWeapon(_G.Select_Weapon)
											toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.CFrame = OldCFrameRainbow
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
										until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							else
								toTarget(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
							end
						else
							if _G.Auto_Rainbow_Haki_Hop then
								Hop()
							end
						end
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
						if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Island Empress [Lv. 1675] [Boss]") or game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Island Empress [Lv. 1675] [Boss]" then
										OldCFrameRainbow = v.HumanoidRootPart.CFrame
										repeat task.wait()
											AutoHaki()
											EquipWeapon(_G.Select_Weapon)
											toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.CFrame = OldCFrameRainbow
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
										until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							else
								toTarget(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
							end
						else
							if _G.Auto_Rainbow_Haki_Hop then
								Hop()
							end
						end
					elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
						if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") or game.Workspace.Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
										OldCFrameRainbow = v.HumanoidRootPart.CFrame
										repeat task.wait()
											AutoHaki()
											EquipWeapon(_G.Select_Weapon)
											toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.HumanoidRootPart.CFrame = OldCFrameRainbow
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
										until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							else
								toTarget(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
							end
						else
							if _G.Auto_Rainbow_Haki_Hop then
								Hop()
							end
						end
					elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
						if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") or game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
										OldCFrameRainbow = v.HumanoidRootPart.CFrame
										repeat task.wait()
											AutoHaki()
											EquipWeapon(_G.Select_Weapon)
											toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.HumanoidRootPart.CFrame = OldCFrameRainbow
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
										until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							else
								toTarget(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
							end
						else 
							if _G.Auto_Rainbow_Haki_Hop then
								Hop()
							end
						end
					elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
						if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") or game.Workspace.Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
										OldCFrameRainbow = v.HumanoidRootPart.CFrame
										repeat task.wait()
											AutoHaki()
											EquipWeapon(_G.Select_Weapon)
											toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.HumanoidRootPart.CFrame = OldCFrameRainbow
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
										until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							else
								toTarget(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
							end
						else 
							if _G.Auto_Rainbow_Haki_Hop then
								Hop()
							end
						end
					else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
					end
				end
			end
		end)
	end)
	
		Weapon:Seperator("Canvander")

	Weapon:Toggle("Auto Canvander",_G.Auto_Canvander,function(value)
 _G.Auto_Canvander = value
StopTween(_G.Auto_Canvander)
end)

	
	Weapon:Toggle("Auto Canvander Hop",_G.Auto_Canvander_Hop,function(value)
 _G.Auto_Canvander_Hop = value
StopTween(_G.Auto_Canvander_Hop)
end)


	spawn(function()
		while wait() do
			if _G.Auto_Canvander then
				pcall(function()
					if _G.Auto_Canvander and game.ReplicatedStorage:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") or game.Workspace.Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
						if game.Workspace.Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.Select_Weapon)
										toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until _G.Auto_Canvander or v.Humanoid.Health <= 0 or not v.Parent
								end
							end
						else
							toTarget(CFrame.new(5240.40869140625, 22.536449432373047, 17.463970184326172))
						end
					else
						if _G.Auto_Canvander_Hop then
							Hop()
						end
					end
				end)
			end
		end
	end)
	
		Weapon:Seperator("Twin Hook")
	
	Weapon:Toggle("Auto Twin Hook",_G.Auto_Twin_Hook,function(value)
 _G.Auto_Twin_Hook = value
StopTween(_G.Auto_Twin_Hook)
end)

	
	Weapon:Toggle("Auto Twin Hook Hop",_G.Auto_Twin_Hook_Hop,function(value)
 _G.Auto_Twin_Hook_Hop = value
StopTween(_G.Auto_Twin_Hook_Hop)
end)


	spawn(function()
		while wait() do
			if _G.Auto_Twin_Hook then
				pcall(function()
					if _G.Auto_Twin_Hook and game.ReplicatedStorage:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") or game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
						if game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Captain Elephant [Lv. 1875] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.Select_Weapon)
										toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until _G.Auto_Twin_Hook or v.Humanoid.Health <= 0 or not v.Parent
								end
							end
						else
							toTarget(CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625))
						end
					else
						if _G.Auto_Twin_Hook_Hop then
							Hop()
						end
					end
				end)
			end
		end
	end)
	
		Weapon:Seperator("Serpent Bow")

Weapon:Toggle("Auto Serpent Bow",_G.Auto_Serpent_Bow,function(value)
 _G.Auto_Serpent_Bow = value
StopTween(_G.Auto_Serpent_Bow)
end)

	
	Weapon:Toggle("Auto Serpent Bow Hop",_G.Auto_Serpent_Bow_Hop,function(value)
 _G.Auto_Serpent_Bow_Hop = value
StopTween(_G.Auto_Serpent_Bow_Hop)
end)


	spawn(function()
		while wait() do
			if _G.Auto_Serpent_Bow then
				pcall(function()
					if _G.Auto_Serpent_Bow and game.ReplicatedStorage:FindFirstChild("Island Empress [Lv. 1675] [Boss]") or game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
						if game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Island Empress [Lv. 1675] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.Select_Weapon)
										toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until _G.Auto_Serpent_Bow or v.Humanoid.Health <= 0 or not v.Parent
								end
							end
						else
							toTarget(CFrame.new(5764.1826171875, 700.425537109375, 141.11996459960938))
						end
					else
						if _G.Auto_Serpent_Bow_Hop then
							Hop()
						end
					end
				end)
			end
		end
	end)
end

Weapon:Seperator("Other Quest")

Weapon:Toggle("Auto Bartilo Quest",_G.Auto_Bartilo_Quest,function(value)
 _G.Auto_Bartilo_Quest = value
StopTween(_G.Auto_Bartilo_Quest)
end)



	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Auto_Bartilo_Quest and AutoBartiloBring and v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonBarto.Position).magnitude <= 350 then
						v.HumanoidRootPart.CFrame = PosMonBarto
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end)
		end)
	end)

	spawn(function()
		pcall(function()
			while wait() do
				if _G.Auto_Bartilo_Quest then
					if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
							if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Swan Pirate [Lv. 775]" then
										pcall(function()
											repeat task.wait()
												AutoHaki()
												EquipWeapon(_G.Select_Weapon)
												v.HumanoidRootPart.Transparency = 1
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												toTarget(v.HumanoidRootPart.CFrame * MethodFarm)													
												PosMonBarto =  v.HumanoidRootPart.CFrame
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												AutoBartiloBring = true
											until not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Bartilo_Quest == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
											AutoBartiloBring = false
										end)
									end
								end
							else
								repeat toTarget(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
							end
						else
							repeat toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
							wait(1.1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
						end 
					elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
						if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Jeremy [Lv. 850] [Boss]" then
									OldCFrameBartlio = v.HumanoidRootPart.CFrame
									repeat task.wait()
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
										AutoHaki()
										EquipWeapon(_G.Select_Weapon)
										v.HumanoidRootPart.Transparency = 1
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										v.HumanoidRootPart.CFrame = OldCFrameBartlio
										toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
									until not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Bartilo_Quest == false
								end
							end
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
							repeat toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
							wait(1.1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
							wait(1)
							repeat toTarget(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
							wait(2)
						else
							repeat toTarget(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
						end
					elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
						repeat toTarget(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
						wait(1)
						repeat toTarget(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
						wait(1)
						repeat toTarget(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
						wait(1)
						repeat toTarget(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
						wait(1)
						repeat toTarget(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
						wait(1)
						repeat toTarget(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
						wait(1)
						repeat toTarget(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
						wait(1)
						repeat toTarget(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
					end
				end 
			end
		end)
	end)
	
	Weapon:Toggle("Auto Evo Race [V2]",_G.Auto_Evo_Race_V2,function(value)
 _G.Auto_Evo_Race_V2 = value
StopTween(_G.Auto_Evo_Race_V2)
end)
	

	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Auto_Evo_Race_V2 and StartEvoMagnet and v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonEvo.Position).magnitude <= 350 then
						v.HumanoidRootPart.CFrame = PosMonEvo
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end)
		end)
	end)

	spawn(function()
		pcall(function()
			while wait() do
				if _G.Auto_Evo_Race_V2 then
					if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
							toTarget(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
							if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(1.3)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
							end
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
							pcall(function()
								if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
									toTarget(game:GetService("Workspace").Flower1.CFrame)
								elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
									toTarget(game:GetService("Workspace").Flower2.CFrame)
								elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
									if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Swan Pirate [Lv. 775]" then
												repeat task.wait()
													AutoHaki()
													EquipWeapon(_G.Select_Weapon)
													toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
													v.HumanoidRootPart.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													PosMonEvo = v.HumanoidRootPart.CFrame
													StartEvoMagnet = true
												until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Evo_Race_V2 == false
												StartEvoMagnet = false
											end
										end
									else
										StartEvoMagnet = false
										toTarget(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
									end
								end
							end)
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
						end
					end
				end
			end
		end)
	end)
	
	Weapon:Toggle("Auto Buy Legendary Sword",_G.Auto_Buy_Legendary_Sword,function(value)
 _G.Auto_Buy_Legendary_Sword = value
StopTween(_G.Auto_Buy_Legendary_Sword)
end)
	

	spawn(function()
		while wait() do
			if _G.Auto_Buy_Legendary_Sword then
				local args = {
					[1] = "LegendarySwordDealer",
					[2] = "2"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
		end
	end)
	
	Weapon:Toggle("Auto Buy Enchancement",_G.Auto_Buy_Enchancement,function(value)
 _G.Auto_Buy_Enchancement = value
StopTween(_G.Auto_Buy_Enchancement)
end)
	
	
	spawn(function()
		while wait() do
			if _G.Auto_Buy_Enchancement then
				local args = {
					[1] = "ColorsDealer",
					[2] = "2"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end 
		end
	end)
	
Weapon:Toggle("Auto Musketeer Hat",_G.Auto_Musketeer_Hat,function(value)
 _G.Auto_Musketeer_Hat = value
StopTween(_G.Auto_Musketeer_Hat)
end)
	

	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Auto_Musketeer_Hat and StartMagnetMusketeerhat and v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).magnitude <= 350 then
						v.HumanoidRootPart.CFrame = MusketeerHatMon
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end)
		end)
	end)

	spawn(function()
		pcall(function()
			while wait() do
				if _G.Auto_Musketeer_Hat then
					if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Forest Pirate [Lv. 1825]" then
										repeat task.wait()
											pcall(function()
												AutoHaki()
												EquipWeapon(_G.Select_Weapon)
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
												v.HumanoidRootPart.CanCollide = false
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												MusketeerHatMon = v.HumanoidRootPart.CFrame
												StartMagnetMusketeerhat = true
											end)
										until _G.Auto_Musketeer_Hat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
										StartMagnetMusketeerhat = false
									end
								end
							else
								StartMagnetMusketeerhat = false
								toTarget(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
							end
						else
							toTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
							if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
								wait(1.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
							end
						end
					elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
										OldCFrameElephant = v.HumanoidRootPart.CFrame
										repeat task.wait()
											pcall(function()
												AutoHaki()
												EquipWeapon(_G.Select_Weapon)
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.CFrame = OldCFrameElephant
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
											end)
										until _G.Auto_Musketeer_Hat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							else
								toTarget(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
							end
						else
							toTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
							if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(1.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
							end
						end
					elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
						toTarget(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
					end
				end
			end
		end)
	end)

Weapon:Toggle("Auto Holy Torch",_G.Auto_Holy_Torch,function(value)
 _G.Auto_Holy_Torch = value
StopTween(_G.Auto_Holy_Torch)
end)


	spawn(function()
		while wait() do
			if _G.Auto_Holy_Torch then
				pcall(function()
					wait(1)
					repeat toTarget(CFrame.new(-10752, 417, -9366)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
					wait(1)
					repeat toTarget(CFrame.new(-11672, 334, -9474)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
					wait(1)
					repeat toTarget(CFrame.new(-12132, 521, -10655)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
					wait(1)
					repeat toTarget(CFrame.new(-13336, 486, -6985)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
					wait(1)
					repeat toTarget(CFrame.new(-13489, 332, -7925)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
				end)
			end
		end
	end)
Weapon:Seperator("FightingStyle")
	
Weapon:Toggle("Auto Superhuman",_G.Auto_Superhuman,function(value)
 _G.Auto_Superhuman = value
end)


Weapon:Toggle("Auto Fully Superhuman",_G.Auto_Fully_Superhuman,function(value)
 _G.Auto_Fully_Superhuman = value
end)


spawn(function()
    while wait(.25) do
        if _G.Auto_Superhuman or _G.Auto_Fully_Superhuman and game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then 
			pcall(function()
				if game:GetService("Players").LocalPlayer.Data.Beli.Value >= 500000 and (game.Players.LocalPlayer.Character:FindFirstChild("Combat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Combat")) then
					_G.Select_Weapon = "Combat"
					local args = {
						[1] = "BuyElectro"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end   
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
					_G.Select_Weapon = "Superhuman"
				end  
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299  then
					_G.Select_Weapon = "Black Leg"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299  then
					_G.Select_Weapon = "Electro"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299  then
					_G.Select_Weapon = "Fishman Karate"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299  then
					_G.Select_Weapon = "Dragon Claw"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300  then
					local args = {
						[1] = "BuyFishmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300  then
					local args = {
						[1] = "BuyFishmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300  then
					local args = {
						[1] = "BuyBlackLeg"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300  then
					if _G.Auto_Fully_Superhuman and game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
						if game.Players.LocalPlayer.Data.Level.Value > 1100 then
							_G.Select_Dungeon = "Flame"
							_G.Auto_Buy_Chips_Dungeon = true
							_G.Auto_Start_Dungeon = true
							_G.Auto_Next_Island = true
							_G.Kill_Aura = true
						end
					else
						_G.Auto_Buy_Chips_Dungeon = false
						_G.Auto_Start_Dungeon = false
						_G.Auto_Next_Island = false
						_G.Kill_Aura = false
						local args = {
							[1] = "BlackbeardReward",
							[2] = "DragonClaw",
							[3] = "2"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300  then
					if _G.Auto_Fully_Superhuman and game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
						if game.Players.LocalPlayer.Data.Level.Value > 1100 then
							_G.Select_Dungeon = "Flame"
							_G.Auto_Buy_Chips_Dungeon = true
							_G.Auto_Start_Dungeon = true
							_G.Auto_Next_Island = true
							_G.Kill_Aura = true
						end
					else
						_G.Auto_Buy_Chips_Dungeon = false
						_G.Auto_Start_Dungeon = false
						_G.Auto_Next_Island = false
						_G.Kill_Aura = false
						local args = {
							[1] = "BlackbeardReward",
							[2] = "DragonClaw",
							[3] = "2"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300  then
					local args = {
						[1] = "BuySuperhuman"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300  then
					local args = {
						[1] = "BuySuperhuman"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
			end)
        end
    end
end)

Weapon:Toggle("Auto Death Step",_G.Auto_Death_Step,function(value)
 _G.Auto_Death_Step = value
StopTween(_G.Auto_Death_Step)
end)


spawn(function()
	while wait() do
		if _G.Auto_Death_Step then
			if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
					_G.Select_Weapon = "Death Step"
				end  
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
					_G.Select_Weapon = "Death Step"
				end  
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
					_G.Select_Weapon = "Black Leg"
				end 
			else 
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
			end
		end
	end
end)

Weapon:Toggle("Auto Fully Death Step",_G.Auto_Fully_Death_Step,function(value)
 _G.Auto_Fully_Death_Step = value
end)


spawn(function()
	while wait() do
		if _G.Auto_Fully_Death_Step then
			pcall(function()
				if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
				end				
				if game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0 then  
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key") then
						EquipWeapon("Library Key")
						repeat task.wait() toTarget(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375)) until (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Fully_Death_Step
						if (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
							wait(1.2)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
							wait(0.5)
						end
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then   
						if game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then 	
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then    
										repeat task.wait()
											AutoHaki()
											EquipWeapon(_G.Select_Weapon)
											v.Head.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
										until not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Fully_Death_Step == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
									end
								end
							else
								repeat task.wait() toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]").HumanoidRootPart.CFrame) until game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]")
							end
						else 
							Hop()
						end
					end
				else 
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
				end
			end)
		end
	end
end)

Weapon:Toggle("Auto Sharkman Karate",_G.Auto_SharkMan_Karate,function(value)
 _G.Auto_SharkMan_Karate = value
StopTween(_G.Auto_SharkMan_Karate)
end)


spawn(function()
	while wait() do
		if _G.Auto_SharkMan_Karate then
			if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
					_G.Select_Weapon = "Sharkman Karate"
				end  
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
					_G.Select_Weapon = "Sharkman Karate"
				end  
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 400 then
					_G.Select_Weapon = "Fishman Karate"
				end 
			else 
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
			end
		end
	end
end)

Weapon:Toggle("Auto Fully Sharkman Karate",_G.Auto_Fully_SharkMan_Karate,function(value)
 _G.Auto_Fully_SharkMan_Karate = value
end)


spawn(function()
	while wait() do
		if _G.Auto_Fully_SharkMan_Karate then
			pcall(function()
				if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
				end		
				if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
						repeat task.wait() toTarget(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365) until (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Fully_SharkMan_Karate
						if (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
							wait(1.2)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
							wait(0.5)
						end
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then   
						if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then 	
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then    
										repeat task.wait()
											AutoHaki()
											EquipWeapon(_G.Select_Weapon)
											v.Head.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
										until not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Fully_SharkMan_Karate == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
									end
								end
							else
								repeat task.wait() toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame) until game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]")
							end
						else
							Hop()
						end
					end
				else 
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
				end
			end)
		end
	end
end)

Weapon:Toggle("Auto Electric Claw",_G.Auto_Electric_Claw,function(value)
 _G.Auto_Electric_Claw = value
end)


spawn(function()
	while wait() do 
		if _G.Auto_Electric_Claw then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
					_G.Select_Weapon = "Electric Claw"
				end  
				if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
					_G.Select_Weapon = "Electric Claw"
				end  
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
					_G.Select_Weapon = "Electro"
				end 
			else
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
			end
		end
	end
end)

Weapon:Toggle("Auto Dragon Talon",_G.Auto_Dragon_Talon,function(value)
 _G.Auto_Dragon_Talon = value
end)


spawn(function()
	while wait() do
		if _G.Auto_Dragon_Talon then
			if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") then
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
					_G.Select_Weapon = "Dragon Talon"
				end  
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
					_G.Select_Weapon = "Dragon Talon"
				end  
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
					_G.Select_Weapon = "Dragon Claw"
				end 
			else 
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
			end
		end
	end
end)

Weapon:Toggle("Auto_God_Human",_G.Auto_God_Human,function(value)
 _G.Auto_God_Human = value
end)


spawn(function()
    while task.wait() do
		if _G.Auto_God_Human then
			pcall(function()
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >= 400 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
						end
					else
						game.StarterGui:SetCore("SendNotification", {
							Title = "Notification", 
							Text = "Not Have Superhuman" ,
							Icon = "http://www.roblox.com/asset/?id=12462028268",
							Duration = 2.5
						})
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
						end
					else
						game.StarterGui:SetCore("SendNotification", {
							Title = "Notification", 
							Text = "Not Have Death Step" ,
							Icon = "http://www.roblox.com/asset/?id=12462028268",
							Duration = 2.5
						})
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
						end
					else
						game.StarterGui:SetCore("SendNotification", {
							Title = "Notification", 
							Text = "Not Have SharkMan Karate" ,
							Icon = "http://www.roblox.com/asset/?id=12462028268",
							Duration = 2.5
						})
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
						end
					else
						game.StarterGui:SetCore("SendNotification", {
							Title = "Notification", 
							Text = "Not Have Electric Claw" ,
							Icon = "http://www.roblox.com/asset/?id=12462028268",
							Duration = 2.5
						})
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 400 then
							if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true), "Bring") then
								game.StarterGui:SetCore("SendNotification", {
									Title = "Notification", 
									Text = "Not Have Enough Material" ,
									Icon = "http://www.roblox.com/asset/?id=12462028268",
									Duration = 2.5
								})
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
							end
						end
					else
						game.StarterGui:SetCore("SendNotification", {
							Title = "Notification", 
							Text = "Not Have Dragon Talon" ,
							Icon = "http://www.roblox.com/asset/?id=12462028268",
							Duration = 2.5
						})
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
				end
			end)
		end
	end
end)


Setting:Seperator("Setting")
  
Setting:Toggle("Auto Set Spawn Points",true,function(value)
 _G.AutoSetSpawn = value
 end)

spawn(function()
 pcall(function()
  while wait() do
  if _G.AutoSetSpawn then
  if game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
  end
  end
  end
  end)
end)

Setting:Dropdown("Select Farm Method",{"Behind","Below","Upper"},function(value)
        _G.Method = value
    end)
    
    spawn(function()
        while wait() do 
            pcall(function()
                if _G.Method == "Behind" then
                    MethodFarm = CFrame.new(0,0,_G.DistanceMob)
                elseif _G.Method == "Below" then
                    MethodFarm = CFrame.new(0,-_G.DistanceMob,0) * CFrame.Angles(math.rad(90),0,0)
                elseif _G.Method == "Upper" then
                    MethodFarm = CFrame.new(0,_G.DistanceMob,0)  * CFrame.Angles(math.rad(-90),0,0)
                else
                    MethodFarm = CFrame.new(0,_G.DistanceMob,0)
                end
            end)
        end
    end)
    

    _G.DistanceMob = 20
    Setting:Slider("Farm Distance",1,100,25,function(value)
        _G.DistanceMob = value
    end)

Code = {
	"EXP_5B",
	"CONTROL",
	"UPDATE11",
	"XMASEXP",
	"1BILLION",
	"ShutDownFix2",
	"UPD14",
	"STRAWHATMAINE",
	"TantaiGaming",
	"Colosseum",
	"Axiore",
	"Sub2Daigrock",
	"Sky Island 3",
	"Sub2OfficialNoobie",
	"SUB2NOOBMASTER123",
	"THEGREATACE",
	"Fountain City",
	"BIGNEWS",
	"FUDD10",
	"SUB2GAMERROBOT_EXP1",
	"UPD15",
	"2BILLION",
	"UPD16",
	"3BVISITS",
	"fudd10_v2",
	"Starcodeheo",
	"Magicbus",
	"JCWK",
	"Bluxxy",
	"Sub2Fer999",
	"Enyu_is_Pro"
}


Setting:Slider("Select Level to Redeem All Code",1,2300,25,function(value)
_G.Select_Level_to_Redeem_All_Code = value
		return "Redeem All Code At Level : " .. tostring(value)
end)

Setting:Toggle("Auto Redeem All Code",_G.Auto_Redeem_All_Code,function(value)
 _G.Auto_Redeem_All_Code = value
end)

spawn(function()
    while wait(5) do
        if _G.Auto_Redeem_All_Code then
            MyLevel = game.Players.localPlayer.Data.Level.value
            if MyLevel >= _G.Select_Level_to_Redeem_All_Code - 1 then
                for i,v in pairs(Code) do
                    pcall(function()
                        local args = {
                            [1] = v
                        }
                        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
                    end)
                end
                break
            end
        end
    end
end)

Setting:Button("Redeem All Code",function()
 		for i,v in pairs(Code) do
			UseCode(v) 
		end
end)
 
 spawn(function()
  while wait() do
  if _G.WhiteScreen then
  for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
  if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "DamageCounter" or v.Name == "SwordSlash" or v.Name == "SlashTail" or v.Name == "Sounds" then
  v:Destroy()
  end
  end
  end
  end
  end) 
  Setting:Toggle("Auto Click",false,function(value)
 _G.click = value
end)

Setting:Toggle("Fast Attack [NOT WORK]",false,function(fast)
 _G.FastAttack = Fast
end)

local Module =  require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
local CombatFramework = debug.getupvalues(Module)[2]
local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)

spawn(function()
while true do
if _G.FastAttack then
pcall(function()
CameraShakerR:Stop()
CombatFramework.activeController.attacking = false
CombatFramework.activeController.timeToNextAttack = 0
CombatFramework.activeController.increment = 3
CombatFramework.activeController.hitboxMagnitude = 100
CombatFramework.activeController.blocking = false
CombatFramework.activeController.timeToNextBlock = 0
CombatFramework.activeController.focusStart = 0
CombatFramework.activeController.humanoid.AutoRotate = true
end)
end
task.wait()
end
end)


Setting:Toggle("Fast Attack [WORK]",true,function(value)
 _G.FastAttack = value
end)

-- [[ Fast Attack Fixed / Shadow Hub / Dont edit , or ur will be messed up! ]]

-- [[ Properties ]]

require(game.ReplicatedStorage.Util.CameraShaker):Stop()

xShadowFastAttackx = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)

xShadowx = debug.getupvalues(xShadowFastAttackx)[2]

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.FastAttack then
            if typeof(xShadowx) == "table" then
                pcall(function()
                    xShadowx.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
                    xShadowx.activeController.timeToNextAttack = 0.000000000000000000000000000000000001
                    xShadowx.activeController.hitboxMagnitude = 200
                    xShadowx.activeController.active = false
                    xShadowx.activeController.timeToNextBlock = 0
                    xShadowx.activeController.focusStart = 0
                    xShadowx.activeController.increment = 4
                    xShadowx.activeController.blocking = false
                    xShadowx.activeController.attacking = false
                    xShadowx.activeController.humanoid.AutoRotate = 50
                end)
            end
        end
    end)
end)

Setting:Toggle("Auto Ken Haki",_G.Auto_Ken,function(vu)
	_G.Auto_Ken = vu
end)
spawn(function()
	while wait(2) do
		pcall(function()
			if _G.Auto_Ken then
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
				wait(7)
			end
		end)
	end
end)

Setting:Toggle("Bring Mob ",true,function(value)
 _G.BringNormal = value
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
		pcall(function()
			if _G.BringMonster then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Auto_Farm_Level and StartMagnet and v.Name == Ms and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 350 then
						v.HumanoidRootPart.CFrame = PosMon
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end
		end)
    end)
	end)
	
	-- [Bring Mob]

task.spawn(function()
	while true do wait()
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end
	end
end)



-- [Deleted Effect Auto]

task.spawn(function()
	while wait() do
		for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
			pcall(function()
				if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
					v:Destroy()
				end
			end)
		end
	end
end)

if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
	game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
	game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end


-- [Disabled Damage Interface]
function DisabledDamage()
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Disabled then
					game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
				else
					game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
				end
			end)
		end
	end)
end


Setting:Toggle("Bring Mob [Ultra]",true,function(value)
 _G.BringExtra = value
end)

spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
  pcall(function()
   if _G.BringExtra then
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Level and StartMagnet and v.Name ~= "Ice Admiral [Lv. 700] [Boss]" and v.Name ~= "Don Swan [Lv. 3000] [Boss]" and v.Name ~= "Saber Expert [Lv. 200] [Boss]" and v.Name ~= "Longma [Lv. 2000] [Boss]" and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMon
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end
   end)
   end)
end)
 

Setting:Toggle("Anti AFK",false,function(value)
 _G.AFK = value
 end)
Setting:Toggle('Auto Rejoin',true,function(value)
        getgenv().ABC = value
    end)
    
    spawn(function()
	    while wait() do
	        if ABC then
	                getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                        if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
                            game:GetService("TeleportService"):Teleport(game.PlaceId)
                        end
                    end)
	            end
	        end
      end)
Setting:Toggle("Remove Fog",false,function(value)
         _G.Remove_Fog = value
		if not _G.Remove_Fog then return end
		while _G.Remove_Fog do wait()
			game.Lighting.FogEnd = 9e9
			if not _G.Remove_Fog then
				game.Lighting.FogEnd = 2500
			end
		end
end)

Setting:Button("FPS Boost",function()
 pcall(function()
  game:GetService("Lighting").FantasySky:Destroy()
  local g = game
  local w = g.Workspace
  local l = g.Lighting
  local t = w.Terrain
  t.WaterWaveSize = 0
  t.WaterWaveSpeed = 0
  t.WaterReflectance = 0
  t.WaterTransparency = 0
  l.GlobalShadows = false
  l.FogEnd = 9e9
  l.Brightness = 0
  settings().Rendering.QualityLevel = "Level01"
  for i, v in pairs(g:GetDescendants()) do
  if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
  v.Material = "Plastic"
  v.Reflectance = 0
  elseif v:IsA("Decal") or v:IsA("Texture") then
  v.Transparency = 1
  elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
  v.Lifetime = NumberRange.new(0)
  elseif v:IsA("Explosion") then
  v.BlastPressure = 1
  v.BlastRadius = 1
  elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
  v.Enabled = false
  elseif v:IsA("MeshPart") then
  v.Material = "Plastic"
  v.Reflectance = 0
  v.TextureID = 10385902758728957
  end
  end
  for i, e in pairs(l:GetChildren()) do
  if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
  e.Enabled = false
  end
  end
  for i, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
  if v.Name == ("Water;") then
  v.Transparency = 1
  v.Material = "Plastic"
  end
  end
  end)
 end)

spawn(function()
 while wait() do
 if _G.WhiteScreen then
 for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
 if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "DamageCounter" or v.Name == "SwordSlash" or v.Name == "SlashTail" or v.Name == "Sounds" then
 v:Destroy()
 end
 end
 end
 end
 end)
Setting:Toggle("White Screen [ Booster FPS ]",_G.WhiteScreen,function(value)
 _G.WhiteScreen = value

 if _G.WhiteScreen == true then
 game:GetService("RunService"):Set3dRenderingEnabled(false)
 elseif _G.WhiteScreen == false then
 game:GetService("RunService"):Set3dRenderingEnabled(true)
 end
end)
Stats:Seperator("Auto Stats")

Stats:Toggle("Auto Stats Kaitun",_G.Auto_Stats_Kaitun,function(value)
_G.Auto_Stats_Kaitun = value
end)


spawn(function()
	while wait() do
		pcall(function()
			if _G.Auto_Stats_Kaitun then
				if World1 then
					local args = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = _G.Point
						}
						
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif World2 then
					local args = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = _G.Point
						}
						
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					local args = {
						[1] = "AddPoint",
						[2] = "Defense",
						[3] = _G.Point
						}
						
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end)
	end
end)

Stats:Toggle("Auto Stats Melee",_G.Auto_Stats_Melee,function(value)
 _G.Auto_Stats_Melee = value
end)


spawn(function()
	while wait() do
		if _G.Auto_Stats_Melee then
			local args = {
				[1] = "AddPoint",
				[2] = "Melee",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

Stats:Toggle("Auto Stats Defense",_G.Auto_Stats_Defense,function(value)
 _G.Auto_Stats_Defense = value
end)


spawn(function()
	while wait() do
		if _G.Auto_Stats_Defense then
			local args = {
				[1] = "AddPoint",
				[2] = "Defense",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

Stats:Toggle("Auto Stats Sword",_G.Auto_Stats_Sword,function(value)
 _G.Auto_Stats_Sword = value
end)


spawn(function()
	while wait() do
		if _G.Auto_Stats_Sword then
			local args = {
				[1] = "AddPoint",
				[2] = "Sword",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

Stats:Toggle("Auto Stats Gun",_G.Auto_Stats_Gun,function(value)
 _G.Auto_Stats_Gun = value
end)

spawn(function()
	while wait() do
		if _G.Auto_Stats_Gun then
			local args = {
				[1] = "AddPoint",
				[2] = "Gun",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

Stats:Toggle("Auto Stats Devil Fruit",_G.Auto_Stats_Devil_Fruit,function(value)
 _G.Auto_Stats_Devil_Fruit = value
end)


spawn(function()
	while wait() do
		if _G.Auto_Stats_Devil_Fruit then
			local args = {
				[1] = "AddPoint",
				[2] = "Demon Fruit",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

Stats:Button("Stat Refund",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,2)
  end)

Stats:Slider("Select Point",1,100,1,function(value)
_G.Point = value
return "Point : " .. tostring(value)
end)

P:Seperator("Combats")

P:Slider("Select Size Fov",1,1000,200,function(value)
_G.Select_Size_Fov = value
return "Size Fov : " .. tostring(value)
end)

P:Toggle("Show Fov",_G.Show_Fov,function(value)
 _G.Show_Fov = value
end)

P:Toggle("Aimbot Skill Fov",_G.Aimbot_Skill_Fov,function(value)
 _G.Aimbot_Skill_Fov = value
end)

P:Seperator("Instan Aimbot Recommend")

spawn(function()
while wait() do
pcall(function()
local MaxDistance = math.huge
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name ~= game:GetService("Players").LocalPlayer.Name then
local Distance = v:DistanceFromCharacter(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position)
if Distance < MaxDistance then
MaxDistance = Distance
PlayerSelectAimbot = v.Name
end
end
end
end)
end
end)
    
P:Toggle("Aimbot Gun",false,function(value)
_G.Aimbot_Gun = value
end)
    
spawn(function()
while task.wait() do
if _G.Aimbot_Gun and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) then
pcall(function()
game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
local args = {
[1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position,
[2] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart
}
game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end)
end
end
end)
    
P:Toggle("Aimbot Skill",false,function(value)
_G.Aimbot_Skill = value
end)
    
spawn(function()
pcall(function()
while task.wait() do
if _G.Aimbot_Skill and PlayerSelectAimbot ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
local args = {
[1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name).RemoteEvent:FireServer(unpack(args))
end
end
end)
end)

P:Seperator("Kill Player")


Playerslist = {}
    
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        table.insert(Playerslist,v.Name)
    end
    
    local SelectedPly = P:Dropdown("Select Players",Playerslist,function(value)
        _G.Select_Player = value
    end)
    
    P:Button("Refresh Player",function()
        Playerslist = {}
        SelectedPly:Clear()
        for i,v in pairs(game:GetService("Players"):GetChildren()) do  
            SelectedPly:Add(v.Name)
        end
    end)

P:Toggle("Spectate Player",_G.Spectate_Player,function(value)
 _G.Spectate_Player = value
end)


spawn(function()
	while wait() do
		if _G.Spectate_Player then
			pcall(function()
				if game.Players:FindFirstChild(_G.Select_Player) then
					game.Workspace.Camera.CameraSubject = game.Players:FindFirstChild(_G.Select_Player).Character.Humanoid
				end
			end)
		else
			game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
		end
	end
end)

P:Toggle("Teleport to Player",_G.Teleport_to_Player,function(value)
 _G.Teleport_to_Player = value
StopTween(_G.Teleport_to_Player)
end)


spawn(function()
	while wait() do
		if _G.Teleport_to_Player then
			pcall(function()
				if game.Players:FindFirstChild(_G.Select_Player) then
					toTarget(game.Players[_G.Select_Player].Character.HumanoidRootPart.CFrame)
				end
			end)
		end
	end
end)

P:Toggle("Auto Kill Player [Melee]",_G.Auto_Kill_Player_Melee,function(value)
 _G.Auto_Kill_Player_Melee = value
StopTween(_G.Auto_Kill_Player_Melee)
end)


spawn(function()
	while wait() do 
		pcall(function()
			if _G.Auto_Kill_Player_Melee then
				if game.Players:FindFirstChild(_G.Select_Player) then
					for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						if v.Name == _G.Select_Player and v.Humanoid.Health > 0 then
							repeat task.wait()
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,5,0))
								elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									AutoHaki()
									EquipWeapon(_G.Select_Weapon_Kill_Player_Melee)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,5,0))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
							until game.Players:FindFirstChild(_G.Select_Player).Character.Humanoid.Health <= 0 or not _G.Auto_Kill_Player_Melee or not game.Players:FindFirstChild(_G.Select_Player)
						end
					end
				end
			end
		end)
	end
end)

P:Toggle("Auto Kill Player [Gun]",_G.Auto_Kill_Player_Gun,function(value)
 _G.Auto_Kill_Player_Gun = value
StopTween(_G.Auto_Kill_Player_Gun)
end)


spawn(function()
	while wait() do 
		pcall(function()
			if _G.Auto_Kill_Player_Gun then
				if game.Players:FindFirstChild(_G.Select_Player) then
					for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						if v.Name == _G.Select_Player and v.Humanoid.Health > 0 then
							repeat task.wait()
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
									toTarget(v.HumanoidRootPart.CFrame)
								elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									AutoHaki()
									EquipWeapon(SelectToolWeaponGun)
									UseGunKillPlayer = true
									game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].Cooldown.Value = 0
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 0.7
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,-10))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
							until game.Players:FindFirstChild(_G.Select_Player).Character.Humanoid.Health <= 0 or not _G.Auto_Kill_Player_Gun or not game.Players:FindFirstChild(_G.Select_Player)
						end
					end
				end
			else
				UseGunKillPlayer = false
			end
		end)
	end
end)
Teleport:Seperator("WORLD")
 
 Teleport:Button("Teleport To Old World",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
  end)
 
 Teleport:Button("Teleport To Second Sea",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
 end)

 
 Teleport:Button("Teleport To Third Sea",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
  end)
 
 Teleport:Button("Teleport to Seabeast",function()
  for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
  if v:FindFirstChild("HumanoidRootPart") then
  toTarget(v.HumanoidRootPart.CFrame*CFrame.new(0,100,0))
  end
  end
 end)
 
 Teleport:Seperator("Island")
 
 if World1 then
 Teleport:Dropdown("Select Island", {
  "WindMill",
  "Marine",
  "Middle Town",
  "Jungle",
  "Pirate Village",
  "Desert",
  "Snow Island",
  "MarineFord",
  "Colosseum",
  "Sky Island 1",
  "Sky Island 2",
  "Sky Island 3",
  "Prison",
  "Magma Village",
  "Under Water Island",
  "Fountain City",
  "Shank Room",
  "Mob Island"
 },function(value)
  _G.SelectIsland = value
  end)
 end
 
 if World2 then
 Teleport:Dropdown("Select Island", {
  "The Cafe",
  "Frist Spot",
  "Dark Area",
  "Flamingo Mansion",
  "Flamingo Room",
  "Green Zone",
  "Factory",
  "Colossuim",
  "Zombie Island",
  "Two Snow Mountain",
  "Punk Hazard",
  "Cursed Ship",
  "Ice Castle",
  "Forgotten Island",
  "Ussop Island",
  "Mini Sky Island"
 },function(value)
  _G.SelectIsland = value
  end)
 end
 
 if World3 then
 Teleport:Dropdown("Select Island", {
  "Mansion",
  "Port Town",
  "Great Tree",
  "Castle On The Sea",
  "MiniSky",
  "Hydra Island",
  "Floating Turtle",
  "Haunted Castle",
  "Ice Cream Island",
  "Peanut Island",
  "Cake Island",
  "Noname Island(New)"
 },function(value)
  _G.SelectIsland = value
  end)
 end
 
 Teleport:Toggle("Teleport",false,function(value)
  _G.TeleportIsland = value
  if _G.TeleportIsland == true then
  repeat task.wait()
  if _G.SelectIsland == "WindMill" then
  toTarget(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
  elseif _G.SelectIsland == "Marine" then
  toTarget(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
  elseif _G.SelectIsland == "Middle Town" then
  toTarget(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
  elseif _G.SelectIsland == "Jungle" then
  toTarget(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
  elseif _G.SelectIsland == "Pirate Village" then
  toTarget(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
  elseif _G.SelectIsland == "Desert" then
  toTarget(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
  elseif _G.SelectIsland == "Snow Island" then
  toTarget(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
  elseif _G.SelectIsland == "MarineFord" then
  toTarget(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
  elseif _G.SelectIsland == "Colosseum" then
  toTarget(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
  elseif _G.SelectIsland == "Sky Island 1" then
  toTarget(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
  elseif _G.SelectIsland == "Sky Island 2" then
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
  elseif _G.SelectIsland == "Sky Island 3" then
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
  elseif _G.SelectIsland == "Prison" then
  toTarget(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
  elseif _G.SelectIsland == "Magma Village" then
  toTarget(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
  elseif _G.SelectIsland == "Under Water Island" then
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
  elseif _G.SelectIsland == "Fountain City" then
  toTarget(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
  elseif _G.SelectIsland == "Shank Room" then
  toTarget(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
  elseif _G.SelectIsland == "Mob Island" then
  toTarget(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
  elseif _G.SelectIsland == "The Cafe" then
  toTarget(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
  elseif _G.SelectIsland == "Frist Spot" then
  toTarget(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
  elseif _G.SelectIsland == "Dark Area" then
  toTarget(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
  elseif _G.SelectIsland == "Flamingo Mansion" then
  toTarget(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
  elseif _G.SelectIsland == "Flamingo Room" then
  toTarget(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
  elseif _G.SelectIsland == "Green Zone" then
  toTarget(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
  elseif _G.SelectIsland == "Factory" then
  toTarget(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
  elseif _G.SelectIsland == "Colossuim" then
  toTarget(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
  elseif _G.SelectIsland == "Zombie Island" then
  toTarget(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
  elseif _G.SelectIsland == "Two Snow Mountain" then
  toTarget(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
  elseif _G.SelectIsland == "Punk Hazard" then
  toTarget(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
  elseif _G.SelectIsland == "Cursed Ship" then
  toTarget(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
  elseif _G.SelectIsland == "Ice Castle" then
  toTarget(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
  elseif _G.SelectIsland == "Forgotten Island" then
  toTarget(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
  elseif _G.SelectIsland == "Ussop Island" then
  toTarget(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
  elseif _G.SelectIsland == "Mini Sky Island" then
  toTarget(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
  elseif _G.SelectIsland == "Great Tree" then
  toTarget(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
  elseif _G.SelectIsland == "Castle On The Sea" then
  toTarget(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
  elseif _G.SelectIsland == "MiniSky" then
  toTarget(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
  elseif _G.SelectIsland == "Port Town" then
  toTarget(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
  elseif _G.SelectIsland == "Hydra Island" then
  toTarget(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
  elseif _G.SelectIsland == "Floating Turtle" then
  toTarget(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
  elseif _G.SelectIsland == "Mansion" then
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
  elseif _G.SelectIsland == "Haunted Castle" then
  toTarget(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
  elseif _G.SelectIsland == "Ice Cream Island" then
  toTarget(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
  elseif _G.SelectIsland == "Peanut Island" then
  toTarget(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
  elseif _G.SelectIsland == "Cake Island" then
  toTarget(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
  elseif _G.SelectIsland == "Noname Island(New)" then
  toTarget(CFrame.new(231.742981, 25.3354111, -12199.0537, 0.998278677, -5.16006757e-08, 0.0586484075, 4.79685092e-08, 1, 6.33390442e-08, -0.0586484075, -6.04167383e-08, 0.998278677))
  end
  until not _G.TeleportIsland
  end
  StopTween(_G.TeleportIsland)
  end)
  Dungeon:Seperator("Main Dungeon")

Dungeon:Line()
  
  Dungeon:Seperator("Main Dungeon")

chip = {
	"Flame", 
	"Ice", 
	"Quake", 
	"Light",
	"Dark",
	"String",
	"Rumble",
	"Magma",
	"Human: Buddha",
	"Sand",
	"Bird: Phoenix"
}

Dungeon:Dropdown("Select Dungeon",chip,function(value)
 _G.Select_Dungeon = value
end)

Dungeon:Toggle("Auto Buy Chip Dungeon",_G.Auto_Buy_Chips_Dungeon,function(value)
 _G.Auto_Buy_Chips_Dungeon = value
end)


spawn(function()
    while wait() do
		if _G.Auto_Buy_Chips_Dungeon then
			pcall(function()
				local args = {
					[1] = "RaidsNpc",
					[2] = "Select",
					[3] = _G.Select_Dungeon
				}
				
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
		end
    end
end)


Dungeon:Toggle("Auto Start Dungeon",_G.Auto_Start_Dungeon,function(value)
 _G.Auto_Start_Dungeon = value
end)

spawn(function()
    while wait() do
		if _G.Auto_Start_Dungeon then
			pcall(function()
				if World2 then
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then 
							fireclickdetector(game.Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
						end
					end
				elseif World3 then
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then
							fireclickdetector(game.Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
						end
					end
				end
			end)
		end
    end
end)

Dungeon:Toggle("Auto Next Island",_G.Auto_Next_Island,function(value)
 _G.Auto_Next_Island = value
end)

spawn(function()
    while wait() do
        if _G.Auto_Next_Island then
			if not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0,70,100))
				end
			end
        end
    end
end)

Dungeon:Toggle("Kill Aura",_G.Kill_Aura,function(value)
 _G.Kill_Aura = value  
end)

spawn(function()
    while wait() do
        if _G.Kill_Aura then
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    pcall(function()
                        repeat wait(.1)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        until not _G.Kill_Aura  or not v.Parent or v.Humanoid.Health <= 0
                    end)
                end
            end
        end
    end
end)

Dungeon:Toggle("Auto Awake",_G.Auto_Awake,function(value)
 _G.Auto_Awake = value 
end)


spawn(function()
	while wait(.1) do
		if _G.Auto_Awake then
			pcall(function()
				local args = {
					[1] = "Awakener",
					[2] = "Check"
				}
				
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "Awakener",
					[2] = "Awaken"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
		end
	end
end)

  
  Dungeon:Button("Next Island",function()
   pcall(function()
    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
    TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,70,100))
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
    TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,70,100))
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
    TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,70,100))
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
    TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,70,100))
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
    TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,70,100))
    end
    end)
   end)
  

  Dungeon:Seperator("ESP")
  
  function isnil(thing)
 return (thing == nil)
 end
 local function round(n)
 return math.floor(tonumber(n) + 0.5)
 end
 Number = math.random(1, 1000000)
 function UpdateEspPlayer()
 for i,v in pairs(game:GetService'Players':GetChildren()) do
 pcall(function()
  if not isnil(v.Character) then
  if ESPPlayer then
  if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
  local bill = Instance.new('BillboardGui',v.Character.Head)
  bill.Name = 'NameEsp'..Number
  bill.ExtentsOffset = Vector3.new(0, 1, 0)
  bill.Size = UDim2.new(1,200,1,30)
  bill.Adornee = v.Character.Head
  bill.AlwaysOnTop = true
  local name = Instance.new('TextLabel',bill)
  name.Font = "Code"
  name.FontSize = "Size14"
  name.TextWrapped = true
  name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
  name.Size = UDim2.new(1,0,1,0)
  name.TextYAlignment = 'Top'
  name.BackgroundTransparency = 1
  name.TextStrokeTransparency = 0.5
  if v.Team == game.Players.LocalPlayer.Team then
  name.TextColor3 = Color3.new(0,255,0)
  else
   name.TextColor3 = Color3.new(255,0,0)
  end
  else
   v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
  end
  else
   if v.Character.Head:FindFirstChild('NameEsp'..Number) then
  v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
  end
  end
  end
  end)
 end
 end

function UpdateIslandESP()
 for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
 pcall(function()
  if IslandESP then
  if v.Name ~= "Sea" then
  if not v:FindFirstChild('NameEsp') then
  local bill = Instance.new('BillboardGui',v)
  bill.Name = 'NameEsp'
  bill.ExtentsOffset = Vector3.new(0, 1, 0)
  bill.Size = UDim2.new(1,200,1,30)
  bill.Adornee = v
  bill.AlwaysOnTop = true
  local name = Instance.new('TextLabel',bill)
  name.Font = "Code"
  name.FontSize = "Size14"
  name.TextWrapped = true
  name.Size = UDim2.new(1,0,1,0)
  name.TextYAlignment = 'Top'
  name.BackgroundTransparency = 1
  name.TextStrokeTransparency = 0.5
  name.TextColor3 = Color3.fromRGB(80, 245, 245)
  else
   v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
  end
  end
  else
   if v:FindFirstChild('NameEsp') then
  v:FindFirstChild('NameEsp'):Destroy()
  end
  end
  end)
 end
 end
 
 function UpdateChestEsp()
 for i,v in pairs(game.Workspace:GetChildren()) do
 pcall(function()
  if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
  if ChestESP then
  if (v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3") and (v.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 60000 then
  if not v:FindFirstChild("ChestESP"..Number) then
  local Bb = Instance.new("BillboardGui", v)
  Bb.Name = "ChestESP"..Number
  Bb.ExtentsOffset = Vector3.new(0, 1, 0)
  Bb.Size = UDim2.new(1, 200, 1, 30)
  Bb.Adornee = v
  Bb.AlwaysOnTop = true
  local Textlb = Instance.new("TextLabel", Bb)
  Textlb.Font = "Code"
  Textlb.FontSize = "Size14"
  Textlb.Size = UDim2.new(1,0,1,0)
  Textlb.BackgroundTransparency = 1
  Textlb.TextStrokeTransparency = 0.5
  if v.Name == "Chest1" then
  Textlb.TextColor3 = Color3.fromRGB(174, 123, 47)
  Textlb.Text = "Bronze Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
  end
  if v.Name == "Chest2" then
  Textlb.TextColor3 = Color3.fromRGB(255, 255, 127)
  Textlb.Text = "Gold Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
  end
  if v.Name == "Chest3" then
  Textlb.Text = "Diamond Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
  Textlb.TextColor3 = Color3.fromRGB(5, 243, 255)
  end
  else
   v["ChestESP"..Number].TextLabel.Text = v.Name.."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
  end
  end
  else
   if v:FindFirstChild("ChestESP"..Number) then
  v:FindFirstChild("ChestESP"..Number):Destroy()
  end
  end
  end
  end)
 end
 end
 
 function UpdateBfEsp()
 for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
 pcall(function()
  if DevilFruitESP then
  if string.find(v.Name, "Fruit") then
  if not v.Handle:FindFirstChild('NameEsp'..Number) then
  local bill = Instance.new('BillboardGui',v.Handle)
  bill.Name = 'NameEsp'..Number
  bill.ExtentsOffset = Vector3.new(0, 1, 0)
  bill.Size = UDim2.new(1,200,1,30)
  bill.Adornee = v.Handle
  bill.AlwaysOnTop = true
  local name = Instance.new('TextLabel',bill)
  name.Font = "Code"
  name.FontSize = "Size14"
  name.TextWrapped = true
  name.Size = UDim2.new(1,0,1,0)
  name.TextYAlignment = 'Top'
  name.BackgroundTransparency = 1
  name.TextStrokeTransparency = 0.5
  name.TextColor3 = Color3.fromRGB(255, 0, 0)
  name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
  else
   v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
  end
  end
  else
   if v.Handle:FindFirstChild('NameEsp'..Number) then
  v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
  end
  end
  end)
 end
 end
 
 function UpdateFlowerEsp()
 for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
 pcall(function()
  if v.Name == "Flower2" or v.Name == "Flower1" then
  if FlowerESP then
  if not v:FindFirstChild('NameEsp'..Number) then
  local bill = Instance.new('BillboardGui',v)
  bill.Name = 'NameEsp'..Number
  bill.ExtentsOffset = Vector3.new(0, 1, 0)
  bill.Size = UDim2.new(1,200,1,30)
  bill.Adornee = v
  bill.AlwaysOnTop = true
  local name = Instance.new('TextLabel',bill)
  name.Font = "Code"
  name.FontSize = "Size14"
  name.TextWrapped = true
  name.Size = UDim2.new(1,0,1,0)
  name.TextYAlignment = 'Top'
  name.BackgroundTransparency = 1
  name.TextStrokeTransparency = 0.5
  name.TextColor3 = Color3.fromRGB(255, 0, 0)
  if v.Name == "Flower1" then
  name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
  name.TextColor3 = Color3.fromRGB(255, 0, 0)
  end
  if v.Name == "Flower2" then
  name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
  name.TextColor3 = Color3.fromRGB(255, 0, 0)
  end
  else
   v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
  end
  else
   if v:FindFirstChild('NameEsp'..Number) then
  v:FindFirstChild('NameEsp'..Number):Destroy()
  end
  end
  end
  end)
 end
 end
 
 Esp:Seperator("ESP")
  
  Esp:Toggle("ESP Player",false,function(value)
   ESPPlayer = value
   while ESPPlayer do wait()
   UpdateEspPlayer()
   end
   end)
  
  Esp:Toggle("ESP Chest",false,function(value)
   ChestESP = value
   while ChestESP do wait()
   UpdateChestEsp()
   end
   end)
  
  Esp:Toggle("ESP Fruit",false,function(value)
   DevilFruitESP = value
   while DevilFruitESP do wait()
   UpdateBfEsp()
   end
   end)
  
  Esp:Toggle("ESP Flower",false,function(value)
   FlowerESP = value
   while FlowerESP do wait()
   UpdateFlowerEsp()
   end
   end)
  
  Esp:Toggle("ESP Island",IslandESP,function(value)
   IslandESP = value
   while IslandESP do wait()
   UpdateIslandESP()
   end
   end)
   Shop:Seperator("Abilities")
 
 Shop:Button("Buy Geppo",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
  end)
 
 Shop:Button("Buy Buso Haki",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
  end)
 
 Shop:Button("Buy Soru",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
  end)
 
 Shop:Button("Buy Observation(Ken) Haki",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
  end)
 
 Shop:Seperator("Fighting Style")
 
 Shop:Button("Buy Black Leg",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
  end)
 
 Shop:Button("Buy Electro",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
  end)
 
 Shop:Button("Buy Fishman Karate",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
  end)
 
 Shop:Button("Buy Dragon Claw",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
  end)
 
 Shop:Button("Buy Superhuman",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
  end)
 
 Shop:Button("Buy Death Step",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
  end)
 
 Shop:Button("Buy Sharkman Karate",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
  end)
 
 Shop:Button("Buy Electric Claw",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
  end)
 
 Shop:Button("Buy Dragon Talon",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
  end)
 Shop:Button("Buy GodHuman",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
  end)
 Shop:Button("Buy Sanguine Art",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
  end)
  
 -----Shop----------------
 Shop:Seperator("Accessory")
 
 Shop:Button("Tomoe Ring",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
  end)
 
 Shop:Button("Black Cape",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
  end)
 
 Shop:Button("Swordsman Hat",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
  end)
 
 Shop:Seperator("Sword")
 
 Shop:Button("Cutlass",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
  end)
 
 Shop:Button("Katana",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
  end)
 
 Shop:Button("Iron Mace",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
  end)
 
 Shop:Button("Duel Katana",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
  end)
 
 Shop:Button("Triple Katana", function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
  end)
 
 Shop:Button("Pipe",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
  end)
 
 Shop:Button("Dual Headed Blade",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
  end)
 
 Shop:Button("Bisento",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
  end)
 
 Shop:Button("Soul Cane",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
  end)
 
 Shop:Seperator("Gun")
 
 Shop:Button("Slingshot",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
  end)
 
 Shop:Button("Musket",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
  end)
 
 Shop:Button("Flintlock",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
  end)
 
 Shop:Button("Refined Flintlock",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
  end)
 
 Shop:Button("Cannon",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
  end)
 
 Shop:Button("Kabucha",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
 end)
 
 Shop:Button("Race Reroll",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,3)
 end)
 D:Seperator("Sniper")
 
 FruitList = {
  "Bomb-Bomb",
  "Spike-Spike",
  "Chop-Chop",
  "Spring-Spring",
  "Kilo-Kilo",
  "Spin-Spin",
  "Bird: Falcon",
  "Smoke-Smoke",
  "Flame-Flame",
  "Ice-Ice",
  "Sand-Sand",
  "Dark-Dark",
  "Revive-Revive",
  "Diamond-Diamond",
  "Light-Light",
  "Love-Love",
  "Rubber-Rubber",
  "Barrier-Barrier",
  "Magma-Magma",
  "Door-Door",
  "Quake-Quake",
  "Human-Human: Buddha",
  "String-String",
  "Bird-Bird: Phoenix",
  "Rumble-Rumble",
  "Paw-Paw",
  "Gravity-Gravity",
  "Dough-Dough",
  "Venom-Venom",
  "Shadow-Shadow",
  "Control-Control",
  "Soul-Soul",
  "Dragon-Dragon"
 }
 
 _G.SelectFruit = ""
 D:Dropdown("Select Fruits Sniper",FruitList,function(value)
  _G.SelectFruit = value
  end)
 
 D:Toggle("Auto Buy Fruit Sniper",_G.AutoBuyFruitSniper,function(value)
  _G.AutoBuyFruitSniper = value
  end)
 
 D:Seperator("Others")
 
 D:Dropdown("Select Fruits Eat",FruitList,function(value)
  _G.SelectFruitEat = value
  end)
 
 D:Toggle("Auto Eat Fruit",_G.AutoEatFruit,function(value)
  _G.AutoEatFruit = value
  end)
 
 spawn(function()
  pcall(function()
   while wait(.1) do
   if _G.AutoEatFruit then
   game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer()
   end
   end
   end)
  end)
 
 D:Toggle("Auto Eat Fruit Hop",_G.AutoEatFruitHop,function(value)
  _G.AutoEatFruitHop = value
  end)
 
 spawn(function()
  pcall(function()
   while wait(.1) do wait(10)
   if _G.AutoEatFruitHop and _G.SelectFruitEat ~= nil then
   if not game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat) or not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(_G.SelectFruitEat) then
   Hop()
   else
    game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer()
   end
   end
   end
   end)
  end)
 
 spawn(function()
  pcall(function()
   while wait(.1) do
   if _G.AutoBuyFruitSniper then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.SelectFruit)
   end
   end
   end)
  end)
 
 D:Toggle("Auto Random Fruit",_G.Random_Auto,function(value)
  _G.Random_Auto = value
  end)
 
 spawn(function()
  pcall(function()
   while wait(.1) do
   if _G.Random_Auto then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
   end
   end
   end)
  end)
 
 D:Button("Random Fruit",function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
  end)
 
 
 D:Toggle("Auto Drop Fruit",_G.DropFruit,function(value)
  _G.DropFruit = value
  end)
 
 spawn(function()
  while wait() do
  if _G.DropFruit then
  pcall(function()
   for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
   if string.find(v.Name, "Fruit") then
   EquipWeapon(v.Name)
   wait(.1)
   if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
   end
   EquipWeapon(v.Name)
   game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
   end
   end
   for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
   if string.find(v.Name, "Fruit") then
   EquipWeapon(v.Name)
   wait(.1)
   if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
   game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
   end
   EquipWeapon(v.Name)
   game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
   end
   end
   end)
  end
  end
  end)
 
 D:Toggle("Auto Store Fruit",_G.AutoStoreFruit,function(value)
  _G.AutoStoreFruit = value
  end)
 
 spawn(function()
  pcall(function()
   while wait(.1) do
   if _G.AutoStoreFruit then
   for i,v in pairs(FruitList) do
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v)
   end
   end
   end
   end)
  end)
 
 
 D:Toggle("Grab Fruit",_G.BringFruit,function(value)
  _G.BringFruit = value
  pcall(function()
   while _G.BringFruit do wait(.1)
   for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
   if v:IsA("Tool") then
   local OldCFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame * CFrame.new(0,0,8)
   v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
   wait(.1)
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
   end
   end
   end
   end)
  end)
 
 D:Toggle("Bring All Fruit 75% Kick System",_G.BringFruitBF,function(value)
  _G.BringFruitBF = value
  end)
 
 spawn(function()
  while wait() do
  if _G.BringFruitBF then
  pcall(function()
   for i,v in pairs(game.Workspace:GetChildren()) do
   if v:IsA("Tool") then
   v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   end
   end
   end)
  end
  end
  end)
  
 Misc:Seperator("Server")
 
 Misc:Button("Rejoin Server",function()
  game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
  end)
 
 Misc:Button("Server Hop",function()
  Hop()
  end)
 
 Misc:Button("Hop To Lower Player",function()
  getgenv().AutoTeleport = true
  getgenv().DontTeleportTheSameNumber = true
  getgenv().CopytoClipboard = false
  if not game:IsLoaded() then
  print("Game is loading waiting...")
  end
  local maxplayers = math.huge
  local serversmaxplayer;
  local goodserver;
  local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
  function serversearch()
  for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
  if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
  serversmaxplayer = v.maxPlayers
  maxplayers = v.playing
  goodserver = v.id
  end
  end
  end
  function getservers()
  serversearch()
  for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
  if i == "nextPageCursor" then
  if gamelink:find("&cursor=") then
  local a = gamelink:find("&cursor=")
  local b = gamelink:sub(a)
  gamelink = gamelink:gsub(b, "")
  end
  gamelink = gamelink .. "&cursor=" ..v
  getservers()
  end
  end
  end
  getservers()
  if AutoTeleport then
  if DontTeleportTheSameNumber then
  if #game:GetService("Players"):GetPlayers() - 4 == maxplayers then
  return warn("It has same number of players (except you)")
  elseif goodserver == game.JobId then
  return warn("Your current server is the most empty server atm")
  end
  end
  game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
  end
  end)
 
 Misc:Seperator("Joins")
 
 Misc:Button("Join Pirates Team",function()
 		local args = {
			[1] = "SetTeam",
			[2] = "Pirates"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
		local args = {
			[1] = "BartiloQuestProgress"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
 

Misc:Button("Join Marines Team",function()
 local args = {
			[1] = "SetTeam",
			[2] = "Marines"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "BartiloQuestProgress"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)


Misc:Button("Rejoin",function()
 local ts = game:GetService("TeleportService")
		local p = game:GetService("Players").LocalPlayer
		ts:Teleport(game.PlaceId, p)
end)

Misc:Button("Sever Hop",function()
 Hop()
end)

Misc:Button("Hop To Lower Player",function()
    getgenv().AutoTeleport = true
    getgenv().DontTeleportTheSameNumber = true 
    getgenv().CopytoClipboard = false
    if not game:IsLoaded() then
        print("Game is loading waiting...")
    end
    local maxplayers = math.huge
    local serversmaxplayer;
    local goodserver;
    local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100" 
    function serversearch()
        for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
            if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
                serversmaxplayer = v.maxPlayers
                maxplayers = v.playing
                goodserver = v.id
            end
        end       
    end
    function getservers()
        serversearch()
        for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
            if i == "nextPageCursor" then
                if gamelink:find("&cursor=") then
                    local a = gamelink:find("&cursor=")
                    local b = gamelink:sub(a)
                    gamelink = gamelink:gsub(b, "")
                end
                gamelink = gamelink .. "&cursor=" ..v
                getservers()
            end
        end
    end 
    getservers()
    if AutoTeleport then
        if DontTeleportTheSameNumber then 
            if #game:GetService("Players"):GetPlayers() - 4  == maxplayers then
                return warn("It has same number of players (except you)")
            elseif goodserver == game.JobId then
                return warn("Your current server is the most empty server atm") 
            end
        end
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
    end
end)

Misc:Seperator("Open Menu")

Misc:Button("Inventory",function()
 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
		game.Players.localPlayer.PlayerGui.Main.Inventory.Visible = true
end)

Misc:Button("Devil Fruit Shop",function()
 local args = {
			[1] = "GetFruits"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
end)


Misc:Button("Title Name",function()
 local args = {
			[1] = "getTitles"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)


Misc:Button("Color Haki",function()
 game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)


Misc:Seperator("Player Misc")

Misc:Toggle("No Clip",_G.No_clip,function(value)
 _G.No_clip = value
end)


spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.No_clip then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
        end)
    end)
end)

Misc:Toggle("Infinit Energy",_G.Infinit_Energy,function(value)
 _G.Infinit_Energy = value
InfinitEnergy()
end)


Misc:Toggle("Dodge No CoolDown",_G.Dodge_No_CoolDown,function(value)
 _G.Dodge_No_CoolDown = value
DodgeNoCoolDown()
end)


Misc:Toggle("Infinit Ability",_G.Infinit_Ability,function(value)
 _G.Infinit_Ability = value
end)


spawn(function()
	while wait() do
		if _G.Infinit_Ability then
			InfAbility()
		end
	end
end)

Misc:Toggle("Infinit Sky Jump",_G.Infinit_SkyJump,function(value)
 _G.Infinit_SkyJump = value
SkyJumpNoCoolDown()
end)

Misc:Toggle("Dodge No Cooldown",false,function(value)
        nododgecool = value
        NoDodgeCool()
    end)
    
    Misc:Toggle("Infinite Energy",false,function(value)
        InfiniteEnergy = value
        originalstam = LocalPlayer.Character.Energy.Value
    end)
    
    Misc:Toggle("Auto Active Race",_G.AutoAgility,function(value)
        _G.AutoAgility = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoAgility then
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                end
            end
        end)
    end)
    
    Misc:Toggle("Infinite Obversation Range",getgenv().InfiniteObRange,function(value)
        getgenv().InfiniteObRange = value
        local VS = game:GetService("Players").LocalPlayer.VisionRadius.Value
        while getgenv().InfiniteObRange do
            wait()
            local player = game:GetService("Players").LocalPlayer
            local char = player.Character
            local VisionRadius = player.VisionRadius
            if player then
                if char.Humanoid.Health <= 0 then 
                    wait(5) 
                end
                VisionRadius.Value = math.huge
            elseif getgenv().InfiniteObRange == false and player then
                VisionRadius.Value = VS
            end
        end
    end)
    
    Misc:Toggle("Infinite Geppo",getgenv().InfGeppo,function(value)
        getgenv().InfGeppo = value
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().InfGeppo then
                    for i,v in next, getgc() do
                        if game:GetService("Players").LocalPlayer.Character.Geppo then
                            if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Geppo then
                                for i2,v2 in next, getupvalues(v) do
                                    if tostring(i2) == "9" then
                                        repeat wait(.1)
                                            setupvalue(v,i2,0)
                                        until not getgenv().InfGeppo or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0 
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    Misc:Toggle("Infinite Soru",getgenv().InfSoru,function(value)
        getgenv().InfSoru = value
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().InfSoru and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
                    for i,v in next, getgc() do
                        if game:GetService("Players").LocalPlayer.Character.Soru then
                            if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
                                for i2,v2 in next, getupvalues(v) do
                                    if typeof(v2) == "table" then
                                        repeat wait(.1)
                                            v2.LastUse = 0
                                        until not getgenv().InfSoru or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
Op:Label("Name : "..game.Players.LocalPlayer.Name)



if W then
Op:Label("World : 1")
end

if W2 then
Op:Label("World : 2")
end

if W3 then
Op:Label("World : 3")
end

Op:Label("Race : "..game:GetService("Players").LocalPlayer.Data.Race.Value)

Op:Label("Fruit : "..game.Players.LocalPlayer.Data.DevilFruit.Value)

Op:Label("Level : "..game.Players.localPlayer.Data.Level.Value)

Op:Label("Bounty : "..game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)

Op:Seperator("Sword")

local Saber = Op:Label("❌ : Saber")
local Rengoku = Op:Label("❌ : Rengoku")
local Midnight_Blade = Op:Label("❌ : Midnight Blade")
local Dragon_Trident = Op:Label("❌ : Dragon Trident")
local Yama = Op:Label("❌ : Yama")
local Buddy_Sword = Op:Label("❌ : Buddy Sword")
local Canvander = Op:Label("❌ : Canvander")
local Twin_Hooks = Op:Label("❌ : Twin Hooks")
local Spikey_Trident = Op:Label("❌ : Spikey Trident")
local Hallow_Scythe = Op:Label("❌ : Hallow Scythe")
local Dark_Dagger = Op:Label("❌ : Dark Dagger")
local Tushita = Op:Label("❌ : Tushita")

spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                if v.Name == "Saber" then
                    Saber:Set("✅ : Saber")
                end
                if v.Name == "Rengoku" then
                    Rengoku:Set("✅ : Rengoku")
                end
                if v.Name == "Midnight Blade" then
                    Midnight_Blade:Set("✅ : Midnight Blade")
                end
                if v.Name == "Dragon Trident" then
                    Dragon_Trident:Set("✅ : Dragon Trident")
                end
                if v.Name == "Yama" then
                    Yama:Set("✅ : Yama")
                end
                if v.Name == "Buddy Sword" then
                    Buddy_Sword:Set("✅ : Buddy Sword")
                end
                if v.Name == "Canvander" then
                    Canvander:Set("✅ : Canvander")
                end
                if v.Name == "Twin Hooks" then
                    Twin_Hooks:Set("✅ : Twin Hooks")
                end
                if v.Name == "Spikey Trident" then
                    Spikey_Trident:Set("✅ : Spikey Trident")
                end
                if v.Name == "Hallow Scythe" then
                    Hallow_Scythe:Set("✅ : Hallow Scythe")
                end
                if v.Name == "Dark Dagger" then
                    Dark_Dagger:Set("✅ : Dark Dagger")
                end
                if v.Name == "Tushita" then
                    Tushita:Set("✅ : Tushita")
                 end
            end
        end)
    end
end)

Op:Seperator("Quest")

local Bartilo_Quest = Op:Label("❌ : Bartilo Quest")
local Don_Swan_Quest = Op:Label("❌ : Don Swan Quest")
local Kill_Don_Swan = Op:Label("❌ : Kill Don Swan")

spawn(function()
    while task.wait() do
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
            Bartilo_Quest:Set("✅ : Bartilo Quest")
        end

        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
            --Nothing
        else
            Don_Swan_Quest:Set("✅ : Don Swan Quest")
        end

        if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
            Kill_Don_Swan:Set("✅ : Kill Don Swan")
        end
    end
end)

Op:Seperator("Sword Legendary")

local Shisui = Op:Label("❌ : Shisui")
local Saddi = Op:Label("❌ : Saddi")
local Wando = Op:Label("❌ : Wando")
local True_Triple_Katana = Op:Label("❌ : True Triple Katana")

spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                if v.Name == "Shisui" then
                    Shisui:Set("✅ : Shisui")
                end
                if v.Name == "Saddi" then
                    Saddi:Set("✅ : Saddi")
                end
                if v.Name == "Wando" then
                    Wando:Set("✅ : Wando")
                end
                if v.Name == "True Triple Katana" then
                    True_Triple_Katana:Set("✅ : True Triple Katana")
                end
            end
        end)
    end
end)

Op:Seperator("Melee")

local Superhuman = Op:Label("❌ : Superhuman")
local Death_Step = Op:Label("❌ : Death Step")
local Sharkman_Karate = Op:Label("❌ : Sharkman Karate")
local Electric_Claw = Op:Label("❌ : Electric Claw")
local Dragon_Talon = Op:Label("❌ : Dragon Talon")
local God_Human = Op:Label("❌ : God Human")

spawn(function()
    while task.wait() do
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true) == 1 then
            Superhuman:Set("✅ : Superhuman")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true) == 1 then
            Death_Step:Set("✅ : Death Step")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 then
            Sharkman_Karate:Set("✅ : Sharkman Karate")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 1 then
            Electric_Claw:Set("✅ : Electric Claw")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then
            Dragon_Talon:Set("✅ : Dragon Talon")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodHuman",true) == 1 then
            God_Human:Set("✅ : God Human")
        end
    end
end)

Op:Seperator("Gun")

local Kabu_cha = Op:Label("❌ : Kabucha")
local Acidum_Rifle = Op:Label("❌ : Acidum Rifle")
local Bizarre_Rifle = Op:Label("❌ : Bizarre Rifle")

spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                if v.Name == "Kabucha" then
                    Kabu_cha:Set("✅ : Kabucha")
                end
                if v.Name == "Acidum Rifle" then
                    Acidum_Rifle:Set("✅ : Acidum Rifle")
                end
                if v.Name == "Bizarre Rifle" then
                    Bizarre_Rifle:Set("✅ : Bizarre Rifle")
                end
            end
        end)
    end
end)



Op:Seperator("Accessory")

local Dark_Coat = Op:Label("❌ : Dark Coat")
local Ghoul_Mask = Op:Label("❌ : Ghoul Mask")
local Swan_Glass = Op:Label("❌ : Swan Glass")
local Pale_Scarf = Op:Label("❌ : Pale Scarf")
local Valkyrie_Helm = Op:Label("❌ : Valkyrie Helm")


spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                if v.Name == "Dark Coat" then
                    Dark_Coat:Set("✅ : Dark Coat")
                end
                if v.Name == "Ghoul Mask" then
                    Ghoul_Mask:Set("✅ : Ghoul Mask")
                end
                if v.Name == "Swan Glasses" then
                    Swan_Glass:Set("✅ : Swan Glass")
                end
                if v.Name == "Pale Scarf" then
                    Pale_Scarf:Set("✅ : Pale Scarf")
                end
                if v.Name == "Valkyrie Helmet" then
                    Valkyrie_Helm:Set("✅ : Valkyrie Helmet")
                end
            end
        end)
    end
end)