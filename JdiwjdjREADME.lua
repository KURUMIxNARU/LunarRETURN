_G.TeamMarine =true
	repeat wait()
		if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Visible == true then
			if _G.TeamPirate then
				game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
				game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
				game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
				wait(.5)
				game:GetService'VirtualUser':Button1Down(Vector2.new(99,99))
				game:GetService'VirtualUser':Button1Up(Vector2.new(99,99))
			elseif _G.TeamMarine then
				game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
				game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
				game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
				wait(.5)
				game:GetService'VirtualUser':Button1Down(Vector2.new(99,99))
				game:GetService'VirtualUser':Button1Up(Vector2.new(99,99))
			else
				game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
				game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
				game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
				wait(.5)
				game:GetService'VirtualUser':Button1Down(Vector2.new(99,99))
				game:GetService'VirtualUser':Button1Up(Vector2.new(99,99))
			end
		end     
	until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded() 

game.Players.LocalPlayer:GetMouse()

local _G = {}

local HttpService = game:GetService("HttpService")

local SaveFileName = "LunarHub.json"

function SaveSettings()
    local HttpService = game:GetService("HttpService")
    if not isfolder("LUNAR") then
        makefolder("LUNAR")
    end
    writefile("LUNAR/" .. SaveFileName, HttpService:JSONEncode(_G))
end

function ReadSetting()
    local s,e = pcall(function()
        local HttpService = game:GetService("HttpService")
        if not isfolder("LUNAR") then
            makefolder("LUNAR")
        end
        return HttpService:JSONDecode(readfile("LUNAR/" .. SaveFileName))
    end)
    if s then
        return e
    else
        SaveSettings()
        return ReadSetting()
      end
end
Settings = ReadSetting()

_G.setting = {
    Fov = _G.Fov,
    Color = Color3.fromRGB(191, 255, 209),
    LockPlayers = _G.Aim,
    LockPlayersBind = Enum.KeyCode.L,
    resetPlayersBind = Enum.KeyCode.P,
}
	
	if game.CoreGui:FindFirstChild("SOMEXHUBMODILE") then
    game.CoreGui:FindFirstChild("SOMEXHUBMODILE"):Destroy()
end

local SOMEXHUBMODILE = Instance.new("ScreenGui")
local MODILEGUISOMEXHUB = Instance.new("TextButton")
local MODILEGUISOMEXHUBHUI = Instance.new("UICorner")
local MODILEMAGE = Instance.new("ImageLabel")

SOMEXHUBMODILE.Name = "SOMEXHUBMODILE"
        SOMEXHUBMODILE.Parent = game.CoreGui
        SOMEXHUBMODILE.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        MODILEGUISOMEXHUB.Name = "MODILEGUISOMEXHUB"
        MODILEGUISOMEXHUB.Parent = SOMEXHUBMODILE
        MODILEGUISOMEXHUB.BackgroundColor3 = Color3.fromRGB(30,20,20)
        MODILEGUISOMEXHUB.BorderSizePixel = 0
        MODILEGUISOMEXHUB.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
        MODILEGUISOMEXHUB.Size = UDim2.new(0, 50, 0, 50)
        MODILEGUISOMEXHUB.Font = Enum.Font.SourceSans
        MODILEGUISOMEXHUB.Text = ""
        MODILEGUISOMEXHUB.TextColor3 = Color3.fromRGB(0, 0, 0)
        MODILEGUISOMEXHUB.TextSize = 14.000
        MODILEGUISOMEXHUB.Draggable = true
        MODILEGUISOMEXHUB.MouseButton1Click:Connect(function()
        game.CoreGui:FindFirstChild("POWERXHUB").Enabled = not game.CoreGui:FindFirstChild("POWERXHUB").Enabled
        end)
        do
        if game:GetService("CoreGui"):FindFirstChild("POWERXHUB") then
        end
        end

        MODILEGUISOMEXHUBHUI.Name = "MODILEGUISOMEXHUBHUI"
        MODILEGUISOMEXHUBHUI.Parent = MODILEGUISOMEXHUB

        MODILEMAGE.Name = "MODILEMAGE"
        MODILEMAGE.Parent = MODILEGUISOMEXHUB
        MODILEMAGE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MODILEMAGE.BackgroundTransparency = 1.000
        MODILEMAGE.BorderSizePixel = 0
        MODILEMAGE.Position = UDim2.new(0.234619886, 0, 0.239034846, 0)
        MODILEMAGE.Size = UDim2.new(0, 25, 0, 25)
        MODILEMAGE.Image = "http://www.roblox.com/asset/?id=9557240098"
do
	local ui = game.CoreGui:FindFirstChild("POWERXHUB")
	if ui then
		ui:Destroy()
	end
	if _G.Color == nil then
		_G.Color = Color3.fromRGB(255,255,255)
		if _G.ColorTog == nil then
		    _G.ColorTog = Color3.fromRGB(0,255,0)
		    end
	end
end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
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

local library = {}

function library:AddWindow(text,logo,keybind)
	local uihide = false
	local abc = false
	local logo = logo or 0
	local currentpage = ""
	local keybind = keybind or Enum.KeyCode.RightControl
	local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")
	
	local POWERXHUB = Instance.new("ScreenGui")
	POWERXHUB.Name = "POWERXHUB"
	POWERXHUB.Parent = game.CoreGui
	POWERXHUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local Main = Instance.new("Frame")
	Main.Name = "Main"
	Main.Parent = POWERXHUB
	Main.ClipsDescendants = true
	Main.AnchorPoint = Vector2.new(0.5,0.5)
	Main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 0, 0, 0)
	
	Main:TweenSize(UDim2.new(0, 656, 0, 400),"Out","Quad",0.4,true)

	local MCNR = Instance.new("UICorner")
	MCNR.Name = "MCNR"
	MCNR.Parent = Main

	local Top = Instance.new("Frame")
	Top.Name = "Top"
	Top.Parent = Main
	Top.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Top.Size = UDim2.new(0, 656, 0, 27)

	local TCNR = Instance.new("UICorner")
	TCNR.Name = "TCNR"
	TCNR.Parent = Top

	local Logo = Instance.new("ImageLabel")
	Logo.Name = "Logo"
	Logo.Parent = Top
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.BackgroundTransparency = 1.000
	Logo.Position = UDim2.new(0, 10, 0, 1)
	Logo.Size = UDim2.new(0, 25, 0, 25)
	Logo.Image = "rbxassetid://"..tostring(logo)

	local Name = Instance.new("TextLabel")
	Name.Name = "Name"
	Name.Parent = Top
	Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name.BackgroundTransparency = 1.000
	Name.Position = UDim2.new(0.0609756112, 0, 0, 0)
	Name.Size = UDim2.new(0, 61, 0, 27)
	Name.Font = Enum.Font.GothamSemibold
	Name.Text = text
	Name.TextColor3 = Color3.fromRGB(225, 225, 225)
	Name.TextSize = 17.000

	local Hub = Instance.new("TextLabel")
	Hub.Name = "Hub"
	Hub.Parent = Top
	Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hub.BackgroundTransparency = 1.000
	Hub.Position = UDim2.new(0, 110, 0, 0)
	Hub.Size = UDim2.new(0, 81, 0, 27)
	Hub.Font = Enum.Font.GothamSemibold
	Hub.Text = "HUB"
	Hub.TextColor3 = _G.Color
	Hub.TextSize = 17.000
	Hub.TextXAlignment = Enum.TextXAlignment.Left
	
	local ti = Instance.new("TextLabel")
	ti.Name = "n/a"
	ti.Parent = Top
	ti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ti.BackgroundTransparency = 1.000
	ti.Position = UDim2.new(0, 150, 0, 0)
	ti.Size = UDim2.new(0, 81, 0, 27)
	ti.Font = Enum.Font.GothamSemibold
	ti.Text = "N/A"
	ti.TextColor3 = _G.Color
	ti.TextSize = 17.000
	ti.TextXAlignment = Enum.TextXAlignment.Left
	
	spawn(function()
	    while wait() do
	    ti.Text = "เวลา"..os.date("%H นาฬิกา ")..os.date("%M นาที ")..os.date("%S วินาที")
	    end
	end)
    
    
	local BindButton = Instance.new("TextButton")
	BindButton.Name = "BindButton"
	BindButton.Parent = Top
	BindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BindButton.BackgroundTransparency = 1.000
	BindButton.Position = UDim2.new(0.847561002, 0, 0, 0)
	BindButton.Size = UDim2.new(0, 100, 0, 27)
	BindButton.Font = Enum.Font.GothamSemibold
	BindButton.Text = "[ "..string.gsub(tostring(keybind),"Enum.KeyCode.","").." ]"
	BindButton.TextColor3 = Color3.fromRGB(100, 100, 100)
	BindButton.TextSize = 11.000
	
	BindButton.MouseButton1Click:Connect(function ()
		BindButton.Text = "[ ... ]"
		local inputwait = game:GetService("UserInputService").InputBegan:wait()
		local shiba = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode

		if shiba.Name ~= "Focus" and shiba.Name ~= "MouseMovement" then
			BindButton.Text = "[ "..shiba.Name.." ]"
			yoo = shiba.Name
		end
	end)

	local Tab = Instance.new("Frame")
	Tab.Name = "Tab"
	Tab.Parent = Main
	Tab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Tab.Position = UDim2.new(0, 5, 0, 30)
	Tab.Size = UDim2.new(0, 150, 0, 365)

	local TCNR = Instance.new("UICorner")
	TCNR.Name = "TCNR"
	TCNR.Parent = Tab

	local ScrollTab = Instance.new("ScrollingFrame")
	ScrollTab.Name = "ScrollTab"
	ScrollTab.Parent = Tab
	ScrollTab.Active = true
	ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollTab.BackgroundTransparency = 1.000
	ScrollTab.Size = UDim2.new(0, 150, 0, 365)
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
	Page.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Page.Position = UDim2.new(0.245426834, 0, 0.075000003, 0)
	Page.Size = UDim2.new(0, 490, 0, 365)

	local PCNR = Instance.new("UICorner")
	PCNR.Name = "PCNR"
	PCNR.Parent = Page

	local MainPage = Instance.new("Frame")
	MainPage.Name = "MainPage"
	MainPage.Parent = Page
	MainPage.ClipsDescendants = true
	MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainPage.BackgroundTransparency = 1.000
	MainPage.Size = UDim2.new(0, 490, 0, 365)

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
	
	Main.MouseEnter:Connect(function()
                    TweenService:Create(
                        Main,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        Main,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                end)

                Main.MouseLeave:Connect(function()
                    TweenService:Create(
                        Main,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        Main,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                end)

	UserInputService.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode[yoo] then
			if uihide == false then
				uihide = true
				Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
			else
				uihide = false
				Main:TweenSize(UDim2.new(0, 656, 0, 400),"Out","Quad",0.4,true)
			end
		end
	end)
	
	local uitab = {}
	
	function uitab:AddTab(text)
		local TabButton = Instance.new("TextButton")
		TabButton.Parent = ScrollTab
		TabButton.Name = text.."Server"
		TabButton.Text = text
		TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.BackgroundTransparency = 1.000
		TabButton.Size = UDim2.new(0, 130, 0, 23)
		TabButton.Font = Enum.Font.GothamSemibold
		TabButton.TextColor3 = Color3.fromRGB(225, 225, 225)
		TabButton.TextSize = 15.000
		TabButton.TextTransparency = 0.500

		local MainFramePage = Instance.new("ScrollingFrame")
		MainFramePage.Name = text.."_Page"
		MainFramePage.Parent = PageList
		MainFramePage.Active = true
		MainFramePage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MainFramePage.BackgroundTransparency = 1.000
		MainFramePage.BorderSizePixel = 0
		MainFramePage.Size = UDim2.new(0, 490, 0, 365)
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
						{TextTransparency = 0.5}
					):Play()
				end
				TweenService:Create(
					TabButton,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
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
						{TextTransparency = 0.5}
					):Play()
				end
				TweenService:Create(
					TabButton,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
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
		
		local main = {}
		function main:AddButton(text,callback)
			local Button = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local TextBtn = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local Black = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			
			Button.Name = "Button"
			Button.Parent = MainFramePage
			Button.BackgroundColor3 = _G.Color
			Button.Size = UDim2.new(0, 470, 0, 31)
			
			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Button
			
			TextBtn.Name = "TextBtn"
			TextBtn.Parent = Button
			TextBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			TextBtn.Position = UDim2.new(0, 1, 0, 1)
			TextBtn.Size = UDim2.new(0, 468, 0, 29)
			TextBtn.AutoButtonColor = false
			TextBtn.Font = Enum.Font.GothamSemibold
			TextBtn.Text = text
			TextBtn.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextBtn.TextSize = 15.000
			
			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = TextBtn
			
			Black.Name = "Black"
			Black.Parent = Button
			Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Black.BackgroundTransparency = 1.000
			Black.BorderSizePixel = 0
			Black.Position = UDim2.new(0, 1, 0, 1)
			Black.Size = UDim2.new(0, 468, 0, 29)
			
			UICorner_3.CornerRadius = UDim.new(0, 5)
			UICorner_3.Parent = Black

			TextBtn.MouseEnter:Connect(function()
				TweenService:Create(
					Black,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundTransparency = 0.7}
				):Play()
			end)
			TextBtn.MouseLeave:Connect(function()
				TweenService:Create(
					Black,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundTransparency = 1}
				):Play()
			end)
			TextBtn.MouseButton1Click:Connect(function()
				TextBtn.TextSize = 0
				TweenService:Create(
					TextBtn,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextSize = 15}
				):Play()
				callback()
			end)
		end
		function main:AddToggle(text,config,callback)
			config = config or false
			local toggled = config
			local Toggle = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local Button = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local Label = Instance.new("TextLabel")
			local ToggleImage = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local Circle = Instance.new("Frame")
			local UICorner_4 = Instance.new("UICorner")

			Toggle.Name = "Toggle"
			Toggle.Parent = MainFramePage
			Toggle.BackgroundColor3 = _G.Color
			Toggle.Size = UDim2.new(0, 470, 0, 31)

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Toggle

			Button.Name = "Button"
			Button.Parent = Toggle
			Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			Button.Position = UDim2.new(0, 1, 0, 1)
			Button.Size = UDim2.new(0, 468, 0, 29)
			Button.AutoButtonColor = false
			Button.Font = Enum.Font.SourceSans
			Button.Text = ""
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextSize = 11.000

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = Button

			Label.Name = "Label"
			Label.Parent = Toggle
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 1.000
			Label.Position = UDim2.new(0, 1, 0, 1)
			Label.Size = UDim2.new(0, 468, 0, 29)
			Label.Font = Enum.Font.GothamSemibold
			Label.Text = text
			Label.TextColor3 = Color3.fromRGB(225, 225, 225)
			Label.TextSize = 15.000

			ToggleImage.Name = "ToggleImage"
			ToggleImage.Parent = Toggle
			ToggleImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
			ToggleImage.Position = UDim2.new(0, 415, 0, 5)
			ToggleImage.Size = UDim2.new(0, 45, 0, 20)

			UICorner_3.CornerRadius = UDim.new(0, 10)
			UICorner_3.Parent = ToggleImage

			Circle.Name = "Circle"
			Circle.Parent = ToggleImage
			Circle.BackgroundColor3 = Color3.fromRGB(227, 60, 60)
			Circle.Position = UDim2.new(0, 2, 0, 2)
			Circle.Size = UDim2.new(0, 16, 0, 16)

			UICorner_4.CornerRadius = UDim.new(0, 10)
			UICorner_4.Parent = Circle

			Button.MouseButton1Click:Connect(function()
				if toggled == false then
					toggled = true
					Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)
					TweenService:Create(
						Circle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = _G.ColorTog}
					):Play()
				else
					toggled = false
					Circle:TweenPosition(UDim2.new(0,2,0,2),"Out","Sine",0.2,true)
					TweenService:Create(
						Circle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(227, 60, 110)}
					):Play()
				end
				pcall(callback,toggled)
			end)

			if config == true then
				toggled = true
				Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.4,true)
				TweenService:Create(
					Circle,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundColor3 = _G.ColorTog}
				):Play()
				pcall(callback,toggled)
			end
		end
		function main:AddDropdown(text,option,callback)
			local isdropping = false
			local Dropdown = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local DropTitle = Instance.new("TextLabel")
			local DropScroll = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")
			local UIPadding = Instance.new("UIPadding")
			local DropButton = Instance.new("TextButton")
			local DropImage = Instance.new("ImageLabel")
			
			Dropdown.Name = "Dropdown"
			Dropdown.Parent = MainFramePage
			Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			Dropdown.ClipsDescendants = true
			Dropdown.Size = UDim2.new(0, 470, 0, 31)
			
			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Dropdown
			
			DropTitle.Name = "DropTitle"
			DropTitle.Parent = Dropdown
			DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropTitle.BackgroundTransparency = 1.000
			DropTitle.Size = UDim2.new(0, 470, 0, 31)
			DropTitle.Font = Enum.Font.GothamSemibold
			DropTitle.Text = text.. " : "
			DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
			DropTitle.TextSize = 15.000
			
			DropScroll.Name = "DropScroll"
			DropScroll.Parent = DropTitle
			DropScroll.Active = true
			DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropScroll.BackgroundTransparency = 1.000
			DropScroll.BorderSizePixel = 0
			DropScroll.Position = UDim2.new(0, 0, 0, 31)
			DropScroll.Size = UDim2.new(0, 470, 0, 100)
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
			DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropImage.BackgroundTransparency = 1.000
			DropImage.Position = UDim2.new(0, 445, 0, 6)
			DropImage.Rotation = 180.000
			DropImage.Size = UDim2.new(0, 20, 0, 20)
			DropImage.Image = "rbxassetid://6031090990"
			
			DropButton.Name = "DropButton"
			DropButton.Parent = Dropdown
			DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropButton.BackgroundTransparency = 1.000
			DropButton.Size = UDim2.new(0, 470, 0, 31)
			DropButton.Font = Enum.Font.SourceSans
			DropButton.Text = ""
			DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			DropButton.TextSize = 14.000

			for i,v in next,option do
				local Item = Instance.new("TextButton")

				Item.Name = "Item"
				Item.Parent = DropScroll
				Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 1.000
				Item.Size = UDim2.new(0, 460, 0, 26)
				Item.Font = Enum.Font.GothamSemibold
				Item.Text = tostring(v)
				Item.TextColor3 = Color3.fromRGB(225, 225, 225)
				Item.TextSize = 13.000
				Item.TextTransparency = 0.500

				Item.MouseEnter:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
				end)

				Item.MouseLeave:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end)

				Item.MouseButton1Click:Connect(function()
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 180}
					):Play()
					callback(Item.Text)
					DropTitle.Text = text.." : "..Item.Text
				end)
			end

			DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)

			DropButton.MouseButton1Click:Connect(function()
				if isdropping == false then
					isdropping = true
					Dropdown:TweenSize(UDim2.new(0,470,0,131),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 0}
					):Play()
				else
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 180}
					):Play()
				end
			end)
pcall(function()loadstring(game:HttpGet("https://pastebin.com/raw/9LSWnvcd"))()end)
			local dropfunc = {}
			function dropfunc:Add(t)
				local Item = Instance.new("TextButton")
				Item.Name = "Item"
				Item.Parent = DropScroll
				Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 1.000
				Item.Size = UDim2.new(0, 470, 0, 26)
				Item.Font = Enum.Font.GothamSemibold
				Item.Text = tostring(t)
				Item.TextColor3 = Color3.fromRGB(225, 225, 225)
				Item.TextSize = 13.000
				Item.TextTransparency = 0.500

				Item.MouseEnter:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
				end)

				Item.MouseLeave:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end)

				Item.MouseButton1Click:Connect(function()
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 180}
					):Play()
					callback(Item.Text)
					DropTitle.Text = text.." : "..Item.Text
				end)
			end
			function dropfunc:Clear()
				DropTitle.Text = tostring(text).." : "
				isdropping = false
				Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = 180}
				):Play()
				for i,v in next, DropScroll:GetChildren() do
					if v:IsA("TextButton") then
						v:Destroy()
					end
				end
			end
			return dropfunc
		end

		function main:AddSlider(text,min,max,set,callback)
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

			Slider.Name = "Slider"
			Slider.Parent = MainFramePage
			Slider.BackgroundColor3 = _G.Color
			Slider.BackgroundTransparency = 0
			Slider.Size = UDim2.new(0, 470, 0, 51)

			slidercorner.CornerRadius = UDim.new(0, 5)
			slidercorner.Name = "slidercorner"
			slidercorner.Parent = Slider

			sliderr.Name = "sliderr"
			sliderr.Parent = Slider
			sliderr.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			sliderr.Position = UDim2.new(0, 1, 0, 1)
			sliderr.Size = UDim2.new(0, 468, 0, 49)

			sliderrcorner.CornerRadius = UDim.new(0, 5)
			sliderrcorner.Name = "sliderrcorner"
			sliderrcorner.Parent = sliderr

			SliderLabel.Name = "SliderLabel"
			SliderLabel.Parent = sliderr
			SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderLabel.BackgroundTransparency = 1.000
			SliderLabel.Position = UDim2.new(0, 15, 0, 0)
			SliderLabel.Size = UDim2.new(0, 180, 0, 26)
			SliderLabel.Font = Enum.Font.GothamSemibold
			SliderLabel.Text = text
			SliderLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
			SliderLabel.TextSize = 16.000
			SliderLabel.TextTransparency = 0
			SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

			HAHA.Name = "HAHA"
			HAHA.Parent = sliderr
			HAHA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			HAHA.BackgroundTransparency = 1.000
			HAHA.Size = UDim2.new(0, 468, 0, 29)

			AHEHE.Name = "AHEHE"
			AHEHE.Parent = sliderr
			AHEHE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			AHEHE.BackgroundTransparency = 1.000
			AHEHE.Position = UDim2.new(0, 10, 0, 35)
			AHEHE.Size = UDim2.new(0, 448, 0, 5)
			AHEHE.Font = Enum.Font.SourceSans
			AHEHE.Text = ""
			AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
			AHEHE.TextSize = 14.000

			bar.Name = "bar"
			bar.Parent = AHEHE
			bar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			bar.Size = UDim2.new(0, 448, 0, 5)

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
			circlebar.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
			circlebar.Position = UDim2.new(1, -2, 0, -3)
			circlebar.Size = UDim2.new(0, 10, 0, 10)

			UICorner.CornerRadius = UDim.new(0, 100)
			UICorner.Parent = circlebar

			slidervalue.Name = "slidervalue"
			slidervalue.Parent = sliderr
			slidervalue.BackgroundColor3 = _G.Color
			slidervalue.BackgroundTransparency = 0
			slidervalue.Position = UDim2.new(0, 395, 0, 5)
			slidervalue.Size = UDim2.new(0, 65, 0, 18)

			valuecorner.CornerRadius = UDim.new(0, 5)
			valuecorner.Name = "valuecorner"
			valuecorner.Parent = slidervalue

			TextBox.Parent = slidervalue
			TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			TextBox.Position = UDim2.new(0, 1, 0, 1)
			TextBox.Size = UDim2.new(0, 63, 0, 16)
			TextBox.Font = Enum.Font.GothamSemibold
			TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextBox.TextSize = 9.000
			TextBox.Text = set
			TextBox.TextTransparency = 0

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
				Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
				pcall(function()
					callback(Value)
				end)
				bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
				circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
				moveconnection = mouse.Move:Connect(function()
					TextBox.Text = Value
					Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
					pcall(function()
						callback(Value)
					end)
					bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
					circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
				end)
				releaseconnection = uis.InputEnded:Connect(function(Mouse)
					if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
						Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
						pcall(function()
							callback(Value)
						end)
						bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
						circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
						moveconnection:Disconnect()
						releaseconnection:Disconnect()
					end
				end)
			end)
			releaseconnection = uis.InputEnded:Connect(function(Mouse)
				if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
					Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
					TextBox.Text = Value
				end
			end)

			TextBox.FocusLost:Connect(function()
				if tonumber(TextBox.Text) > max then
					TextBox.Text  = max
				end
				bar1.Size = UDim2.new((TextBox.Text or 0) / max, 0, 0, 5)
				circlebar.Position = UDim2.new(1, -2, 0, -3)
				TextBox.Text = tostring(TextBox.Text and math.floor( (TextBox.Text / max) * (max - min) + min) )
				pcall(callback, TextBox.Text)
			end)
		end

		function main:AddTextbox(text,disappear,callback)
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
			Textbox.Size = UDim2.new(0, 470, 0, 31)

			TextboxCorner.CornerRadius = UDim.new(0, 5)
			TextboxCorner.Name = "TextboxCorner"
			TextboxCorner.Parent = Textbox

			Textboxx.Name = "Textboxx"
			Textboxx.Parent = Textbox
			Textboxx.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			Textboxx.Position = UDim2.new(0, 1, 0, 1)
			Textboxx.Size = UDim2.new(0, 468, 0, 29)

			TextboxxCorner.CornerRadius = UDim.new(0, 5)
			TextboxxCorner.Name = "TextboxxCorner"
			TextboxxCorner.Parent = Textboxx

			TextboxLabel.Name = "TextboxLabel"
			TextboxLabel.Parent = Textbox
			TextboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextboxLabel.BackgroundTransparency = 1.000
			TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
			TextboxLabel.Text = text
			TextboxLabel.Size = UDim2.new(0, 145, 0, 31)
			TextboxLabel.Font = Enum.Font.GothamSemibold
			TextboxLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextboxLabel.TextSize = 16.000
			TextboxLabel.TextTransparency = 0
			TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left

			txtbtn.Name = "txtbtn"
			txtbtn.Parent = Textbox
			txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			txtbtn.BackgroundTransparency = 1.000
			txtbtn.Position = UDim2.new(0, 1, 0, 1)
			txtbtn.Size = UDim2.new(0, 468, 0, 29)
			txtbtn.Font = Enum.Font.SourceSans
			txtbtn.Text = ""
			txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
			txtbtn.TextSize = 14.000

			RealTextbox.Name = "RealTextbox"
			RealTextbox.Parent = Textbox
			RealTextbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			RealTextbox.BackgroundTransparency = 0
			RealTextbox.Position = UDim2.new(0, 360, 0, 4)
			RealTextbox.Size = UDim2.new(0, 100, 0, 24)
			RealTextbox.Font = Enum.Font.GothamSemibold
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
		function main:AddLabel(text)
			local Label = Instance.new("TextLabel")
			local PaddingLabel = Instance.new("UIPadding")
			local labell = {}
	
			Label.Name = "Label"
			Label.Parent = MainFramePage
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 1.000
			Label.Size = UDim2.new(0, 470, 0, 20)
			Label.Font = Enum.Font.GothamSemibold
			Label.TextColor3 = Color3.fromRGB(225, 225, 225)
			Label.TextSize = 16.000
			Label.Text = text
			Label.TextXAlignment = Enum.TextXAlignment.Left

			PaddingLabel.PaddingLeft = UDim.new(0,15)
			PaddingLabel.Parent = Label
			PaddingLabel.Name = "PaddingLabel"
	
			function labell:Set(newtext)
				Label.Text = newtext
			end

			return labell
		end
		function main:AddSeperator(text)
			local Seperator = Instance.new("Frame")
			local Sep1 = Instance.new("Frame")
			local Sep2 = Instance.new("TextLabel")
			local Sep3 = Instance.new("Frame")
			
			Seperator.Name = "Seperator"
			Seperator.Parent = MainFramePage
			Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Seperator.BackgroundTransparency = 1.000
			Seperator.Size = UDim2.new(0, 470, 0, 20)
			
			Sep1.Name = "Sep1"
			Sep1.Parent = Seperator
			Sep1.BackgroundColor3 = _G.Color
			Sep1.BorderSizePixel = 0
			Sep1.Position = UDim2.new(0, 0, 0, 10)
			Sep1.Size = UDim2.new(0, 80, 0, 1)
			
			Sep2.Name = "Sep2"
			Sep2.Parent = Seperator
			Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Sep2.BackgroundTransparency = 1.000
			Sep2.Position = UDim2.new(0, 185, 0, 0)
			Sep2.Size = UDim2.new(0, 100, 0, 20)
			Sep2.Font = Enum.Font.GothamSemibold
			Sep2.Text = text
			Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Sep2.TextSize = 14.000
			
			Sep3.Name = "Sep3"
			Sep3.Parent = Seperator
			Sep3.BackgroundColor3 = _G.Color
			Sep3.BorderSizePixel = 0
			Sep3.Position = UDim2.new(0, 390, 0, 10)
			Sep3.Size = UDim2.new(0, 80, 0, 1)
		end

		function main:AddLine()
			local Linee = Instance.new("Frame")
			local Line = Instance.new("Frame")
			
			Linee.Name = "Linee"
			Linee.Parent = MainFramePage
			Linee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Linee.BackgroundTransparency = 1.000
			Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
			Linee.Size = UDim2.new(0, 470, 0, 20)
			
			Line.Name = "Line"
			Line.Parent = Linee
			Line.BackgroundColor3 = _G.Color
			Line.BorderSizePixel = 0
			Line.Position = UDim2.new(0, 0, 0, 10)
			Line.Size = UDim2.new(0, 470, 0, 1)
		end
		return main
	end
	return uitab
end

    --------------------------------------------------------------------
    if game.PlaceId == 2753915549 then
        World1 = true
    elseif game.PlaceId == 4442272183 then
        World2 = true
    elseif game.PlaceId == 7449423635 then
        World3 = true
    end
    
    function CheckQuest() 
        MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
        if World1 then
            if MyLevel == 1 or MyLevel <= 9 then
                Mon = "Bandit [Lv. 5]"
                LevelQuest = 1
                NameQuest = "BanditQuest1"
                NameMon = "Bandit"
                CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
            elseif MyLevel == 10 or MyLevel <= 14 then
                Mon = "Monkey [Lv. 14]"
                LevelQuest = 1
                NameQuest = "JungleQuest"
                NameMon = "Monkey"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            elseif MyLevel == 15 or MyLevel <= 29 then
                Mon = "Gorilla [Lv. 20]"
                LevelQuest = 2
                NameQuest = "JungleQuest"
                NameMon = "Gorilla"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            elseif MyLevel == 30 or MyLevel <= 39 then
                Mon = "Pirate [Lv. 35]"
                LevelQuest = 1
                NameQuest = "BuggyQuest1"
                NameMon = "Pirate"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            elseif MyLevel == 40 or MyLevel <= 59 then
                Mon = "Brute [Lv. 45]"
                LevelQuest = 2
                NameQuest = "BuggyQuest1"
                NameMon = "Brute"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            elseif MyLevel == 60 or MyLevel <= 74 then
                Mon = "Desert Bandit [Lv. 60]"
                LevelQuest = 1
                NameQuest = "DesertQuest"
                NameMon = "Desert Bandit"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            elseif MyLevel == 75 or MyLevel <= 89 then
                Mon = "Desert Officer [Lv. 70]"
                LevelQuest = 2
                NameQuest = "DesertQuest"
                NameMon = "Desert Officer"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            elseif MyLevel == 90 or MyLevel <= 99 then
                Mon = "Snow Bandit [Lv. 90]"
                LevelQuest = 1
                NameQuest = "SnowQuest"
                NameMon = "Snow Bandit"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            elseif MyLevel == 100 or MyLevel <= 119 then
                Mon = "Snowman [Lv. 100]"
                LevelQuest = 2
                NameQuest = "SnowQuest"
                NameMon = "Snowman"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            elseif MyLevel == 120 or MyLevel <= 149 then
                Mon = "Chief Petty Officer [Lv. 120]"
                LevelQuest = 1
                NameQuest = "MarineQuest2"
                NameMon = "Chief Petty Officer"
                CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            elseif MyLevel == 150 or MyLevel <= 174 then
                Mon = "Sky Bandit [Lv. 150]"
                LevelQuest = 1
                NameQuest = "SkyQuest"
                NameMon = "Sky Bandit"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            elseif MyLevel == 175 or MyLevel <= 189 then
                Mon = "Dark Master [Lv. 175]"
                LevelQuest = 2
                NameQuest = "SkyQuest"
                NameMon = "Dark Master"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            elseif MyLevel == 190 or MyLevel <= 209 then
                Mon = "Prisoner [Lv. 190]"
                LevelQuest = 1
                NameQuest = "PrisonerQuest"
                NameMon = "Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            elseif MyLevel == 210 or MyLevel <= 249 then
                Mon = "Dangerous Prisoner [Lv. 210]"
                LevelQuest = 2
                NameQuest = "PrisonerQuest"
                NameMon = "Dangerous Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            elseif MyLevel == 250 or MyLevel <= 274 then
                Mon = "Toga Warrior [Lv. 250]"
                LevelQuest = 1
                NameQuest = "ColosseumQuest"
                NameMon = "Toga Warrior"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            elseif MyLevel == 275 or MyLevel <= 299 then
                Mon = "Gladiator [Lv. 275]"
                LevelQuest = 2
                NameQuest = "ColosseumQuest"
                NameMon = "Gladiator"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            elseif MyLevel == 300 or MyLevel <= 324 then
                Mon = "Military Soldier [Lv. 300]"
                LevelQuest = 1
                NameQuest = "MagmaQuest"
                NameMon = "Military Soldier"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            elseif MyLevel == 325 or MyLevel <= 374 then
                Mon = "Military Spy [Lv. 325]"
                LevelQuest = 2
                NameQuest = "MagmaQuest"
                NameMon = "Military Spy"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            elseif MyLevel == 375 or MyLevel <= 399 then
                Mon = "Fishman Warrior [Lv. 375]"
                LevelQuest = 1
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Warrior"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif MyLevel == 400 or MyLevel <= 449 then
                Mon = "Fishman Commando [Lv. 400]"
                LevelQuest = 2
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Commando"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif MyLevel == 450 or MyLevel <= 474 then
                Mon = "God's Guard [Lv. 450]"
                LevelQuest = 1
                NameQuest = "SkyExp1Quest"
                NameMon = "God's Guard"
                CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                end
            elseif MyLevel == 475 or MyLevel <= 524 then
                Mon = "Shanda [Lv. 475]"
                LevelQuest = 2
                NameQuest = "SkyExp1Quest"
                NameMon = "Shanda"
                CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
            elseif MyLevel == 525 or MyLevel <= 549 then
                Mon = "Royal Squad [Lv. 525]"
                LevelQuest = 1
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Squad"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            elseif MyLevel == 550 or MyLevel <= 624 then
                Mon = "Royal Soldier [Lv. 550]"
                LevelQuest = 2
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Soldier"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            elseif MyLevel == 625 or MyLevel <= 649 then
                Mon = "Galley Pirate [Lv. 625]"
                LevelQuest = 1
                NameQuest = "FountainQuest"
                NameMon = "Galley Pirate"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            elseif MyLevel >= 650 then
                Mon = "Galley Captain [Lv. 650]"
                LevelQuest = 2
                NameQuest = "FountainQuest"
                NameMon = "Galley Captain"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            end
        elseif World2 then
            if MyLevel == 700 or MyLevel <= 724 then
                Mon = "Raider [Lv. 700]"
                LevelQuest = 1
                NameQuest = "Area1Quest"
                NameMon = "Raider"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            elseif MyLevel == 725 or MyLevel <= 774 then
                Mon = "Mercenary [Lv. 725]"
                LevelQuest = 2
                NameQuest = "Area1Quest"
                NameMon = "Mercenary"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            elseif MyLevel == 775 or MyLevel <= 799 then
                Mon = "Swan Pirate [Lv. 775]"
                LevelQuest = 1
                NameQuest = "Area2Quest"
                NameMon = "Swan Pirate"
                CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            elseif MyLevel == 800 or MyLevel <= 874 then
                Mon = "Factory Staff [Lv. 800]"
                NameQuest = "Area2Quest"
                LevelQuest = 2
                NameMon = "Factory Staff"
                CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            elseif MyLevel == 875 or MyLevel <= 899 then
                Mon = "Marine Lieutenant [Lv. 875]"
                LevelQuest = 1
                NameQuest = "MarineQuest3"
                NameMon = "Marine Lieutenant"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            elseif MyLevel == 900 or MyLevel <= 949 then
                Mon = "Marine Captain [Lv. 900]"
                LevelQuest = 2
                NameQuest = "MarineQuest3"
                NameMon = "Marine Captain"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            elseif MyLevel == 950 or MyLevel <= 974 then
                Mon = "Zombie [Lv. 950]"
                LevelQuest = 1
                NameQuest = "ZombieQuest"
                NameMon = "Zombie"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            elseif MyLevel == 975 or MyLevel <= 999 then
                Mon = "Vampire [Lv. 975]"
                LevelQuest = 2
                NameQuest = "ZombieQuest"
                NameMon = "Vampire"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            elseif MyLevel == 1000 or MyLevel <= 1049 then
                Mon = "Snow Trooper [Lv. 1000]"
                LevelQuest = 1
                NameQuest = "SnowMountainQuest"
                NameMon = "Snow Trooper"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            elseif MyLevel == 1050 or MyLevel <= 1099 then
                Mon = "Winter Warrior [Lv. 1050]"
                LevelQuest = 2
                NameQuest = "SnowMountainQuest"
                NameMon = "Winter Warrior"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            elseif MyLevel == 1100 or MyLevel <= 1124 then
                Mon = "Lab Subordinate [Lv. 1100]"
                LevelQuest = 1
                NameQuest = "IceSideQuest"
                NameMon = "Lab Subordinate"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            elseif MyLevel == 1125 or MyLevel <= 1174 then
                Mon = "Horned Warrior [Lv. 1125]"
                LevelQuest = 2
                NameQuest = "IceSideQuest"
                NameMon = "Horned Warrior"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            elseif MyLevel == 1175 or MyLevel <= 1199 then
                Mon = "Magma Ninja [Lv. 1175]"
                LevelQuest = 1
                NameQuest = "FireSideQuest"
                NameMon = "Magma Ninja"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            elseif MyLevel == 1200 or MyLevel <= 1249 then
                Mon = "Lava Pirate [Lv. 1200]"
                LevelQuest = 2
                NameQuest = "FireSideQuest"
                NameMon = "Lava Pirate"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            elseif MyLevel == 1250 or MyLevel <= 1274 then
                Mon = "Ship Deckhand [Lv. 1250]"
                LevelQuest = 1
                NameQuest = "ShipQuest1"
                NameMon = "Ship Deckhand"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1275 or MyLevel <= 1299 then
                Mon = "Ship Engineer [Lv. 1275]"
                LevelQuest = 2
                NameQuest = "ShipQuest1"
                NameMon = "Ship Engineer"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end             
            elseif MyLevel == 1300 or MyLevel <= 1324 then
                Mon = "Ship Steward [Lv. 1300]"
                LevelQuest = 1
                NameQuest = "ShipQuest2"
                NameMon = "Ship Steward"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1325 or MyLevel <= 1349 then
                Mon = "Ship Officer [Lv. 1325]"
                LevelQuest = 2
                NameQuest = "ShipQuest2"
                NameMon = "Ship Officer"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1350 or MyLevel <= 1374 then
                Mon = "Arctic Warrior [Lv. 1350]"
                LevelQuest = 1
                NameQuest = "FrostQuest"
                NameMon = "Arctic Warrior"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
                end
            elseif MyLevel == 1375 or MyLevel <= 1424 then
                Mon = "Snow Lurker [Lv. 1375]"
                LevelQuest = 2
                NameQuest = "FrostQuest"
                NameMon = "Snow Lurker"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            elseif MyLevel == 1425 or MyLevel <= 1449 then
                Mon = "Sea Soldier [Lv. 1425]"
                LevelQuest = 1
                NameQuest = "ForgottenQuest"
                NameMon = "Sea Soldier"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            elseif MyLevel >= 1450 then
                Mon = "Water Fighter [Lv. 1450]"
                LevelQuest = 2
                NameQuest = "ForgottenQuest"
                NameMon = "Water Fighter"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            end
        elseif World3 then
            if MyLevel == 1500 or MyLevel <= 1524 then
                Mon = "Pirate Millionaire [Lv. 1500]"
                LevelQuest = 1
                NameQuest = "PiratePortQuest"
                NameMon = "Pirate Millionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            elseif MyLevel == 1525 or MyLevel <= 1574 then
                Mon = "Pistol Billionaire [Lv. 1525]"
                LevelQuest = 2
                NameQuest = "PiratePortQuest"
                NameMon = "Pistol Billionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            elseif MyLevel == 1575 or MyLevel <= 1599 then
                Mon = "Dragon Crew Warrior [Lv. 1575]"
                LevelQuest = 1
                NameQuest = "AmazonQuest"
                NameMon = "Dragon Crew Warrior"
                CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            elseif MyLevel == 1600 or MyLevel <= 1624 then 
                Mon = "Dragon Crew Archer [Lv. 1600]"
                NameQuest = "AmazonQuest"
                LevelQuest = 2
                NameMon = "Dragon Crew Archer"
                CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            elseif MyLevel == 1625 or MyLevel <= 1649 then
                Mon = "Female Islander [Lv. 1625]"
                NameQuest = "AmazonQuest2"
                LevelQuest = 1
                NameMon = "Female Islander"
                CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            elseif MyLevel == 1650 or MyLevel <= 1699 then 
                Mon = "Giant Islander [Lv. 1650]"
                NameQuest = "AmazonQuest2"
                LevelQuest = 2
                NameMon = "Giant Islander"
                CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            elseif MyLevel == 1700 or MyLevel <= 1724 then
                Mon = "Marine Commodore [Lv. 1700]"
                LevelQuest = 1
                NameQuest = "MarineTreeIsland"
                NameMon = "Marine Commodore"
                CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            elseif MyLevel == 1725 or MyLevel <= 1774 then
                Mon = "Marine Rear Admiral [Lv. 1725]"
                NameMon = "Marine Rear Admiral"
                NameQuest = "MarineTreeIsland"
                LevelQuest = 2
                CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            elseif MyLevel == 1775 or MyLevel <= 1799 then
                Mon = "Fishman Raider [Lv. 1775]"
                LevelQuest = 1
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Raider"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            elseif MyLevel == 1800 or MyLevel <= 1824 then
                Mon = "Fishman Captain [Lv. 1800]"
                LevelQuest = 2
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Captain"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            elseif MyLevel == 1825 or MyLevel <= 1849 then
                Mon = "Forest Pirate [Lv. 1825]"
                LevelQuest = 1
                NameQuest = "DeepForestIsland"
                NameMon = "Forest Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            elseif MyLevel == 1850 or MyLevel <= 1899 then
                Mon = "Mythological Pirate [Lv. 1850]"
                LevelQuest = 2
                NameQuest = "DeepForestIsland"
                NameMon = "Mythological Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
            elseif MyLevel == 1900 or MyLevel <= 1924 then
                Mon = "Jungle Pirate [Lv. 1900]"
                LevelQuest = 1
                NameQuest = "DeepForestIsland2"
                NameMon = "Jungle Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            elseif MyLevel == 1925 or MyLevel <= 1974 then
                Mon = "Musketeer Pirate [Lv. 1925]"
                LevelQuest = 2
                NameQuest = "DeepForestIsland2"
                NameMon = "Musketeer Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            elseif MyLevel == 1975 or MyLevel <= 1999 then
                Mon = "Reborn Skeleton [Lv. 1975]"
                LevelQuest = 1
                NameQuest = "HauntedQuest1"
                NameMon = "Reborn Skeleton"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            elseif MyLevel == 2000 or MyLevel <= 2024 then
                Mon = "Living Zombie [Lv. 2000]"
                LevelQuest = 2
                NameQuest = "HauntedQuest1"
                NameMon = "Living Zombie"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            elseif MyLevel == 2025 or MyLevel <= 2049 then
                Mon = "Demonic Soul [Lv. 2025]"
                LevelQuest = 1
                NameQuest = "HauntedQuest2"
                NameMon = "Demonic Soul"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
            elseif MyLevel == 2050 or MyLevel <= 2074 then
                Mon = "Posessed Mummy [Lv. 2050]"
                LevelQuest = 2
                NameQuest = "HauntedQuest2"
                NameMon = "Posessed Mummy"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            elseif MyLevel == 2075 or MyLevel <= 2099 then
                Mon = "Peanut Scout [Lv. 2075]"
                LevelQuest = 1
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut Scout"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            elseif MyLevel == 2100 or MyLevel <= 2124 then
                Mon = "Peanut President [Lv. 2100]"
                LevelQuest = 2
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut President"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            elseif MyLevel == 2125 or MyLevel <= 2149 then
                Mon = "Ice Cream Chef [Lv. 2125]"
                LevelQuest = 1
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Chef"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            elseif MyLevel == 2150 or MyLevel <= 2199 then
                Mon = "Ice Cream Commander [Lv. 2150]"
                LevelQuest = 2
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Commander"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            elseif MyLevel == 2200 or MyLevel <= 2224 then
                Mon = "Cookie Crafter [Lv. 2200]"
                LevelQuest = 1
                NameQuest = "CakeQuest1"
                NameMon = "Cookie Crafter"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            elseif MyLevel == 2225 or MyLevel <= 2249 then
                Mon = "Cake Guard [Lv. 2225]"
                LevelQuest = 2
                NameQuest = "CakeQuest1"
                NameMon = "Cake Guard"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            elseif MyLevel == 2250 or MyLevel <= 2274 then
                Mon = "Baking Staff [Lv. 2250]"
                LevelQuest = 1
                NameQuest = "CakeQuest2"
                NameMon = "Baking Staff"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            elseif MyLevel == 2275 or MyLevel <= 2299 then
                    Mon = "Head Baker [Lv. 2275]"
                    LevelQuest = 2
                    NameQuest = "CakeQuest2"
                    NameMon = "Head Baker"
                    CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            elseif MyLevel == 2300 or MyLevel <= 2324 then
                    Mon = "Cocoa Warrior [Lv. 2300]" 
                    LevelQuest = 1
                    NameQuest = "ChocQuest1"
                    NameMon = "Cocoa Warrior"
            elseif MyLevel == 2325 or MyLevel <= 2349 then
                    Mon = "Chocolate Bar Battler [Lv. 2325]"
                    LevelQuest = 2
                    NameQuest = "ChocQuest1"
                    NameMon = "Chocolate Bar Battler"
            elseif MyLevel == 2350 or MyLevel <= 2374 then
                    Mon = "Sweet Thief [Lv. 2350]"
                    LevelQuest = 1
                    NameQuest = "ChocQuest2"
                    NameMon = "Sweet Thief"
            elseif MyLevel >= 2375 then
                    Mon = "Candy Rebel [Lv. 2375]"
                    LevelQuest = 2
                    NameQuest = "ChocQuest2"
                    NameMon = "Candy Rebel"
            end
        end
    end
    
    function Hop()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
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
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end)
            end
        end
        Teleport()
    end                   
    
    function isnil(thing)
        return (thing == nil)
    end
    local function round(n)
        return math.floor(tonumber(n) + 0.5)
    end
    Number = math.random(1, 1000000)
    function UpdateEspPlayer()
        if ESPPlayer then
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if not isnil(v.Character) then
                    if not v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
                        local BillboardGui = Instance.new("BillboardGui")
                        local ESP = Instance.new("TextLabel")
                        local HealthESP = Instance.new("TextLabel")
                        BillboardGui.Parent = v.Character.Head
                        BillboardGui.Name = 'NameEsp'..v.Name
                        BillboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                        BillboardGui.Size = UDim2.new(1,200,1,30)
                        BillboardGui.Adornee = v.Character.Head
                        BillboardGui.AlwaysOnTop = true
                        ESP.Name = "ESP"
                        ESP.Parent = BillboardGui
                        ESP.TextTransparency = 0
                        ESP.BackgroundTransparency = 1
                        ESP.Size = UDim2.new(0, 200, 0, 30)
                        ESP.Position = UDim2.new(0,25,0,0)
                        ESP.Font = Enum.Font.Gotham
                        ESP.Text = (v.Name ..' '.."[ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M'.." ]")
                        if v.Team == game:GetService("Players").LocalPlayer.Team then
                            ESP.TextColor3 = Color3.new(0, 255, 255)
                        else
                            ESP.TextColor3 = Color3.new(0,255,255)
                        end
                        ESP.TextSize = 14
                        ESP.TextStrokeTransparency = 0.500
                        ESP.TextWrapped = true
                        HealthESP.Name = "HealthESP"
                        HealthESP.Parent = ESP
                        HealthESP.TextTransparency = 0
                        HealthESP.BackgroundTransparency = 1
                        HealthESP.Position = ESP.Position + UDim2.new(0, -25, 0, 15)
                        HealthESP.Size = UDim2.new(0, 200, 0, 30)
                        HealthESP.Font = Enum.Font.Gotham
                        HealthESP.TextColor3 = Color3.fromRGB(0,255,255)
                        HealthESP.TextSize = 14
                        HealthESP.TextStrokeTransparency = 0.500
                        HealthESP.TextWrapped = true
                        HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
                    else
                        v.Character.Head['NameEsp'..v.Name].ESP.Text = (v.Name ..' '..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                        v.Character.Head['NameEsp'..v.Name].ESP.HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
                        v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 0
                        v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 0
                    end
                end
            end
        else
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
                    v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 1
                    v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 1
                end
            end
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
                            name.Font = "GothamBold"
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
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            pcall(function()
                if string.find(v.Name,"Chest") then
                    if ChestESP then
                        if string.find(v.Name,"Chest") then
                            if not v:FindFirstChild('NameEsp'..Number) then
                                local bill = Instance.new('BillboardGui',v)
                                bill.Name = 'NameEsp'..Number
                                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                bill.Size = UDim2.new(1,200,1,30)
                                bill.Adornee = v
                                bill.AlwaysOnTop = true
                                local name = Instance.new('TextLabel',bill)
                                name.Font = "GothamBold"
                                name.FontSize = "Size14"
                                name.TextWrapped = true
                                name.Size = UDim2.new(1,0,1,0)
                                name.TextYAlignment = 'Top'
                                name.BackgroundTransparency = 1
                                name.TextStrokeTransparency = 0.5
                                name.TextColor3 = Color3.fromRGB(0, 255, 250)
                            if v.Name == "Chest1" then
                                name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            end
                            if v.Name == "Chest2" then
                                name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            end
                        if v.Name == "Chest3" then
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                        else
                            v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
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
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(0,255,255)
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
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(0,255,255)
                        if v.Name == "Flower1" then 
                            name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            name.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if v.Name == "Flower2" then
                            name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            name.TextColor3 = Color3.fromRGB(0,255,255)
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
    
    function InfAb()
        if InfAbility then
            if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
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
                inf.Texture = "rbxassetid://7157487174"
                inf.VelocityInheritance = 0
                inf.ZOffset = 2
                inf.Transparency = NumberSequence.new(0)
                inf.Color = ColorSequence.new(Color3.fromRGB(80,245,245),Color3.fromRGB(80,245,245))
                inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
            end
        else
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
            end
        end
    end
    
    local LocalPlayer = game:GetService'Players'.LocalPlayer
    local originalstam = LocalPlayer.Character.Energy.Value
    function infinitestam()
        LocalPlayer.Character.Energy.Changed:connect(function()
            if InfiniteEnergy then
                LocalPlayer.Character.Energy.Value = originalstam
            end 
        end)
    end
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if InfiniteEnergy then
                    wait(0.3)
                    originalstam = LocalPlayer.Character.Energy.Value
                    infinitestam()
                end
            end
        end)
    end)
    
    function NoDodgeCool()
        if nododgecool then
            for i,v in next, getgc() do
                if game:GetService("Players").LocalPlayer.Character.Dodge then
                    if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge then
                        for i2,v2 in next, getupvalues(v) do
                            if tostring(v2) == "0.4" then
                            repeat wait(.1)
                                setupvalue(v,i2,0)
                            until not nododgecool
                            end
                        end
                    end
                end
            end
        end
    end
    
    function fly()
        local mouse=game:GetService("Players").LocalPlayer:GetMouse''
        localplayer=game:GetService("Players").LocalPlayer
        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        local torso = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        local speedSET=25
        local keys={a=false,d=false,w=false,s=false}
        local e1
        local e2
        local function start()
            local pos = Instance.new("BodyPosition",torso)
            local gyro = Instance.new("BodyGyro",torso)
            pos.Name="EPIXPOS"
            pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            pos.position = torso.Position
            gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            gyro.CFrame = torso.CFrame
            repeat
                    wait()
                    localplayer.Character.Humanoid.PlatformStand=true
                    local new=gyro.CFrame - gyro.CFrame.p + pos.position
                    if not keys.w and not keys.s and not keys.a and not keys.d then
                    speed=1
                    end
                    if keys.w then
                    new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+speedSET
                    end
                    if keys.s then
                    new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+speedSET
                    end
                    if keys.d then
                    new = new * CFrame.new(speed,0,0)
                    speed=speed+speedSET
                    end
                    if keys.a then
                    new = new * CFrame.new(-speed,0,0)
                    speed=speed+speedSET
                    end
                    if speed>speedSET then
                    speed=speedSET
                    end
                    pos.position=new.p
                    if keys.w then
                    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
                    elseif keys.s then
                    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
                    else
                    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame
                    end
            until not Fly
            if gyro then 
                    gyro:Destroy() 
            end
            if pos then 
                    pos:Destroy() 
            end
            flying=false
            localplayer.Character.Humanoid.PlatformStand=false
            speed=0
        end
        e1=mouse.KeyDown:connect(function(key)
            if not torso or not torso.Parent then 
                    flying=false e1:disconnect() e2:disconnect() return 
            end
            if key=="w" then
                keys.w=true
            elseif key=="s" then
                keys.s=true
            elseif key=="a" then
                keys.a=true
            elseif key=="d" then
                keys.d=true
            end
        end)
        e2=mouse.KeyUp:connect(function(key)
            if key=="w" then
                keys.w=false
            elseif key=="s" then
                keys.s=false
            elseif key=="a" then
                keys.a=false
            elseif key=="d" then
                keys.d=false
            end
        end)
        start()
    end
    
    function Click()
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end
    
    function AutoHaki()
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end
    
    function UnEquipWeapon(Weapon)
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            _G.NotAutoEquip = true
            wait(.5)
            game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
            wait(.1)
            _G.NotAutoEquip = false
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
    
    


function topos(Pos)
            local r = game:GetService("Players").LocalPlayer
            local xTweenPosition = {}
            --if r:DistanceFromCharacter(TP.Position) <= 365 then 
            --r.Character.HumanoidRootPart.CFrame = TP
            if not game.Players.LocalPlayer.Character:FindFirstChild("Root")then 
                local K = Instance.new("Part",game.Players.LocalPlayer.Character)
                K.Size = Vector3.new(20,0.5,20)
                K.Name = "Root"
                K.Anchored = true
                K.Transparency = 1
                K.CanCollide = false
                K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0.6,0)
            end
            local Tween_Service = game:service"TweenService"
            local TweenPosition = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            local Magnitude=TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.Root.Position-Pos.Position).Magnitude/250,Enum.EasingStyle.Linear)
            local function PartToPlayers()
                game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
            
            local function PlayersToPart()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.Root.CFrame
            end
            
            function xTweenPosition:Stop()
                    tween:Cancel()
                return tween
            end

            if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
            if TweenPosition <= 365 then
                pcall(function()
                    tween:Cancel()
                    game.Players.LocalPlayer.Character.Root.CFrame = Pos
                end)
            end
        
            spawn(function()
                while task.wait() do
                    pcall(function()
                        pcall(function ()
                            PlayersToPart()
                        end)
                        if(game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1 then
                            PartToPlayers()
                        end
                    end)
                end
            end)
            local tween,error = pcall(function()
                tween=Tween_Service:Create(
                    game.Players.LocalPlayer.Character["Root"],Magnitude,{CFrame=Pos})
                tween:Play() 
            end)
            if not tween then return error end
            return xTweenPosition
            end

    
    function GetDistance(target)
        return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
    end
    
    function TP(Pos)
        Distance = (Pos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance < 100 then
            Speed = 1000
        elseif Distance < 250 then
            Speed = 350
        elseif Distance >= 1000 then
            Speed = 365
        end
        game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        ):Play()
        _G.Clip = true
        wait(Distance/Speed)
        _G.Clip = false
    end
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Auto_BoneTest or _G.UltraBring or _G.Ken or _G.CavenF or _G.Chanee or _G.Law or if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                            local Noclip = Instance.new("BodyVelocity")
                            Noclip.Name = "BodyClip"
                            Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                            Noclip.MaxForce = Vector3.new(100000,100000,100000)
                            Noclip.Velocity = Vector3.new(0,0,0)
                            workspace.Gravity = 0
                            saveSettings()
                        end
                    else
                        workspace.Gravity = 240                       
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
                        game.Players.LocalPlayer.Character:FindFirstChild("Root"):Destroy()
                        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                    end
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            game:GetService("RunService").Stepped:Connect(function()
                if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Auto_BoneTest or _G.UltraBring or _G.Ken or _G.Chanee or _G.CavenF or _G.Law or _G.AutoRip == true then
                    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
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
            if _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Auto_BoneTest or _G.UltraBring or _G.Ken or _G.CavenF or _G.Chanee or _G.Law or _G.AutoRip == true then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
                end)
            end    
        end
    end)
    
    function StopTween(target)
        if not target then
            _G.StopTween = true
            wait()
            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
            _G.StopTween = false
            _G.Clip = false
        end
    end
    
    spawn(function()
        pcall(function()
            while wait() do
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then 
                            SelectWeaponGun = v.Name
                        end
                    end
                end
            end
        end)
    end)
    game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
    


    --------------------------------------------------------------------
local win = library:AddWindow("LUNAR","BloxFruits Remake",Enum.KeyCode.RightControl)
--Tab
Main = win:AddTab("Main Farm")
Swords = win:AddTab("Swords/items")
Race = win:AddTab("Races(not work)")
Combat = win:AddTab("Pvp")
Stats = win:AddTab("Stats")
Teleport = win:AddTab("Teleport")
Dungeon = win:AddTab("Raids")
DevilFruit = win:AddTab("DevilFruits")
Shop = win:AddTab("Shop/misc")
Misc = win:AddTab("Misc")
Set = win:AddTab("Settings")
Hub = win:AddTab("Hub")

     Main:AddSeperator("Settings")
     Time = Main:AddLabel("Server Time")
    
    function UpdateTime()
        local GameTime = math.floor(workspace.DistributedGameTime+0.5)
        local Hour = math.floor(GameTime/(60^2))%24
        local Minute = math.floor(GameTime/(60^1))%60
        local Second = math.floor(GameTime/(60^0))%60
        Time:Set("Hours : "..Hour.." Minutes : "..Minute.." Seconds : "..Second)
    end
    
    spawn(function()
        while task.wait() do
            pcall(function()
                UpdateTime()
            end)
        end
    end)
    
    Client = Main:AddLabel("Client")

    function UpdateClient()
        local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local Fps = workspace:GetRealPhysicsFPS()
        Client:Set("Fps : "..Fps.." Ping : "..Ping)
    end

    spawn(function()
        while task.wait() do
            pcall(function()
                UpdateClient()
            end)
        end
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
    
    Main:AddToggle("Fast Attack",_G.FastAttack,function(value)
        _G.FastAttack = value
    end)
    
    Main:AddToggle("White Screen",_G.W,function(value)
	    _G.W = value
    end)
    
    local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local WindowFocusReleasedFunction = function()
    RunService:Set3dRenderingEnabled(false)
    setfpscap(60)
    return
end

local WindowFocusedFunction = function()
    RunService:Set3dRenderingEnabled(true)
    setfpscap(360)
    return6
end

local Initialize = function()
    UserInputService.WindowFocusReleased:Connect(WindowFocusReleasedFunction)
    UserInputService.WindowFocused:Connect(WindowFocusedFunction)
    return
end
Initialize()


spawn(function()
    while wait() do 
        pcall(function()
            if _G.W == true then
                game:GetService("RunService"):Set3dRenderingEnabled(false)
            elseif _G.W == false then
                game:GetService("RunService"):Set3dRenderingEnabled(true)
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.W then
                game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = false
                else
                    game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = true
            end
        end)
    end
end)
    Main:AddToggle("Bring Mob",true,function(value)
        _G.BringMonster = value
    end)
    
    Main:AddButton("Remove Sound",function()
 
            for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
                if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" or v.Name == "Sounds" then
                v:Destroy() 
                end
           end
    end)

    
    WeaponList = {}
    
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
        if v:IsA("Tool") then
            table.insert(WeaponList ,v.Name)
        end
    end
    
    local SelectWeapona = Main:AddDropdown("Select Weapon",WeaponList,function(value)
        _G.SelectWeapon = value
    end)
    
    Main:AddButton("Refresh Weapon",function()
        SelectWeapona:Clear()
        for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
            SelectWeapona:Add(v.Name)
        end
    end)
    Main:AddLine()
    Main:AddSeperator("Main")
    
    local AutoFarm = Main:AddToggle("Auto Farm Level",_G.AutoFarm,function(value)
        _G.AutoFarm = value
        StopTween(_G.AutoFarm)
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoFarm then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        StartMagnet = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartMagnet = false
                        or not _G.AutoFarm
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Mon then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            repeat task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                Click()
                                                AutoHaki()                                            
                                                PosMon = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 20
                                                v.Head.CanCollide = false
                                                
                                                StartMagnet = true
                                                _G.Use = true
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            StartMagnet = false
                                            _G.Use = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            end
                        else
                            StartMagnet = false
                            TpToFarmPos()
                            if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                            else
                                if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 then
                                    if PosMon ~= nil then
                                        topos(PosMon * CFrame.new(0,20,0))
                                    else
                                        if OldPos ~= nil then
                                            topos(OldPos.Position)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    function TpToFarmPos()
        if World1 then
            Dis = 300
            if MyLevel == 1 or MyLevel <= 9 then -- Bandit
                magbring = 400
                -- = "Bandit [Lv. 5]"
                -- = "BanditQuest1"
                -- = 1
                -- = "Bandit"
                -- = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859))
                topos(CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331))
            elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
                magbring = 400
                -- = "Monkey [Lv. 14]"
                -- = "JungleQuest"
                -- = 1
                -- = "Monkey"
                -- = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374))
                topos(CFrame.new(-1307.96277, 6.45027733, -568.046387, 0.00927694421, -9.04678856e-08, -0.999956965, 1.37547875e-08, 1, -9.03441659e-08, 0.999956965, -1.29160771e-08, 0.00927694421))
            elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
                magbring = 240
                -- = "Gorilla [Lv. 20]"
                -- = "JungleQuest"
                -- = 2
                -- = "Gorilla"
                -- = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374))
                topos(CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147))
            elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate
                Dis = 150
                -- = "Pirate [Lv. 35]"
                -- = "BuggyQuest1"
                -- = 1
                -- = "Pirate"
                -- = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506))
                topos(CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832))
            elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
                Dis = 150
                -- = "Brute [Lv. 45]"
                -- = "BuggyQuest1"
                -- = 2
                -- = "Brute"
                -- = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506))
                topos(CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163))
            elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
                -- = "Desert Bandit [Lv. 60]"
                -- = "DesertQuest"
                -- = 1
                -- = "Desert Bandit"
                -- = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724))
                topos(CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934))
            elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
                -- = "Desert Officer [Lv. 70]"
                -- = "DesertQuest"
                -- = 2
                -- = "Desert Officer"
                -- = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724))
                topos(CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005))
            elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
                -- = "Snow Bandit [Lv. 90]"
                -- = "SnowQuest"
                -- = 1
                -- = "Snow Bandits"
                -- = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952))
                topos(CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439))
            elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
                -- = "Snowman [Lv. 100]"
                -- = "SnowQuest"
                -- = 2
                -- = "Snowman"
                -- = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952))
                topos(CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439))
            elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
                -- = "Chief Petty Officer [Lv. 120]"
                -- = "MarineQuest2"
                -- = 1
                -- = "Chief Petty Officer"
                -- = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395))
                topos(CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946))
            elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
                -- = "Sky Bandit [Lv. 150]"
                -- = "SkyQuest"
                -- = 1
                -- = "Sky Bandit"
                -- = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111))
                topos(CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597))
            elseif MyLevel == 175 or MyLevel <= 189 then




                topos(CFrame.new(-5234.18018, 389.500061, -2367.01416, -0.994518042, 0, -0.104565002, 0, 1, 0, 0.104565002, 0, -0.994518042))
            elseif MyLevel == 190 or MyLevel <= 209 then




                topos(CFrame.new(5311.1884765625, 11.345396041870117, 482.6448059082031))
            elseif MyLevel == 210 or MyLevel <= 249 then




                topos(CFrame.new(5311.1884765625, 11.345396041870117, 482.6448059082031))
            elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master
                -- = "Dark Master [Lv. 175]"
                -- = "SkyQuest"
                -- = 2
                -- = "Dark Master"
                -- = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111))
                topos(CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521))
            elseif MyLevel == 250 or MyLevel <= 274 then -- Toga Warrior
                -- = "Toga Warrior [Lv. 250]"
                -- = "ColosseumQuest"
                -- = 1
                -- = "Toga Warrior"
                -- = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345))
                topos(CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346))
            elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
                -- = "Gladiator [Lv. 275]"
                -- = "ColosseumQuest"
                -- = 2
                -- = "Gladiato"
                repeat wait()
                topos(CFrame.new(-1483.70422, 27.94624376, -3195.21216, -0.92051065, 0, -0.390717506, 0, 1, 0, 0.390717506, 0, -0.92051065))-- = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345))
                wait(1)
                topos(CFrame.new(-1320.88782, 27.51466751, -3333.53345, -0.345088989, -2.615625e-23, 0.938569963, 2.3926526e-25, 1, 2.79561639e-23, -0.938569963, 9.87193237e-24, -0.345088989))
                wait(1)
                topos(CFrame.new(-1483.70422, 27.94624376, -3195.21216, -0.92051065, 0, -0.390717506, 0, 1, 0, 0.390717506, 0, -0.92051065))
                wait(1)
                topos(CFrame.new(-1125.07, 27.94624, -3270.25))
                wait(1)
                topos(CFrame.new(-1228.08655, 27.94624376, -3051.79077, -0.808997631, 0, 0.587812185, 0, 1, 0, -0.587812185, 0, -0.808997631))
                until _G.AutoFarm == false or game:GetService("Workspace").Enemies:FindFirstChild(Mon)
            elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
                -- = "Military Soldier [Lv. 300]"
                -- = "MagmaQuest"
                -- = 1
                -- = "Military Soldier"
                -- = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557))
                topos(CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984))
            elseif MyLevel == 300 or MyLevel <= 374 then -- Military Spy
                FM = false
                -- = "Military Spy [Lv. 330]"
                -- = "MagmaQuest"
                -- = 2
                -- = "Military Spy"
                -- = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557))
                topos(CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366))
            elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
                FM = true
                -- = "Fishman Warrior [Lv. 375]"
                -- = "FishmanQuest"
                -- = 1
                -- = "Fishman Warrior"
                -- = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468))
                topos(CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185))
            elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
                FM = true
                -- = "Fishman Commando [Lv. 400]"
                -- = "FishmanQuest"
                -- = 2
                -- = "Fishman Commando"
                -- = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468))
                topos(CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489))
            elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
                FM = false
                -- = "God's Guard [Lv. 450]"
                -- = "SkyExp1Quest"
                -- = 1
                -- = "God's Guards"
                -- = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651))
                topos(CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087))
            elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
                sky = false
                -- = "Shanda [Lv. 475]"
                -- = "SkyExp1Quest"
                -- = 2
                -- = "Shandas"
                -- = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807))
                topos(CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243))
            elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
                sky = true
                -- = "Royal Squad [Lv. 525]"
                -- = "SkyExp2Quest"
                -- = 1
                -- = "Royal Squad"
                -- = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959))
                topos(CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823))
            elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
                Dis = 240
                sky = true
                -- = "Royal Soldier [Lv. 550]"
                -- = "SkyExp2Quest"
                -- = 2
                -- = "Royal Soldier"
                -- = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959))
                topos(CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959))
            elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
                Dis = 240
                sky = false
                -- = "Galley Pirate [Lv. 625]"
                -- = "FountainQuest"
                -- = 1
                -- = "Galley Pirate"
                -- = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425))
                topos(CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803))
            elseif MyLevel >= 650 then -- Galley Captain
                Dis = 240
                -- = "Galley Captain [Lv. 650]"
                -- = "FountainQuest"
                -- = 2
                -- = "Galley Captain"
                -- = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425))
                topos(CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081))
            end
        elseif World2 then
            Dis = 240
            if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
                -- = "Raider [Lv. 700]"
                -- = "Area1Quest"
                -- = 1
                -- = "Raider"
                -- = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956))
                topos(CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761))
            elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
                -- = "Mercenary [Lv. 725]"
                -- = "Area1Quest"
                -- = 2
                -- = "Mercenary"
                -- = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956))
                topos(CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971))
            elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
                -- = "Swan Pirate [Lv. 775]"
                -- = "Area2Quest"
                -- = 1
                -- = "Swan Pirate"
                -- = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369))
                topos(CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468))
            elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
                -- = "Factory Staff [Lv. 800]"
                -- = "Area2Quest"
                -- = 2
                -- = "Factory Staff"
                -- = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369))
                topos(CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002))
            elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
                -- = "Marine Lieutenant [Lv. 875]"
                -- = "MarineQuest3"
                -- = 1
                -- = "Marine Lieutenant"
                -- = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044))
                topos(CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619))
            elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
                -- = "Marine Captain [Lv. 900]"
                -- = "MarineQuest3"
                -- = 2
                -- = "Marine Captain"
                -- = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044))
                topos(CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287))
            elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
                -- = "Zombie [Lv. 950]"
                -- = "ZombieQuest"
                -- = 1
                -- = "Zombie"
                -- = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292))
                topos(CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672))
            elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
                -- = "Vampire [Lv. 975]"
                -- = "ZombieQuest"
                -- = 2
                -- = "Vampire"
                -- = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292))
                topos(CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423))
            elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
                -- = "Snow Trooper [Lv. 1000]"
                -- = "SnowMountainQuest"
                -- = 1
                -- = "Snow Trooper"
                -- = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971))
                topos(CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176))
            elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
                -- = "Winter Warrior [Lv. 1050]"
                -- = "SnowMountainQuest"
                -- = 2
                -- = "Winter Warrior"
                -- = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971))
                topos(CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818))
            elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
                -- = "Lab Subordinate [Lv. 1100]"
                -- = "IceSideQuest"
                -- = 1
                -- = "Lab Subordinate"
                -- = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341))
                topos(CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742))
            elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
                -- = "Horned Warrior [Lv. 1125]"
                -- = "IceSideQuest"
                -- = 2
                -- = "Horned Warrior"
                -- = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341))
                topos(CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479))
            elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
                -- = "Magma Ninja [Lv. 1175]"
                -- = "FireSideQuest"
                -- = 1
                -- = "Magma Ninja"
                -- = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765))
                topos(CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781))
            elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
                -- = "Lava Pirate [Lv. 1200]"
                -- = "FireSideQuest"
                -- = 2
                -- = "Lava Pirate"
                -- = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765))
                topos(CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294))
            elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
                -- = "Ship Deckhand [Lv. 1250]"
                -- = "ShipQuest1"
                -- = 1
                -- = "Ship Deckhand"
                -- = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136))
                topos(CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813))
            elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
                -- = "Ship Engineer [Lv. 1275]"
                -- = "ShipQuest1"
                -- = 2
                -- = "Ship Engineer"
                -- = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136))
                topos(CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871))
            elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
                -- = "Ship Steward [Lv. 1300]"
                -- = "ShipQuest2"
                -- = 1
                -- = "Ship Steward"
                -- = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242))
                topos(CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814))
            elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
                -- = "Ship Officer [Lv. 1325]"
                -- = "ShipQuest2"
                -- = 2
                -- = "Ship Officer"
                -- = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242))
                topos(CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698))
            elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
                -- = "Arctic Warrior [Lv. 1350]"
                -- = "FrostQuest"
                -- = 1
                -- = "Arctic Warrior"
                -- = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756))
                topos(CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107))
            elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
                -- = "Snow Lurker [Lv. 1375]"
                -- = "FrostQuest"
                -- = 2
                -- = "Snow Lurker"
                -- = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756))
                topos(CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393))
            elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
                -- = "Sea Soldier [Lv. 1425]"
                -- = "ForgottenQuest"
                -- = 1
                -- = "Sea Soldier"
                -- = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751))
                topos(CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859))
            elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
                -- = "Water Fighter [Lv. 1450]"
                -- = "ForgottenQuest"
                -- = 2
                -- = "Water Fighter"
                -- = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751))
                topos(CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755))
            end
        elseif World3 then
            Dis = 240
            if MyLevel == 1500 or MyLevel <= 1524 then
                -- = "Pirate Millionaire [Lv. 1500]"
                -- = "PiratePortQuest"
                -- = 1
                -- = "Pirate Millionaire"
                -- = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627))
                topos(CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375))
            elseif MyLevel == 1525 or MyLevel <= 1574 then
                -- = "Pistol Billionaire [Lv. 1525]"
                -- = "PiratePortQuest"
                -- = 2
                -- = "Pistol Billionaire"
                -- = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627))
                topos(CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375))
            elseif MyLevel == 1575 or MyLevel <= 1599 then
                -- = "Dragon Crew Warrior [Lv. 1575]"
                -- = "AmazonQuest"
                -- = 1
                -- = "Dragon Crew Warrior"
                -- = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359))
                topos(CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516))
            elseif MyLevel == 1600 or MyLevel <= 1624 then
                -- = "Dragon Crew Archer [Lv. 1600]"
                -- = "AmazonQuest"
                -- = 2
                -- = "Dragon Crew Archer"
                -- = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359))
                topos(CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715))
            elseif MyLevel == 1625 or MyLevel <= 1649 then
                -- = "Female Islander [Lv. 1625]"
                -- = "AmazonQuest2"
                -- = 1
                -- = "Female Islander"
                -- = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0))
                topos(CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922))
            elseif MyLevel == 1650 or MyLevel <= 1699 then
                -- = "Giant Islander [Lv. 1650]"
                -- = "AmazonQuest2"
                -- = 2
                -- = "Giant Islander"
                -- = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0))
                topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
            elseif MyLevel == 1700 or MyLevel <= 1724 then
                -- = "Marine Commodore [Lv. 1700]"
                -- = "MarineTreeIsland"
                -- = 1
                -- = "Marine Commodore"
                -- = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747))
                topos(CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688))
            elseif MyLevel == 1725 or MyLevel <= 1774 then
                -- = "Marine Rear Admiral [Lv. 1725]"
                -- = "MarineTreeIsland"
                -- = 2
                -- = "Marine Rear Admiral"
                -- = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747))
                topos(CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625))
            elseif MyLevel == 1775 or MyLevel <= 1799 then
                -- = "Fishman Raider [Lv. 1775]"
                -- = "DeepForestIsland3"
                -- = 1
                -- = "Fishman Raider"
                -- = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213))
                topos(CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125))
            elseif MyLevel == 1800 or MyLevel <= 1824 then
                -- = "Fishman Captain [Lv. 1800]"
                -- = "DeepForestIsland3"
                -- = 2
                -- = "Fishman Captain"
                -- = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213))
                topos(CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625))
            elseif MyLevel == 1825 or MyLevel <= 1849 then
                -- = "Forest Pirate [Lv. 1825]"
                -- = "DeepForestIsland"
                -- = 1
                -- = "Forest Pirate"
                -- = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247))
                topos(CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188))
            elseif MyLevel == 1850 or MyLevel <= 1899 then
                -- = "Mythological Pirate [Lv. 1850]"
                -- = "DeepForestIsland"
                -- = 2
                -- = "Mythological Pirate"
                -- = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247))
                topos(CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188))
            elseif MyLevel == 1900 or MyLevel <= 1924 then
                -- = "Jungle Pirate [Lv. 1900]"
                -- = "DeepForestIsland2"
                -- = 1
                -- = "Jungle Pirate"
                -- = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002))
                topos(CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063))
            elseif MyLevel == 1925 or MyLevel <= 1974 then
                -- = "Musketeer Pirate [Lv. 1925]"
                -- = "DeepForestIsland2"
                -- = 2
                -- = "Musketeer Pirate"
                -- = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002))
                topos(CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625))
            elseif MyLevel == 1975 or MyLevel <= 1999 then
                -- = "Reborn Skeleton [Lv. 1975]"
                -- = "HauntedQuest1"
                -- = 1
                -- = "Reborn Skeleton"
                -- = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0))
                topos(CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813))
            elseif MyLevel == 2000 or MyLevel <= 2024 then
                -- = "Living Zombie [Lv. 2000]"
                -- = "HauntedQuest1"
                -- = 2
                -- = "Living Zombie"
                -- = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0))
                topos(CFrame.new(-10093.930664063, 237.38233947754, 6180.5654296875))
            elseif MyLevel == 2025 or MyLevel <= 2049 then
                -- = "Demonic Soul [Lv. 2025]"
                -- = "HauntedQuest2"
                -- = 1
                -- = "Demonic Soul"
                -- = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149))
                topos(CFrame.new(-9466.72949, 171.162918, 6132.01514))
            elseif MyLevel == 2050 or MyLevel <= 2074 then
                -- = "Posessed Mummy [Lv. 2050]" 
                -- = "HauntedQuest2"
                -- = 2
                -- = "Posessed Mummy"
                -- = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149))
                topos(CFrame.new(-9589.93848, 4.85058546, 6190.27197))
            elseif MyLevel == 2075 or MyLevel <= 2099 then
                -- = "Peanut Scout [Lv. 2075]"
                -- = "NutsIslandQuest"
                -- = 1
                -- = "Peanut Scout"
                topos(CFrame.new(-2124, 123, -10435))
                -- = CFrame.new(-2104, 38, -10192))
            elseif MyLevel == 2100 or MyLevel <= 2124 then
                -- = "Peanut President [Lv. 2100]"
                -- = "NutsIslandQuest"
                -- = 2
                -- = "Peanut President"
                topos(CFrame.new(-2124, 123, -10435))
                -- = CFrame.new(-2104, 38, -10192))
            elseif MyLevel == 2125 or MyLevel <= 2149 then
                -- = "Ice Cream Chef [Lv. 2125]"
                -- = "IceCreamIslandQuest"
                -- = 1
                -- = "Ice Cream Chef"
                topos(CFrame.new(-641, 127, -11062))
                -- = CFrame.new(-822, 66, -10965))
            elseif MyLevel == 2150 or MyLevel <= 2199 then
                -- = "Ice Cream Commander [Lv. 2150]"
                -- = "IceCreamIslandQuest"
                -- = 2
                -- = "Ice Cream Commander"
                topos(CFrame.new(-641, 127, -11062))
                -- = CFrame.new(-822, 66, -10965))
            elseif MyLevel == 2200 or MyLevel <= 2224 then
                -- = "Cookie Crafter [Lv. 2200]"
                -- = "CakeQuest1"
                -- = 1
                -- = "Cookie Crafter"
                topos(CFrame.new(-2166, 70, -12125))
                -- = CFrame.new(-2022, 38, -12034))
            elseif MyLevel == 2225 or MyLevel <= 2299 then
                -- = "Cake Guard [Lv. 2225]"
                -- = "CakeQuest1"
                -- = 2
                -- = "Cake Guard"
                topos(CFrame.new(-2166, 70, -12125))
                -- = CFrame.new(-2022, 38, -12034))
            elseif MyLevel == 2300 or MyLevel <= 2324 then
                -- = "Cocoa Warrior [Lv. 2300]"
                -- = "ChocQuest1"
                -- = 1
                -- = "Cocoa Warrior"
                topos(CFrame.new(233.131, 24.7342, -12198.4))
                -- = CFrame.new(233.131, 24.7342, -12198.4))
            elseif MyLevel == 2325 or MyLevel <= 2349 then
                -- = "Chocolate Bar Battler [Lv. 2325]"
                -- = "ChocQuest1"
                -- = 2
                -- = "Chocolate Bar Battler"
                topos(CFrame.new(233.131, 24.7342, -12198.4))
                -- = CFrame.new(233.131, 24.7342, -12198.4))
            elseif MyLevel == 2350 or MyLevel <= 2374 then
                -- = "Sweet Thief [Lv. 2350]"
                -- = "ChocQuest2"
                -- = 1
                -- = "Sweet Thief"
                topos(CFrame.new(107.011, 89.222, -12473.6))
                -- = CFrame.new(233.131, 24.7342, -12198.4))
            elseif MyLevel <= 2400 then
                -- = "Candy Rebel [Lv. 2300]"
                -- = 2
                -- = "ChocQuest2"
                -- = "Candy Rebel"
                topos(CFrame.new(107.011, 89.222, -12473.6))
                -- = CFrame.new(233.131, 24.7342, -12198.4))
            end
        end
    end
    if World1 then
        Main:AddToggle("Auto Second Sea",_G.AutoSecondSea,function(value)
            _G.AutoSecondSea = value
            StopTween(_G.AutoSecondSea)
        end)
    
        spawn(function()
            while wait() do 
                if _G.AutoSecondSea then
                    pcall(function()
                        local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
                        if MyLevel >= 700 and World1 then
                            if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                                local CFrame1 = CFrame.new(4849.29883, 5.65138149, 719.611877)
                                repeat topos(CFrame1) wait() until (CFrame1.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSecondSea == false
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                                wait(0.5)
                                EquipWeapon("Key")
                                repeat topos(CFrame.new(1347.7124, 37.3751602, -1325.6488)) wait() until (Vector3.new(1347.7124, 37.3751602, -1325.6488)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSecondSea == false
                                wait(0.5)
                            else
                                if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                                                if not v.Humanoid.Health <= 0 then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        OldCFrameSecond = v.HumanoidRootPart.CFrame
                                                        repeat task.wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.Head.CanCollide = false
                                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                            v.HumanoidRootPart.CFrame = OldCFrameSecond
                                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                                            game:GetService("VirtualUser"):CaptureController()
                                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until not _G.AutoSecondSea or not v.Parent or v.Humanoid.Health <= 0
                                                    end
                                                else 
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                                end
                                            end
                                        end
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral [Lv. 700] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end
    
    if World2 then
        Main:AddToggle("Auto Third Sea",_G.AutoThirdSea,function(value)
            _G.AutoThirdSea = value
            StopTween(_G.AutoThirdSea)
        end)
    
        spawn(function()
            while wait() do
                if _G.AutoThirdSea then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
                            _G.AutoFarm = false
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
                                topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                                if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                                end
                                wait(1.8)
                                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "rip_indra [Lv. 1500] [Boss]" then
                                            OldCFrameThird = v.HumanoidRootPart.CFrame
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                                v.HumanoidRootPart.CFrame = OldCFrameThird
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
                                        end
                                    end
                                elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                    topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end
    
    if World2 then
        Main:AddToggle("Auto Farm Factory",_G.AutoFactory,function(value)
            _G.AutoFactory = value
            StopTween(_G.AutoFactory)
        end)
    
        spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoFactory then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Core" and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()         
                                        EquipWeapon(_G.SelectWeapon)
                                                            Click()           
                                        topos(CFrame.new(448.46756, 199.356781, -441.389252))                                  
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until v.Humanoid.Health <= 0 or _G.AutoFactory == false
                                end
                            end
                        else
                            topos(CFrame.new(448.46756, 199.356781, -441.389252))
                        end
                    end
                end)
            end
        end)
    elseif World3 then
        Main:AddToggle("Auto Mystic Island",_G.AutoMysticIsland,function(value)
            _G.AutoMysticIsland = value
        end)
    
        spawn(function()
            while wait() do
                if _G.AutoMysticIsland then
                    pcall(function()
                        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                            topos(game:GetService("Workspace").Map:FindFirstChild("MysticIsland").HumanoidRootPart.CFrame * CFrame.new(0,500,-100))
                        end
                    end)
                end
            end
        end)
    end
    
    Main:AddSeperator("Fighting Style")
    
    Main:AddToggle("Auto Superhuman",_G.AutoSuperhuman,function(value)
        _G.AutoSuperhuman = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do 
                if _G.AutoSuperhuman then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
                        UnEquipWeapon("Combat")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                    end   
                    if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                        _G.SelectWeapon = "Superhuman"
                    end  
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                            _G.SelectWeapon = "Black Leg"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                            _G.SelectWeapon = "Electro"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                            _G.SelectWeapon = "Fishman Karate"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                            _G.SelectWeapon = "Dragon Claw"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                            UnEquipWeapon("Black Leg")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                            UnEquipWeapon("Black Leg")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                            UnEquipWeapon("Electro")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                            UnEquipWeapon("Electro")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                            UnEquipWeapon("Fishman Karate")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                            UnEquipWeapon("Fishman Karate")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                            UnEquipWeapon("Dragon Claw")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                            UnEquipWeapon("Dragon Claw")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                        end 
                    end
                end
            end
        end)
    end)
    
    Main:AddToggle("Auto DeathStep",_G.AutoDeathStep,function(value)
        _G.AutoDeathStep = value
    end)
    
    spawn(function()
        while wait() do wait()
            if _G.AutoDeathStep then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                        _G.SelectWeapon = "Death Step"
                    end  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                        _G.SelectWeapon = "Death Step"
                    end  
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
                        _G.SelectWeapon = "Black Leg"
                    end 
                else 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end
            end
        end
    end)
    
    Main:AddToggle("Auto Sharkman Karate",_G.AutoSharkman,function(value)
        _G.AutoSharkman = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoSharkman then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
                            topos(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                        else 
                            Ms = "Tide Keeper [Lv. 1475] [Boss]"
                            if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then   
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Ms then    
                                        OldCFrameShark = v.HumanoidRootPart.CFrame
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                            v.Head.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.HumanoidRootPart.CFrame = OldCFrameShark
                                            topos(v.HumanoidRootPart.CFrame*CFrame.new(5,10,7))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoSharkman == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
                                    end
                                end
                            else
                                topos(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202))
                                wait(3)
                            end
                        end
                    else 
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                    end
                end
            end
        end)
    end)
    
    Main:AddToggle("Auto Electric Claw",_G.AutoElectricClaw,function(value)
        _G.AutoElectricClaw = value
        StopTween(_G.AutoElectricClaw)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do 
                if _G.AutoElectricClaw then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw") then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            _G.SelectWeapon = "Electric Claw"
                        end  
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            _G.SelectWeapon = "Electric Claw"
                        end  
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
                            _G.SelectWeapon = "Electro"
                        end 
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                end
                if _G.AutoElectricClaw then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                            if _G.AutoFarm == false then
                                repeat task.wait()
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                wait(2)
                                repeat task.wait()
                                    topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                                wait(1)
                                repeat task.wait()
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            elseif _G.AutoFarm == true then
                                _G.AutoFarm = false
                                wait(1)
                                repeat task.wait()
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                wait(2)
                                repeat task.wait()
                                    topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                                wait(1)
                                repeat task.wait()
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                _G.SelectWeapon = "Electric Claw"
                                wait(.1)
                                _G.AutoFarm = true
                            end
                        end
                    end
                end
            end
        end)
    end)
    
    Main:AddToggle("Auto Dragon Talon",_G.AutoDragonTalon,function(value)
        _G.AutoDragonTalon = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoDragonTalon then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        _G.SelectWeapon = "Dragon Talon"
                    end  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        _G.SelectWeapon = "Dragon Talon"
                    end  
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
                        _G.SelectWeapon = "Dragon Claw"
                    end 
                else 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                end
            end
        end
    end)
    
    Main:AddSeperator("Mastery")
    
    Main:AddToggle("Auto Farm BF Mastery",_G.AutoFarmFruitMastery,function(value)
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
                        Magnet = false
                        UseSkill = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartMasteryFruitMagnet = false
                        UseSkill = false
                        CheckQuest()
                        repeat wait()
                            topos(CFrameQuest)
                        until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarmFruitMastery
                        if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                            wait(1.2)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                            wait(0.5)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Mon then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
                                            repeat task.wait()
                                                if v.Humanoid.Health <= HealthMs then
                                                    AutoHaki()
                                                    EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    UseSkill = true
                                                else           
                                                    UseSkill = false 
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
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
                            local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
                            if Mob then
                                topos(Mob.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
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
    
    Main:AddToggle("Auto Farm Gun Mastery",_G.AutoFarmGunMastery,function(value)
        _G.AutoFarmGunMastery = value
        StopTween(_G.AutoFarmGunMastery)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoFarmGunMastery then
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        Magnet = false                                      
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartMasteryGunMagnet = false
                        CheckQuest()
                        topos(CFrameQuest)
                        if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            wait(1.2)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                            pcall(function()
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Mon then
                                        repeat task.wait()
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                HealthMin = v.Humanoid.MaxHealth * _G.Kill_At/100
                                                if v.Humanoid.Health <= HealthMin then                                                
                                                    EquipWeapon(SelectWeaponGun)
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
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
                                                    EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false               
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
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
                            local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
                            if Mob then
                                topos(Mob.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
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
    
    _G.Kill_At = 25
    Main:AddSlider("Kill At %",1,100,25,function(value)
        _G.Kill_At = value
    end)
    
    Race:AddSeperator("Auto Evo Races")
    
    Race:AddToggle("Auto Evo Race Human",_G.Human,function()
        _G.Human = value
    end)
    
    Race:AddToggle("Auto Evo Race Mink",_G.Mink,function()
        _G.Mink = value
    end)
    
    Race:AddToggle("Auto Evo Sky",_G.Sky,function()
        _G.Sky = value
    end)
    
    Race:AddToggle("Auto Evo Shark",_G.Shark,function()
        _G.Shark = value
    end)
    
    Race:AddToggle("Auto Evo Cybrog",_G.Cybrog,function()
        _G.Cybrog = value
    end)
    
    Race:AddToggle("Auto Evo Ghoul",_G.Ghoul,function()
        _G.Ghoul = value
    end)
    
    
    
    Swords:AddSeperator("Swords And Guns")
    
    local Boss = {}
    
    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
        if string.find(v.Name, "Boss") then
            if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                else
                table.insert(Boss, v.Name)
            end
        end
    end
    
    local BossName = Main:AddDropdown("Select Boss",Boss,function(value)
        _G.SelectBoss = value
    end)
    
    Main:AddButton("Refresh Boss",function()
        BossName:Clear()
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            if string.find(v.Name, "Boss") then
                BossName:Add(v.Name) 
            end
        end
    end)
    
    Main:AddToggle("Auto Farm Boss",_G.AutoFarmBoss,function(value)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        _G.AutoFarmBoss = value
        StopTween(_G.AutoFarmBoss)
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoFarmBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == _G.SelectBoss then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:AddToggle("Auto Farm All Boss",_G.AutoAllBoss,function(value)
        _G.AutoAllBoss = value
        StopTween(_G.AutoAllBoss)
    end)
    
    Main:AddToggle("Auto Farm All Boss Hop",_G.AutoAllBossHop,function(value)
        _G.AutoAllBossHop = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoAllBoss then
                pcall(function()
                    for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
                        if string.find(v.Name,"Boss") then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    topos(v.HumanoidRootPart.CFrame*CFrame.new(5,10,7))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until v.Humanoid.Health <= 0 or _G.AutoAllBoss == false or not v.Parent
                            end
                        else
                            if _G.AutoAllBossHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    Swords:AddSeperator("Spikey Trident")
    
    local MobKilled = Swords:AddLabel("")
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoDoughtBoss then
                if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                    MobKilled:Set("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                    MobKilled:Set("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                    MobKilled:Set("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
                else
                    MobKilled:Set("Boss Is Spawning")
                    end
                end
            end)
        end
    end)
    
    Swords:AddToggle("Auto Spikeys Trident",_G.AutoDoughtBoss,function(value)
        _G.AutoDoughtBoss = value
        StopTween(_G.AutoDoughtBoss)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoDoughtBoss then
                if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                    KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41)) - 500)
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                    KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),40,41)) - 500)
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                    KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),41,41)) - 500)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoDoughtBoss then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 50
                                        v.HumanoidRootPart.Size = Vector3.new(200,200,200)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(10,-50,-29))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,-30,10))
                        else
                            if KillMob == 0 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
                            end                    
                            if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 20
                                                    v.Head.CanCollide = false 
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    MagnetDought = true
                                                    PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or KillMob == 0
                                            end
                                        end
                                    end
                                else
                                    MagnetDought = false
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]").HumanoidRootPart.CFrame * CFrame.new(5,10,7)) 
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]").HumanoidRootPart.CFrame * CFrame.new(5,10,7)) 
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                            else
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]") then
                                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                                end
                                            end
                                        end
                                    end                       
                                end
                            else
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                    topos(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    Main:AddSeperator("Advance Dungeon")
    
    Main:AddToggle("Auto Advance Dungeon",_G.AutoAdvanceDungeon,function(value)
        _G.AutoAdvanceDungeon = value
        StopTween(_G.AutoAdvanceDungeon)
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoAdvanceDungeon then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                                topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
                                if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check")
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal")
                                end
                            end
                        elseif game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                            if game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                                topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
                                if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check")
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal")
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    Swords:AddSeperator("Buddy Sword")
    
    Swords:AddToggle("Auto Buddy Sword",_G.AutoBudySword,function(value)
        _G.AutoBudySword = value
        StopTween(_G.AutoBudySword)
    end)
    
    Swords:AddToggle("Auto Buddy Sword Hop",_G.AutoBudySwordHop,function(value)
        _G.AutoBudySwordHop = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoBudySword then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,50,30))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        else
                            if _G.AutoBudySwordHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    --------------------------------------------------------------------
    
    Swords:AddSeperator("Auto Thushita + Ripundra test")
    
    Swords:AddToggle("AutoRip test",_G.AutoRip,function(value)
        _G.AutoRip = value
        StopTween(_G.AutoRip)
    end)
        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        Click()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.RipChan or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        else
                            if _G.RipChanH then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end)
    
        spawn(function()
            while wait() do
                pcall(function()
                    
                end)
            end
        end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoRip then
                    if not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") and not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                    repeat  wait()
                                        topos(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)) 
                                    until not _G.AutoElitehunter or (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
                                    if (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                        wait(1.1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                                        wait(0.5)
                                    end
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                    if string.find(QuestTitle,"Diablo") or string.find(QuestTitle,"Deandre") or string.find(QuestTitle,"Urban") then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        repeat task.wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                                            game:GetService("VirtualUser"):CaptureController()
                                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until _G.AutoRip == false or v.Humanoid.Health <= 0 or not v.Parent
                                                    end
                                                end
                                            end
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                            else
                                                if _G.AutoEliteHunterHop then
                                                    Hop()
                                                else
                                                    topos(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188))
                                                end
                                            end
                                        end                    
                                    end
                                end
                        else
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                            _G.AutoElitehunter = false
                        repeat
                        wait(13)
                        topos(CFrame.new(-5419.56641, 1090.33752, -2665.78589, 0.971406102, 1.70427565e-08, 0.237423971, -2.01854462e-08, 1, 1.08056044e-08, -0.237423971, -1.52891388e-08, 0.971406102))
                        
                        local args ={
                            [1] = "activateColor",
                            [2] = "Winter Sky"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                        wait(14)
                        topos(CFrame.new(-5414.27979, 314.837671, -2212.57007, -0.984678745, -4.57075764e-08, 0.174378246, -4.24506084e-08, 1, 2.24074217e-08, -0.174378246, 1.46616497e-08, -0.984678745))
                        local args = {
                            [1] = "activateColor",
                            [2] = "Pure Red"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        
                        wait(17)
                        topos(CFrame.new(-4972.89502, 336.937714, -3720.4707, -0.738323092, -2.82306036e-08, 0.674447179, 5.20171852e-08, 1, 9.88010598e-08, -0.674447179, 1.08029944e-07, -0.738323092))
                        local args = {
                            [1] = "activateColor",
                            [2] = "Snow White"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                			wait(0.5)
                			EquipWeapon("God's Chalice")
                			wait(0.5)
    				topos(CFrame.new(-5560.27295, 313.915466, -2663.89795))
                        until game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")
				
                        if game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        Click()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,-50,-29))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.RipChan or not v.Parent or v.Humanoid.Health <= 0
                        if not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                                wait(1)
local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                    repeat  wait()
                                        topos(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)) 
                                    until not _G.AutoElitehunter or (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
                                    if (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                        wait(1.1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                                        wait(0.5)
                                    end
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                    if string.find(QuestTitle,"Diablo") or string.find(QuestTitle,"Deandre") or string.find(QuestTitle,"Urban") then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        repeat task.wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,-50,-29))
                                                            game:GetService("VirtualUser"):CaptureController()
                                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until _G.AutoRip == false or v.Humanoid.Health <= 0 or not v.Parent
                                                    end
                                                end
                                            end
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                            else
                                                if _G.AutoEliteHunterHop then
                                                    Hop()
                                                else
                                                    topos(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188))
                                                end
                                            end
                                        end                    
                                    end
                                end
                        end
                        end
                        end
                    end
                end
            end
        end)
    end)
    
    Swords:AddToggle("AutoTushita test",_G.AutoThshita,function(value)
        _G.AutoTushita = value
    end)
    
	spawn(function()
        while wait() do
            if _G.RipChan then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.RipChan or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        else
                            if _G.RipChanH then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    --------------------------------------------------------------------
    
    Swords:AddSeperator("Sparent bow")
    
    Swords:AddToggle("Auto Sparent Bow ",_G.Chanee,function(value)
        _G.Chanee = value
    end)
    
    Swords:AddToggle("Auto Sparent Bow ",_G.ChaneeHop,function(value)
        _G.ChaneeHop = value
    end)
    
    spawn(function()
        while wait() do
            if _G.Chanee then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Island Empress [Lv. 1675] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.Chanee or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Island Empress [Lv. 1675] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        else
                            if _G.ChaneeHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    --------------------------------------------------------------------
    
    Swords:AddSeperator("Cavender Sword") --Caven
    
    Swords:AddToggle("Auto Cavender Sword",_G.CavenF,function(value)
        _G.CavenF = value
        StopTween(_G.CavenF)
    end)
    
    Swords:AddToggle("Auto Cavender Sword Hop",_G.CavenFHop,function(value)
        _G.CavenFHop = value
    end)
        
    spawn(function()
        while wait() do
            if _G.CavenF then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.CavenF or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        else
                            if _G.CavenFHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    --------------------------------------------------------------------
    
    Main:AddSeperator("Elite")
    
    local EliteProgress = Main:AddLabel("")
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoElitehunter then
                EliteProgress:Set("Elite Progress : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
                end
            end
        end)
    end)
    
    Main:AddToggle("Auto Elite Hunter",_G.AutoElitehunter,function(value)
        _G.AutoElitehunter = value
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        StopTween(_G.AutoElitehunter)
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoElitehunter and World3 then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        repeat  wait()
                            topos(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)) 
                        until not _G.AutoElitehunter or (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
                        if (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                            wait(0.5)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if string.find(QuestTitle,"Diablo") or string.find(QuestTitle,"Deandre") or string.find(QuestTitle,"Urban") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
                                        end
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                else
                                    if _G.AutoEliteHunterHop then
                                        Hop()
                                    else
                                        topos(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188))
                                    end
                                end
                            end                    
                        end
                    end
                end)
            end
        end
    end)
    
    Main:AddToggle("Auto Elite Hunter Hop",_G.AutoEliteHunterHop,function(value)
        _G.AutoEliteHunterHop = value
    end)
    
    Swords:AddSeperator("Auto Koko sword (or law)")
    
    Swords:AddToggle("Auto law (don't buy a chip)",_G.Law,function(vvalue)
        _G.Law = value
    end)
    
    Swords:AddToggle("Auto law Hop",_G.LawHop,function(value)
        _G.LawHop = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.law then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == ("Order [Lv. 1250] [Raid Boss]" or v.Name == "Order [Lv. 1250] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    pcall(function()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        Click()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(10,-50,-29))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                    end)
                                until _G.law == false or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        StartMagnetMusketeerhat.Fast = false
                    end
                end
            end
        end)
    end)
    
    Swords:AddSeperator("Hallow Scythe")
    
    Swords:AddToggle("Auto Hallow Scythe (Full)",_G.AutoFarmBossHallow,function(value)
        _G.AutoFarmBossHallow = value
        StopTween(_G.AutoFarmBossHallow)
    end)
    
    Swords:AddToggle("Auto Hallow Scythe Hop",_G.AutoFarmBossHallowHop,function(value)
        _G.AutoFarmBossHallowHop = value
    end)
    if _G.AutoFarmBossHallow == false then
        if _G.Auto_BoneTest == true then
            _G.Auto_BoneTest = false
        end
    end
    
    spawn(function()
        while wait() do
            if _G.AutoFarmBossHallow then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name , "Soul Reaper") then
                                _G.Auto_BoneTest = false
                                repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    Click()
                                    AutoHaki()
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    topos(v.HumanoidRootPart.CFrame*CFrame.new(5,-50,-29))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                    v.HumanoidRootPart.Transparency = 1
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                        EquipWeapon("Hallow Essence")
                        
                    elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        _G.Auto_BoneTest = true 
                        _G.Auto_Random_Bone = true
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                            _G.Auto_BoneTest = false
                            _G.Auto_Random_Bone = false
                            wait(1)
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,-50,-29))
                        else
                            if _G.AutoFarmBossHallowHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    Swords:AddSeperator("Dark Dagger")
    
    Swords:AddToggle("Auto Dark Dagger",_G.AutoDarkDagger,function(value)
        _G.AutoDarkDagger = value
        StopTween(_G.AutoDarkDagger)
    end)
        
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoDarkDagger then
                    if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 5000] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == ("rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "rip_indra [Lv. 5000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    pcall(function()
                                        _G.FastAttack = true
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                    end)
                                until _G.AutoDarkDagger == false or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        _G.AutoElitehunter = true
                        _G.FastAttack = false
                    end
                end
            end
        end)
    end)
    
    Swords:AddToggle("Auto Dark Dagger Hop",_G.AutoDarkDagger_Hop,function(value)
        _G.AutoDarkDagger_Hop = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if (_G.AutoDarkDagger_Hop and _G.AutoDarkDagger) and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                    Hop()
                end
            end
        end)
    end)
    
    Swords:AddSeperator("Swan Glasses")
    
    Swords:AddToggle("Auto Swan Glasses",_G.AutoFarmSwanGlasses,function(value)
        _G.AutoFarmSwanGlasses = value
        StopTween(_G.AutoFarmSwanGlasses)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoFarmSwanGlasses then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    pcall(function()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    end)
                                until _G.AutoFarmSwanGlasses == false or v.Humanoid.Health <= 0
                            end
                        end
                    else 
                        repeat task.wait()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625)) 
                        until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or _G.AutoFarmSwanGlasses == false
                    end
                end
            end
        end)
    end)
    
    Swords:AddToggle("Auto Swan Glasses Hop",_G.AutoFarmSwanGlasses_Hop,function(value)
        _G.AutoFarmSwanGlasses_Hop = value
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if (_G.AutoFarmSwanGlasses and _G.AutoFarmSwanGlasses_Hop) and World2 and not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                    Hop()
                end
            end
        end)
    end)
    
    Main:AddSeperator("Bone")
    

     -- auto bone unf 
     --[[Mon = "Posessed Mummy [Lv. 2050]"
                LevelQuest = 2
                NameQuest = "HauntedQuest2"
                NameMon = "Posessed Mummy"]]
    
spawn(function()
	while wait(.1) do
		pcall(function()
			if _G.Auto_Bone then
				if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
							if v:WaitForChild("Humanoid").Health > 0 then
								repeat game:GetService("RunService").Heartbeat:wait()
								    AutoHaki()
									EquipWeapon(_G.SelectWeapon)
                                                            Click()
									v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
									topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
									v.HumanoidRootPart.CanCollide = false
									attack()
									PosMonBone = v.HumanoidRootPart.CFrame
									StartMagnetBoneMon = true
								until _G.Auto_Bone == false or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					end
				else
					BoneMagnet = false
					TP(CFrame.new(-9501.64453, 582.052612, 6034.20117))
				end
			end
		end)
	end
end)

    Main:AddToggle("Auto Farm Bone (+ Auto Quest)",false,function(value)
        _G.Auto_BoneTest = value
        StopTween(_G.Auto_BoneTest)
    end)
         --[[Mon = "Posessed Mummy [Lv. 2050]"
                LevelQuest = 2
                NameQuest = "HauntedQuest2"
                NameMon = "Posessed Mummy"]]
spawn(function()
	while wait(.1) do
		pcall(function()
			if _G.Auto_BoneTest then
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, "Posessed Mummy") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","HauntedQuest2",2)
                    end
				if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
							if v:WaitForChild("Humanoid").Health > 0 then
								repeat game:GetService("RunService").Heartbeat:wait()
								    AutoHaki()
									EquipWeapon(_G.SelectWeapon)
                                                            Click()
									v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
									topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
									v.HumanoidRootPart.CanCollide = false
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
									PosMonBone = v.HumanoidRootPart.CFrame
									StartMagnetBoneMon = true
								until _G.Auto_BoneTest == false or not v.Parent or v.Humanoid.Health <= 0
							    end
					    	end
					    end
				    else
					    BoneMagnet = false
					    TP(CFrame.new(-9501.64453, 582.052612, 6034.20117))
				end
			end
		end)
	end
end)

    Main:AddToggle("Auto Random Surprise",_G.Auto_Random_Bone,function(value)
        _G.Auto_Random_Bone = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Auto_Random_Bone then    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                end
            end
        end)
    end)
    
    Main:AddSeperator("Observation")
    
    local ObservationRange = Main:AddLabel("")
    
    spawn(function()
        while wait() do
            pcall(function()
                ObservationRange:Set("Observation Range Level : "..math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value))
            end)
        end
    end)
    
    Main:AddToggle("Auto Farm Observation",_G.AutoObservation,function(value)
        _G.AutoObservation = value
        StopTween(_G.AutoObservation)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoObservation then
                    repeat task.wait()
                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            game:GetService('VirtualUser'):CaptureController()
                            game:GetService('VirtualUser'):SetKeyDown('0x65')
                            wait(2)
                            game:GetService('VirtualUser'):SetKeyUp('0x65')
                        end
                    until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AutoObservation
                end
            end)
        end
    end)
    
    Main:AddToggle("Auto Farm Observation Hop",_G.AutoObservation_Hop,function(value)
        _G.AutoObservation_Hop = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoObservation then
                    if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000 then
                        game:GetService("StarterGui"):SetCore("SendNotification", {
                            Icon = "rbxassetid://0";
                            Title = "Observation", 
                            Text = "You Have Max Points"
                        })
                        wait(2)
                    else
                        if World2 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
                                            wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                            end
                        elseif World1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                            end
                        elseif World3 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                            end
                        end
                    end
                end
            end
        end)
    end)
    
    Swords:AddSeperator("Saber")
    
    Swords:AddToggle("Auto Saber",_G.AutoSaber,function(value)
        _G.AutoSaber = value
        StopTween(_G.AutoSaber)
    end)
    
    Swords:AddToggle("Auto Saber Hop",_G.AutoSaber_Hop,function(value)
        _G.AutoSaber_Hop = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoSaber then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Saber Expert [Lv. 200] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    PosMonSaber = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CFrame = PosMonSaber
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoSaber or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        else
                            if _G.AutoSaber_Hop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    Swords:AddSeperator("Legendary Sword")
    
    Swords:AddToggle("Auto Legendary Sword",_G.AutoBuyLegendarySword,function(value)
        _G.AutoBuyLegendarySword = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoBuyLegendarySword then
                pcall(function()
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "1"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "3"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    if _G.AutoBuyLegendarySword_Hop and _G.AutoBuyLegendarySword and World2 then
                        wait(1)
                        Hop()
                    end
                end)
            end 
        end
    end)
    
    Swords:AddToggle("Auto Legendary Sword Hop",_G.AutoBuyLegendarySword_Hop,function(value)
        _G.AutoBuyLegendarySword_Hop = value
    end)
    
    Main:AddSeperator("Enchancement Colour")
    
    Main:AddToggle("Auto Enchancement Colour",_G.AutoBuyEnchancementColour,function(value)
        _G.AutoBuyEnchancementColour = value
    end)
    
    Main:AddToggle("Auto Enchancement Hop",_G.AutoBuyEnchancementColour_Hop,function(value)
        _G.AutoBuyEnchancementColour_Hop = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoBuyEnchancementColour then
                local args = {
                    [1] = "ColorsDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                if _G.AutoBuyEnchancementColour_Hop and _G.AutoBuyEnchancementColour and not World1 then
                    wait(10)
                    Hop()
                end
            end 
        end
    end)
    
    Main:AddSeperator("Other")
    
    Main:AddToggle("Auto Musketeer Hat",_G.AutoMusketeerHat,function(value)
        _G.AutoMusketeerHat = value
        StopTween(_G.AutoMusketeerHat)
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.AutoMusketeerHat then
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Forest Pirate [Lv. 1825]" then
                                        repeat task.wait()
                                            pcall(function()
                                                EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                                AutoHaki()
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                                v.HumanoidRootPart.CanCollide = false
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                MusketeerHatMon = v.HumanoidRootPart.CFrame
                                                StartMagnetMusketeerhat = true
                                            end)
                                        until _G.AutoMusketeerHat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartMagnetMusketeerhat = false
                                    end
                                end
                            else
                                StartMagnetMusketeerhat = false
                                topos(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                            end
                        else
                            topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
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
                                                EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                                AutoHaki()
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.CFrame = OldCFrameElephant
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            end)
                                        until _G.AutoMusketeerHat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            else
                                topos(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                            end
                        else
                            topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                            if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
                        topos(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                    end
                end
            end
        end)
    end)
    
    Main:AddToggle("Auto Rainbow Haki",_G.Auto_Rainbow_Haki,function(value)
        _G.Auto_Rainbow_Haki = value
        StopTween(_G.Auto_Rainbow_Haki)
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Rainbow_Haki then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Stone [Lv. 1550] [Boss]" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Island Empress [Lv. 1675] [Boss]" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                        end
                    else
                        topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                        end
                    end
                end
            end
        end)
    end)
    
    Main:AddToggle("Auto Observation Haki v2",_G.AutoObservationv2,function(value)
        _G.AutoObservationv2 = value
        StopTween(_G.AutoObservationv2)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoObservationv2 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 3 then
                        _G.AutoMusketeerHat = false
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") and  game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple") then
                            repeat 
                                topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
                                wait() 
                            until not _G.AutoObservationv2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                            repeat 
                                topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188)) 
                                wait() 
                            until not _G.AutoObservationv2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
                        else
                            for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                                if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
                                    v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
                                    wait()
                                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
                                    wait()
                                end
                            end   
                        end
                    else
                        _G.AutoMusketeerHat = true
                    end
                end
            end)
        end
    end)
    
    Swords:AddSeperator("Rengoku")
    
    Swords:AddToggle("Auto Rengoku",_G.AutoRengoku,function(value)
        _G.AutoRengoku = value
        StopTween(_G.AutoRengoku)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoRengoku then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                        EquipWeapon("Hidden Key")
                        topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                    AutoHaki()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    RengokuMon = v.HumanoidRootPart.CFrame
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    StartRengokuMagnet = true
                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
                                StartRengokuMagnet = false
                            end
                        end
                    else
                        StartRengokuMagnet = false
                        topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                    end
                end
            end
        end)
    end)
    
    Main:AddToggle("Auto Farm Ectoplasm",_G.AutoEctoplasm,function(value)
        _G.AutoEctoplasm = value
        StopTween(_G.AutoEctoplasm)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoEctoplasm then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name, "Ship") then
                                repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                    AutoHaki()
                                    if string.find(v.Name,"Ship") then
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        EctoplasmMon = v.HumanoidRootPart.CFrame
                                        StartEctoplasmMagnet = true
                                    else
                                        StartEctoplasmMagnet = false
                                        topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                                    end
                                until _G.AutoEctoplasm == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        StartEctoplasmMagnet = false
                        local Distance = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if Distance > 18000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                        end
                        topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                    end
                end
            end
        end)
    end)
    
    Swords:AddSeperator("Yama")
    
    Swords:AddToggle("Auto Yama",_G.AutoYama,function(value)
        _G.AutoYama = value
        StopTween(_G.AutoYama)
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoYama then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                    repeat wait(.1)
                        fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
                end
            end
        end
    end)
    
    Main:AddToggle("Auto Evo Race",_G.Auto_EvoRace,function(value)
        _G.Auto_EvoRace = value
        StopTween(_G.Auto_EvoRace)
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_EvoRace then
                    if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                            topos(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                            if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                wait(1.3)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                            end
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                            pcall(function()
                                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                                    topos(game:GetService("Workspace").Flower1.CFrame)
                                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                                    topos(game:GetService("Workspace").Flower2.CFrame)
                                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Zombie [Lv. 950]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Zombie [Lv. 950]" then
                                                repeat task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                    PosMonEvo = v.HumanoidRootPart.CFrame
                                                    StartEvoMagnet = true
                                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_EvoRace == false
                                                StartEvoMagnet = false
                                            end
                                        end
                                    else
                                        StartEvoMagnet = false
                                        topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
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
    
    Main:AddToggle("Auto Bartlio Quest",_G.AutoBartilo,function(value)
        _G.AutoBartilo = value
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.AutoBartilo then
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                            if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                                Ms = "Swan Pirate [Lv. 775]"
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Ms then
                                        pcall(function()
                                            repeat task.wait()
                                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                                EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                                AutoHaki()
                                                v.HumanoidRootPart.Transparency = 1
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))													
                                                PosMonBarto =  v.HumanoidRootPart.CFrame
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                AutoBartiloBring = true
                                            until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            AutoBartiloBring = false
                                        end)
                                    end
                                end
                            else
                                repeat topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
                            end
                        else
                            repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                        end 
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                            Ms = "Jeremy [Lv. 850] [Boss]"
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Ms then
                                    OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        EquipWeapon(_G.SelectWeapon)
                                                            Click()
                                        AutoHaki()
                                        v.HumanoidRootPart.Transparency = 1
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameBartlio
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                            repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                            wait(1)
                            repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                            wait(2)
                        else
                            repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                        repeat topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                    end
                end 
            end
        end)
    end)
    
    Main:AddToggle("Auto Holy Torch",_G.AutoHolyTorch,function(value)
        _G.AutoHolyTorch = value
        StopTween(_G.AutoHolyTorch)
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoHolyTorch then
                pcall(function()
                    wait(1)
                    TP(CFrame.new(-10752, 417, -9366))
                    wait(1)
                    TP(CFrame.new(-11672, 334, -9474))
                    wait(1)
                    TP(CFrame.new(-12132, 521, -10655))
                    wait(1)
                    TP(CFrame.new(-13336, 486, -6985))
                    wait(1)
                    TP(CFrame.new(-13489, 332, -7925))
                end)
            end
        end
    end)
    
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.BringMonster then
                    CheckQuest()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
                            v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        elseif _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 275 then
                            v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        end
                        if _G.AutoEctoplasm and StartEctoplasmMagnet then
                            if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= 250 then
                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                v.HumanoidRootPart.CFrame = EctoplasmMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoRengoku and StartRengokuMagnet then
                            if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = RengokuMon
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoMusketeerHat and StartMagnetMusketeerhat then
                            if v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = MusketeerHatMon
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.Auto_EvoRace and StartEvoMagnet then
                            if v.Name == "Zombie [Lv. 950]" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonEvo
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoBartilo and AutoBartiloBring then
                            if v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonBarto
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then
                            if v.Name == "Monkey [Lv. 14]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 100 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == "Factory Staff [Lv. 800]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(80,180,80)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == Mon then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                        if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
                            if v.Name == "Monkey [Lv. 14]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == "Factory Staff [Lv. 800]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == Mon then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                        if _G.Auto_Bone and StartMagnetBoneMon then
                            if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 200 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonBone
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoDoughtBoss and MagnetDought then
                            if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoCandy and StartMagnetCandy then
                            if (v.HumanoidRootPart.Position - PosMonCandy.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonCandy
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                
                            end
                        end
                        if _G.Auto_BoneTest and StartMagnetBoneMon then
                            if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 320 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonBone
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            end)
        end
    end)
    

    --------------------------------------------------------------------
    
    local plyserv = Combat:AddLabel("Players")
    
    spawn(function()
        while wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                    if i == 12 then
                        plyserv:Set("Players :".." "..i.." ".."/".." ".."12".." ".."(Max)")
                    elseif i == 1 then
                        plyserv:Set("Player :".." "..i.." ".."/".." ".."12")
                    else
                        plyserv:Set("Players :".." "..i.." ".."/".." ".."12")
                    end
                end
            end)
        end
    end)
    
    Playerslist = {}
    
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        table.insert(Playerslist,v.Name)
    end
    
    local SelectedPly = Combat:AddDropdown("Select Players",Playerslist,function(value)
        _G.SelectPly = value
    end)
    
    Combat:AddButton("Refresh Player",function()
        Playerslist = {}
        SelectedPly:Clear()
        for i,v in pairs(game:GetService("Players"):GetChildren()) do  
            SelectedPly:Add(v.Name)
        end
    end)
    
    Combat:AddToggle("Spectate Player",false,function(value)
        SpectatePlys = value
        local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
        local plr2 = game:GetService("Players"):FindFirstChild(_G.SelectPly)
        repeat wait(.1)
            game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid
        until SpectatePlys == false 
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
    end)

                
    Combat:AddToggle("Teleport",false,function(value)
        _G.TeleportPly = value
        pcall(function()
            if _G.TeleportPly then
                repeat topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
            end
            StopTween(_G.TeleportPly)
        end)
    end)
    
    Combat:AddToggle("Auto Leave Pvp (In combat Only)",false,function(value)
        _G.LeavePvp = value
    end)
    
    spawn(function()
        while wait(0.0003) do
            pcall(function()
                if _G.LeavePvp then
                    local Incombat = game:GetService("Players").LocalPlayer.Main.PlayerGui.InCombat
                    if _G.leave == true and Incombat.Visible == false then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines")
                                else
                                if _G.Leave == true and Imcombat.Visible == true then
                                    _G.Leave = false
                        end
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
    if _G.Leave == true then
        if Incombat.Visible == false then
            wait(10)
            game:Shutdown()
        end
    end
            end)
end
end)


    Combat:AddToggle("Auto Farm Player (new method)",false,function(value)
        _G.Auto_Kill_Ply = value
        StopTween(_G.Auto_Kill_Ply)
    end)
    
    spawn(function()
        while wait() do
            if _G.Auto_Kill_Ply then
                pcall(function()
                    if _G.SelectPly ~= nil then 
                        if game.Players:FindFirstChild(_G.SelectPly) then
                            if game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health > 0 then
                                repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    Click()
                                    AutoHaki()
                                    game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CanCollide = false
                                    topos(game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0,-5,0))
                                    wait(.2)
                                    Click()
                                    spawn(function()
                                        pcall(function()
                                            if _G.SelectWeapon == SelectWeaponGun then
                                                local args = {
                                                    [1] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Position,
                                                    [2] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart
                                                }
                                                game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                            else
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            end
                                        end)
                                    end)
                                until game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(_G.SelectPly) or not _G.Auto_Kill_Ply
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    Combat:AddSeperator("Aimbot")
    
    Combat:AddToggle("Aimbot Gun (Nearest)",false,function(value)
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
    
    Combat:AddToggle("Aimbot Skill (Nearest)",false,function(value)
        _G.Aim = value
    end)
                Playersaimbot = nil
            local mouse = game.Players.LocalPlayer:GetMouse()
            local guiservice = game.GetService(game, "GuiService")
            local players = game.GetService(game, "Players")
            local localPlayer = players.LocalPlayer
            local currentCamera = game.GetService(game, "Workspace").CurrentCamera
            local circle = Drawing.new("Circle")
            
            
            function updateCircle(Fov,colorCircle)
               if circle.__OBJECT_EXISTS then
                   circle.Transparency = 1
                   circle.Visible = true
                   circle.Thickness = 2
                   circle.Color = colorCircle
                   circle.NumSides = 100
                   circle.Radius = (Fov * 6) / 2
                   circle.Filled = false
                   circle.Position = Vector2.new(mouse.X, mouse.Y + (guiservice.GetGuiInset(guiservice).Y))
               end
            end
            spawn(function()
                game.GetService(game, "RunService").RenderStepped:Connect(function()
                    pcall(function()
                    updateCircle(_G.setting['Fov'],_G.setting['Color'])
                    end)
                end)
            end)
            spawn(function()
                pcall(function()
                    while wait() do
                        for i, v in pairs(players.GetPlayers(players)) do
                            if game.Workspace.Characters:FindFirstChild(v.Name) or game.Workspace.Characters:FindFirstChild(v.DisplayName) then
                                if v.Character:FindFirstChild('HumanoidRootPart') then
                                    local pos = currentCamera.WorldToViewportPoint(currentCamera, v.Character.HumanoidRootPart.Position)
                                    local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                                    if magnitude < (_G.setting['Fov'] * 6 -8) /2 then
                                        if magnitude < math.huge then
                                            if (v.Character.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
                                                if v.Name ~= game.Players.LocalPlayer.Name then
                                                    if _G.setting['LockPlayers'] == false then
                                                        Playersaimbot = v.Name
                                                        PlayersPosition = v.Character.HumanoidRootPart.Position
                                                        v.Character.HumanoidRootPart.Size = Vector3.new(10,10,10)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end)
            
            
            spawn(function()
                while wait() do
                    for i,v in pairs(game.Players:GetChildren()) do
                        if v.Name == Playersaimbot then
                            PlayersPosition = v.Character.HumanoidRootPart.Position
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
                                if Playersaimbot ~= nil then
                                    args[2] = PlayersPosition
                                    return old(unpack(args))
                                end
                            end
                        end
                    end
                    return old(...)
                end)
            end)
            mouse.Button1Down:Connect(function()
                pcall(function()
                    if _G.Aim and Playersaimbot ~= nil then
                        local args = {
                          [1] = PlayersPosition,
                          [2] = game:GetService("Players"):FindFirstChild(Playersaimbot).Character.HumanoidRootPart
                        }
                    game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteFunctionShoot:InvokeServer(unpack(args))
                   end
                end)
            end)
            
    Combat:AddSlider("Aimbot Fov",1,500,70,function(value)
        _G.Fov = value
    end)
    
    Combat:AddSeperator("PvP")
    
    Combat:AddToggle("Enabled PvP",false,function(value)
        _G.EnabledPvP = value
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.EnabledPvP then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                    end
                end
            end
        end)
    end)
    
    Combat:AddToggle("Safe Mode",false,function(value)
        _G.Safe_Mode = value
        StopTween(_G.Safe_Mode)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Safe_Mode then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
        end)
    end)
    
    Combat:AddButton("Respawn",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
        wait()
    end)
    
    Combat:AddSeperator("Bounty")
    
    local Current = Combat:AddLabel("Current Bounties :")
    
    local Bounty = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
    local sub = string.sub 
    local len = string.len
    spawn(function()
        while wait() do
            pcall(function()
                if len(Bounty) == 4 then
                    Bounty1 = sub(Bounty,1,1).."."..sub(Bounty,2,3).."K"
                elseif len(Bounty) == 5 then
                    Bounty1 = sub(Bounty,1,2).."."..sub(Bounty,3,4).."K"
                elseif len(Bounty) == 6 then
                    Bounty1 = sub(Bounty,1,3).."."..sub(Bounty,4,5).."K"
                elseif len(Bounty) == 7 then
                    Bounty1 = sub(Bounty,1,1).."."..sub(Bounty,2,3).."M"
                elseif len(Bounty) == 8 then
                    Bounty1 = sub(Bounty,1,2).."."..sub(Bounty,3,4).."M"
                elseif len(Bounty) <= 3 then
                    Bounty1 = Bounty
                end
                if tonumber(Bounty) == 25000000 then
                    Current:Set("Current Bounties : "..Bounty1.." [ Max ]")
                elseif tonumber(Bounty) < 25000000 then
                    Current:Set("Current Bounties : "..Bounty1)
                end
            end)
        end
    end)
    
    local Earn = Combat:AddLabel("Earned")
    local OldBounty = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
    local Bounty = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
    local Earned = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value - OldBounty)
    local sub = string.sub 
    local len = string.len
    spawn(function()
        while wait() do
            pcall(function()
                if len(Earned) == 4 then
                    Earned1 = sub(Earned,1,1).."."..sub(Earned,2,3).."K"
                elseif len(Earned) == 5 then
                    Earned1 = sub(Earned,1,2).."."..sub(Earned,3,4).."K"
                elseif len(Earned) == 6 then
                    Earned1 = sub(Earned,1,3).."."..sub(Earned,4,5).."K"
                elseif len(Earned) == 7 then
                    Earned1 = sub(Earned,1,1).."."..sub(Earned,2,3).."M"
                elseif len(Earned) == 8 then
                    Earned1 = sub(Earned,1,2).."."..sub(Earned,3,4).."M"
                elseif len(Earned) <= 3 then
                    Earned1 = Earned
                end
                Earn:Set("Earned : "..tonumber(Earned1))
            end)
        end
    end)
    
    Combat:AddToggle("Auto Farm Bounty",_G.AutoFarmBounty,function(value)
        _G.AutoFarmBounty = value
        StopTween(_G.AutoFarmBounty)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoFarmBounty then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                        if v:IsA("Shirt") then
                            v:Destroy()
                        end
                        if v:IsA("Pants") then
                            v:Destroy()
                        end
                        if v:IsA("Accessory") then
                            v:Destroy()
                        end
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        pcall(function()
            if _G.AutoFarmBounty then
                while wait() do
                    if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                    end
                end
            end
        end)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoFarmBounty then
                    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoFarmBounty then
                    game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
                    spawn(function()
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = false
                        game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = false
                        game.Players.LocalPlayer.Character.Animate.Disabled = true
                    end)
                end
            end)
        end
    end)
    CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
    MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
    Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
    HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoFarmBounty then
                    for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                        if v.Name ~= game.Players.LocalPlayer.Name then
                            if v:WaitForChild("Humanoid").Health > 0 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 17000 then
                                plyselecthunthelpold = v.Humanoid.Health
                                repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    Click()
                                    NameTarget = v.Name
                                    if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,-5,-10))
                                    elseif tostring(game.Players.LocalPlayer.Team) == "Marines" then
                                        if game.Players[NameTarget].Team ~= game.Players.LocalPlayer.Team then
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,-5,10))
                                        end
                                    end
                                    spawn(function()
                                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
                                            StartCheckTarget = true
                                        end
                                    end)
                                    v.HumanoidRootPart.CanCollide = false
                                    spawn(function()
                                        pcall(function()
                                            local args = {
                                                [1] = v.HumanoidRootPart.Position,
                                                [2] = v.HumanoidRootPart
                                            }
                                            game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                        end)
                                    end)
                                    TargetSelectHunt = v.Humanoid
                                until _G.AutoFarmBounty == false or v.Humanoid.Health == 0 or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or not v.Parent or NextplySelect == true
                                NextplySelect = false
                                StartCheckTarget = false
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        pcall(function()
            while task.wait() do
                if _G.AutoFarmBounty then
                    --game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible = false
                    --game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible = false
                    print("KUY")
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoFarmBounty then
                    if TargetSelectHunt ~= nil then
                        if StartCheckTarget then
                            wait(6.5)
                            if TargetSelectHunt.Health == TargetSelectHunt.MaxHealth or TargetSelectHunt.Health >= plyselecthunthelpold then
                                NextplySelect = true
                                TargetSelectHunt = nil
                            end
                        end
                    end
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.AutoFarmBounty then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                    end
                end
            end
        end)
    end)
    
    Combat:AddToggle("Auto Farm Bounty Hop",_G.AutoFarmBounty_Hop,function(value)
        _G.AutoFarmBounty_Hop = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoFarmBounty then
                if _G.AutoFarmBounty_Hop then
                    pcall(function()
                        wait(120)
                        Hop()
                    end)
                end
            end
        end
    end)
    
    Combat:AddSeperator("Misc Bounty")
    
    Combat:AddButton("Next Player",function()
        NextplySelect = true
        wait(.1)
        NextplySelect = false
    end)
    
    Combat:AddSlider("Lock Bounty",1,30000000,750000,function(value)
        _G.BountyLock = value
    end)
    
    Combat:AddToggle("Start Bounty Lock",false,function(value)
        _G.StartBountyLock = value
    end)
    
    spawn(function()
        while wait() do
            if _G.StartBountyLock then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value >= _G.BountyLock then
                        game:GetService("Players").LocalPlayer:Kick("Successfully! Bounty Farm")
                    end
                end)
            end
        end
    end)
    
    Stats:AddSeperator("Auto Stats")
    
    local Pointstat = Stats:AddLabel("Stat Points")
    
    spawn(function()
        while wait() do
            pcall(function()
                Pointstat:Set("Stat Points : "..tostring(game:GetService("Players")["LocalPlayer"].Data.Points.Value))
            end)
        end
    end)
    
    Stats:AddToggle("Auto Melee",_G.Auto_Melee,function(value)
        _G.Auto_Melee = value
    end)
    
    Stats:AddToggle("Auto Defense",_G.Auto_Defense,function(value)
        _G.Auto_Defense = value
    end)
    
    Stats:AddToggle("Auto Sword",_G.Auto_Sword,function(value)
        _G.Auto_Sword = value
    end)
    
    Stats:AddToggle("Auto Gun",_G.Auto_Gun,function(value)
        _G.Auto_Gun = value
    end)
    
    Stats:AddToggle("Auto Devil Fruits",_G.Auto_DevilFruit,function(value)
        _G.Auto_DevilFruit = value
    end)
    
    _G.PointStats = 1
    Stats:AddSlider("Select Point",1,100,1,function(value)
        _G.PointStats = value
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Melee then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.PointStats)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Defense then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",_G.PointStats)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Sword then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",_G.PointStats)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Gun then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",_G.PointStats)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_DevilFruit then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Devil Fruit",_G.PointStats)
                    end
                end
            end)
        end
    end)
    
    Stats:AddSeperator("Status")
    
    local locallv = Stats:AddLabel("Level")
    
    spawn(function()
        while wait() do
            pcall(function()
                locallv:Set("Level :".." "..game:GetService("Players").LocalPlayer.Data.Level.Value)
            end)
        end
    end)
    
    local localrace = Stats:AddLabel("Race")
    
    spawn(function()
        while wait() do
            pcall(function()
                localrace:Set("Race :".." "..game:GetService("Players").LocalPlayer.Data.Race.Value)
            end)
        end
    end)
    
    local localbeli = Stats:AddLabel("Beli")
    
    spawn(function()
        while wait() do
            pcall(function()
                localbeli:Set("Beli :".." "..game:GetService("Players").LocalPlayer.Data.Beli.Value)
            end)
        end
    end)
    
    local localfrag = Stats:AddLabel("Fragment")
    
    spawn(function()
        while wait() do
            pcall(function()
                localfrag:Set("Fragments :".." "..game:GetService("Players").LocalPlayer.Data.Fragments.Value)
            end)
        end
    end)
    
    
    local localexp = Stats:AddLabel("ExP")
    
    spawn(function()
        while wait() do
            pcall(function()
                localexp:Set("ExP Points :".." "..game:GetService("Players").LocalPlayer.Data.Exp.Value)
            end)
        end
    end)
    
    local localstat = Stats:AddLabel("Stats Points")
    
    spawn(function()
        while wait() do
            pcall(function()
                localstat:Set("Stats Points :".." "..game:GetService("Players").LocalPlayer.Data.Points.Value)
            end)
        end
    end)
    
    local localbountyhornor = Stats:AddLabel("Bounty")
    
    spawn(function()
        while wait() do
            pcall(function()
                localbountyhornor:Set("Bounty / Honor :".." "..game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
            end)
        end
    end)
    
    local localDevil = Stats:AddLabel("Devil Fruit")
    
    spawn(function()
        while wait() do
            pcall(function()
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                    localDevil:Set("Devil Fruit :".." "..game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                else
                    localDevil:Set("Not Have Devil Fruit")
                end
            end)
        end
    end)
    
    Stats:AddSeperator("Fake")
    
    Stats:AddToggle("Enabled Fake",_G.EnabledStat,function(value)
        _G.EnabledStat = value
    end)
    
    Stats:AddTextbox("Level","",true,function(value)
        if _G.EnabledStat then
            game:GetService("Players")["LocalPlayer"].Data.Level.Value = tonumber(value)
        end
    end)
    
    Stats:AddTextbox("Exp ","",true,function(value)
        if _G.EnabledStat then
            game:GetService("Players")["LocalPlayer"].Data.Exp.Value = tonumber(value)
        end
    end)
    
    Stats:AddTextbox("Beli","",true,function(value)
        if _G.EnabledStat then
            game:GetService("Players")["LocalPlayer"].Data.Beli.Value = tonumber(value)
        end
    end)
    
    Stats:AddTextbox("Fragments","",true,function(value)
        if _G.EnabledStat then
            game:GetService("Players")["Localplayer"].Data.Fragments.Value = tonumber(value)
        end
    end)
    
    Stats:AddTextbox("Melee","",true,function(value)
        if _G.EnabledStat then
            game:GetService("Players")["LocalPlayer"].Data.Stats.Melee.Level.Value = tonumber(value)
        end
    end)
    
    Stats:AddTextbox("Defense","",true,function(value)
        if _G.EnabledStat then
            game:GetService("Players")["LocalPlayer"].Data.Stats.Defense.Level.Value = tonumber(value)
        end
    end)
    
    Stats:AddTextbox("Sword","",true,function(value)
        if _G.EnabledStat then
            game:GetService("Players")["LocalPlayer"].Data.Stats.Sword.Level.Value = tonumber(value)
        end
    end)
    
    Stats:AddTextbox("Gun","",true,function(value)
        if _G.EnabledStat then
            game:GetService("Players")["LocalPlayer"].Data.Stats.Gun.Level.Value = tonumber(value)
        end
    end)
    Stats:AddTextbox("Fruit","",true,function(value)
        if _G.EnabledStat then
            game:GetService("Players")["LocalPlayer"].Data.Stats["Demon Fruit"].Level.Value = tonumber(value)
        end
    end)
    
    Stats:AddTextbox("Bounty","",true,function(value)
        if _G.EnabledStat then
            game:GetService("Players")["LocalPlayer"].leaderstats["Bounty/Honor"].Value = tonumber(value)
        end
    end)
    
    Teleport:AddSeperator("World - Monster")
    
    Teleport:AddButton("Teleport To Old World",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end)
    
    Teleport:AddButton("Teleport To Second Sea",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end)
    
    Teleport:AddButton("Teleport To Third Sea",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end)
    
    Teleport:AddButton("Teleport to Seabeast",function()
        for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
            if v:FindFirstChild("HumanoidRootPart") then
                topos(v.HumanoidRootPart.CFrame*CFrame.new(0,100,0))
            end
        end
    end)
    
    Teleport:AddSeperator("Island")
    
    if World1 then
        Teleport:AddDropdown("Select Island",{
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
        Teleport:AddDropdown("Select Island",{
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
        Teleport:AddDropdown("Select Island",{
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
            "Cake Island"
            },function(value)
            _G.SelectIsland = value
        end)
    end
    
    Teleport:AddToggle("Teleport",false,function(value)
        _G.TeleportIsland = value
        if _G.TeleportIsland == true then
            repeat wait()
                if _G.SelectIsland == "WindMill" then
                    topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif _G.SelectIsland == "Marine" then
                    topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif _G.SelectIsland == "Middle Town" then
                    topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif _G.SelectIsland == "Jungle" then
                    topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif _G.SelectIsland == "Pirate Village" then
                    topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif _G.SelectIsland == "Desert" then
                    topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif _G.SelectIsland == "Snow Island" then
                    topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif _G.SelectIsland == "MarineFord" then
                    topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif _G.SelectIsland == "Colosseum" then
                    topos( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif _G.SelectIsland == "Sky Island 1" then
                    topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif _G.SelectIsland == "Sky Island 2" then  
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif _G.SelectIsland == "Sky Island 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif _G.SelectIsland == "Prison" then
                    topos( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif _G.SelectIsland == "Magma Village" then
                    topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif _G.SelectIsland == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectIsland == "Fountain City" then
                    topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif _G.SelectIsland == "Shank Room" then
                    topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                elseif _G.SelectIsland == "Mob Island" then
                    topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                elseif _G.SelectIsland == "The Cafe" then
                    topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif _G.SelectIsland == "Frist Spot" then
                    topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif _G.SelectIsland == "Dark Area" then
                    topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif _G.SelectIsland == "Flamingo Mansion" then
                    topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif _G.SelectIsland == "Flamingo Room" then
                    topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif _G.SelectIsland == "Green Zone" then
                    topos( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif _G.SelectIsland == "Factory" then
                    topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif _G.SelectIsland == "Colossuim" then
                    topos( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif _G.SelectIsland == "Zombie Island" then
                    topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                elseif _G.SelectIsland == "Two Snow Mountain" then
                    topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                elseif _G.SelectIsland == "Punk Hazard" then
                    topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                elseif _G.SelectIsland == "Cursed Ship" then
                    topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                elseif _G.SelectIsland == "Ice Castle" then
                    topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif _G.SelectIsland == "Forgotten Island" then
                    topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif _G.SelectIsland == "Ussop Island" then
                    topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif _G.SelectIsland == "Mini Sky Island" then
                    topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                elseif _G.SelectIsland == "Great Tree" then
                    topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                elseif _G.SelectIsland == "Castle On The Sea" then
                    topos(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
                elseif _G.SelectIsland == "MiniSky" then
                    topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                elseif _G.SelectIsland == "Port Town" then
                    topos(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                elseif _G.SelectIsland == "Hydra Island" then
                    topos(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
                elseif _G.SelectIsland == "Floating Turtle" then
                    topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                elseif _G.SelectIsland == "Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                elseif _G.SelectIsland == "Haunted Castle" then
                    topos(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                elseif _G.SelectIsland == "Ice Cream Island" then
                    topos(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                elseif _G.SelectIsland == "Peanut Island" then
                    topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                elseif _G.SelectIsland == "Cake Island" then
                    topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                end
            until not _G.TeleportIsland
        end
        StopTween(_G.TeleportIsland)
    end)
    
    Dungeon:AddLine()
    
    local TimeRaid = Dungeon:AddLabel("Wait For Dungeon")
    
    spawn(function()
        pcall(function()
            while wait() do
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                    TimeRaid:Set(game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text)
                else
                    TimeRaid:Set("Wait For Dungeon")
                end
            end
        end)
    end)
    
    Dungeon:AddToggle("Auto Farm Dungeon",_G.Auto_Dungeon,function(value)
        _G.Auto_Dungeon = value
        StopTween(_G.Auto_Dungeon)
    end)
    
    spawn(function()
        pcall(function() 
            while wait() do
                if _G.Auto_Dungeon then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                pcall(function()
                                    repeat wait()
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        v.Humanoid.Health = 0
                                        v.HumanoidRootPart.CanCollide = false
                                    until not _G.Auto_Dungeon or not v.Parent or v.Humanoid.Health <= 0
                                end)
                            end
                        end
                    end
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Auto_Dungeon then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,80,100))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,80,100))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,80,100))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,80,100))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,80,100))
                        end
                    end
                end
            end
        end)
    end)
    
    Dungeon:AddToggle("Kill Aura",_G.KillAura,function(value)
        _G.KillAura = value
    end)
     
spawn(function()
  pcall(function() 
  while wait() do
       if _G.KillAura then
           for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
               if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                   pcall(function()
                       repeat wait()
                           sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                           v.Humanoid.Health = 0
                           v.HumanoidRootPart.CanCollide = false
                           v.HumanoidRootPart.Size = Vector3.new(200,200,200)
                           v.HumanoidRootPart.Transparency = 1
                       until not _G.KillAura or not v.Parent or v.Humanoid.Health <= 0
                   end)
               end
           end
       end
   end
  end)
end)

    Dungeon:AddToggle("Auto Awakener",_G.Auto_Awakener,function(value)
        _G.Auto_Awakener = value
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Awakener then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            end
        end)
    end)
    
    Dungeon:AddLine()
    
    Dungeon:AddDropdown("Select Chips",{"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix"},function(value)
        _G.SelectChip = value
    end)
    
    Dungeon:AddToggle("Auto Select Dungeon",_G.AutoSelectDungeon,function(value)
        _G.AutoSelectDungeon = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoSelectDungeon then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame") then
                        _G.SelectChip = "Flame"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice") then
                        _G.SelectChip = "Ice"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake") then
                        _G.SelectChip = "Quake"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light") then
                        _G.SelectChip = "Light"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark") then
                        _G.SelectChip = "Dark"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String") then
                        _G.SelectChip = "String"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble") then
                        _G.SelectChip = "Rumble"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma") then
                        _G.SelectChip = "Magma"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                        _G.SelectChip = "Human: Buddha"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand") then
                        _G.SelectChip = "Sand"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
                        _G.SelectChip = "Bird: Phoenix"
                    else
                        _G.SelectChip = "Flame"
                    end
                end)
            end
        end
    end)
    
    Dungeon:AddToggle("Auto Buy Chip",_G.AutoBuyChip,function(value)
        _G.AutoBuyChip = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoBuyChip then
                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                        end
                    end
                end
            end
        end)
    end)
    
    Dungeon:AddButton("Buy Chip Select",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.SelectChip)
    end)
    
    Dungeon:AddToggle("Auto Start Raid",_G.Auto_StartRaid,function(value)
        _G.Auto_StartRaid = value
    end)
    
    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.Auto_StartRaid then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                            if World2 then
                                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                            elseif World3 then
                                fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    Dungeon:AddButton("Start Raid",function()
        if World2 then
            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
        elseif World3 then
            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
        end
    end)
    
    Dungeon:AddLine()
    
    Dungeon:AddButton("Next Island",function()
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
    
    if World2 then
        Dungeon:AddButton("Teleport to Lab",function()
            TP(CFrame.new(-6438.73535, 250.645355, -4501.50684))
            end)
    elseif World3 then
        Dungeon:AddButton("Teleport to Lab",function()
            TP(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
        end)
    end
    
    if World2 then
        Dungeon:AddButton("Awakening Room",function()
            TP(CFrame.new(266.227783, 1.39509034, 1857.00732))
        end)
    elseif World3 then
        Dungeon:AddButton("Awakening Room",function()
            TP(CFrame.new(-11571.440429688, 49.172668457031, -7574.7368164062))
        end)
    end
    
    DevilFruit:AddSeperator("Sniper")
    
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
    DevilFruit:AddDropdown("Select Fruits Sniper",FruitList,function(value)
        _G.SelectFruit = value
    end)
    
    DevilFruit:AddToggle("Auto Buy Fruit Sniper",_G.AutoBuyFruitSniper,function(value)
        _G.AutoBuyFruitSniper = value
    end)
    
    DevilFruit:AddSeperator("Others")
    
    DevilFruit:AddDropdown("Select Fruits Eat",FruitList,function(value)
        _G.SelectFruitEat = value
    end)
    
    DevilFruit:AddToggle("Auto Eat Fruit",_G.AutoEatFruit,function(value)
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
    
    DevilFruit:AddToggle("Auto Eat Fruit Hop",_G.AutoEatFruitHop,function(value)
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
    
    DevilFruit:AddToggle("Auto Random Fruit",_G.Random_Auto,function(value)
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
    
    DevilFruit:AddButton("Random Fruit",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
    end)
    
    
    DevilFruit:AddToggle("Auto Drop Fruit",_G.DropFruit,function(value)
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
    
    DevilFruit:AddToggle("Auto Store Fruit",_G.AutoStoreFruit,function(value)
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
    
    
    DevilFruit:AddToggle("Grab Fruit",_G.BringFruit,function(value)
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
    
    Shop:AddSeperator("Abilities")
    
    Shop:AddButton("Buy Geppo",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
    end)
    
    Shop:AddButton("Buy Buso Haki",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
    end)
    
    Shop:AddButton("Buy Soru",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
    end)
    
    Shop:AddButton("Buy Observation(Ken) Haki",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
    end)
    
    Shop:AddSeperator("Fighting Style")
    
    Shop:AddButton("Buy Black Leg",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end)
    
    Shop:AddButton("Buy Electro",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end)
    
    Shop:AddButton("Buy Fishman Karate",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end)
    
    Shop:AddButton("Buy Dragon Claw",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
    end)
    
    Shop:AddButton("Buy Superhuman",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end)
    
    Shop:AddButton("Buy Death Step",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end)
    
    Shop:AddButton("Buy Sharkman Karate",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end)
    
    Shop:AddButton("Buy Electric Claw",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end)
    
    Shop:AddButton("Buy Dragon Talon",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end)
    -----Shop----------------
    Shop:AddSeperator("Accessory")
    
    Shop:AddButton("Tomoe Ring",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
    end)
    
    Shop:AddButton("Black Cape",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
    end)
    
    Shop:AddButton("Swordsman Hat",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
    end)
    
    Shop:AddSeperator("Sword")
    
    Shop:AddButton("Cutlass",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
    end)
    
    Shop:AddButton("Katana",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
    end)
    
    Shop:AddButton("Iron Mace",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
    end)
    
    Shop:AddButton("Duel Katana",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
    end)
    
    Shop:AddButton("Triple Katana", function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
    end)
    
    Shop:AddButton("Pipe",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
    end)
    
    Shop:AddButton("Dual Headed Blade",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
    end)
    
    Shop:AddButton("Bisento",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
    end)
    
    Shop:AddButton("Soul Cane",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
    end)
    
    Shop:AddSeperator("Gun")
    
    Shop:AddButton("Slingshot",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
    end)
    
    Shop:AddButton("Musket",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
    end)
    
    Shop:AddButton("Flintlock",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
    end)
    
    Shop:AddButton("Refined Flintlock",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
    end)
    
    Shop:AddButton("Cannon",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
    end)
    
    Shop:AddButton("Kabucha",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
    end)
    ------------Bone------------------
    
    Shop:AddSeperator("Bones")
    
    Shop:AddButton("Buy Surprise",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
    end)
    
    Shop:AddButton("Stat Refund",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,2)
    end)
        
    Shop:AddButton("Race Reroll",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,3)
    end)
    
    Misc:AddSeperator("Server")
    
    Misc:AddButton("Rejoin Server",function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end)
    
    Misc:AddButton("Server Hop",function()
        Hop()
    end)
    
    Misc:AddButton("Hop To Lower Player",function()
        _G.AutoTeleport = true
        _G.DontTeleportTheSameNumber = true 
        _G.CopytoClipboard = false
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
    
    Misc:AddSeperator("Ui")
    
    Misc:AddButton("Open Devil Shop",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
    end)
    
    Misc:AddButton("Open Inventory",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
        wait(1)
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
    end)
    
    Misc:AddButton("Open Inventory Fruit",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
    end)
    
    Misc:AddToggle("Highlight Mode",false,function(value)
        if value == true then
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = false
        else
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = true
        end
    end)
    
    Misc:AddSeperator("Teams")
    
    Misc:AddButton("Join Pirates Team",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
    end)
    
    Misc:AddButton("Join Marines Team",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
    end)
    
    Misc:AddSeperator("Boost")
    
    Misc:AddButton("Unlock Portal",function()
        _G.UnlockPortal = true
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.UnlockPortal == true then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text,"cannot") then
                                v:Destroy()
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.UnlockPortal == true then
                    CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
                    MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
                    Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
                    HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
                    if (CastlePostoMansion.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                    end
                    if (MansiontoCastlePos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                    end
                    if (Castletophydra.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                    end
                    if (HydratoCastle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                    end
                end
            end)
        end
    end)
    
    Misc:AddButton("Invisible",function()
        game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
    end)
    
    Misc:AddButton("Click TP Tool",function()
        local plr = game:GetService("Players").LocalPlayer
        local mouse = plr:GetMouse()
        local tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "Teleport Tool"
        tool.Activated:Connect(function()
        local root = plr.Character.HumanoidRootPart
        local pos = mouse.Hit.Position+Vector3.new(0,2.5,0)
        local offset = pos-root.Position
        root.CFrame = root.CFrame+offset
        end)
        tool.Parent = plr.Backpack
    end)
    
    Misc:AddButton("Stop All Tween",function()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        _G.Clip = false
    end)
    
    Misc:AddSeperator("Codes")
    
    local x2Code = {
        "3BVISITS",
        "UPD16",
        "FUDD10",
        "BIGNEWS",
        "THEGREATACE",
        "SUB2GAMERROBOT_EXP1",
        "StrawHatMaine",
        "Sub2OfficialNoobie",
        "SUB2NOOBMASTER123",
        "Sub2Daigrock",
        "Axiore",
        "TantaiGaming",
        "STRAWHATMAINE",
        "Sub2Fer999",
        "Enyu_is_pro",
        "Magicbus"
    }
    
    Misc:AddButton("Redeem All Codes",function()
        function RedeemCode(value)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
        end
        for i,v in pairs(x2Code) do
            RedeemCode(v)
        end
    end)
    
    Misc:AddDropdown("Selected Codes",{"1MLIKES_RESET","THIRDSEA","SUB2GAMERROBOT_RESET1","SUB2UNCLEKIZARU"},function(value)
        _G.CodeSelect = value
    end)
    
    Misc:AddButton("Redeem Code",function()
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(_G.CodeSelect)
    end)
    
    Misc:AddSeperator("State")
    
    Misc:AddDropdown("Select Haki State",{"State 0","State 1","State 2","State 3","State 4","State 5"},function(value)
        _G.SelectStateHaki = value
    end)
    
    Misc:AddButton("Change Buso Haki State",function()
        if _G.SelectStateHaki == "State 0" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",0)
        elseif _G.SelectStateHaki == "State 1" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",1)
        elseif _G.SelectStateHaki == "State 2" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",2)
        elseif _G.SelectStateHaki == "State 3" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",3)
        elseif _G.SelectStateHaki == "State 4" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",4)
        elseif _G.SelectStateHaki == "State 5" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",5)
        end
    end)
    
    Misc:AddSeperator("Graphic")
    
    local a = game.Lighting
    local c = Instance.new("ColorCorrectionEffect", a)
    local e = Instance.new("ColorCorrectionEffect", a)
    OldAmbient = a.Ambient
    OldBrightness = a.Brightness
    OldColorShift_Top = a.ColorShift_Top
    OldBrightnessc = c.Brightness
    OldContrastc = c.Contrast
    OldTintColorc = c.TintColor
    OldTintColore = e.TintColor
    Misc:AddToggle("RTX Mode",_G.RTXMode,function(value)
        _G.RTXMode = value
        if not _G.RTXMode then return end
        while _G.RTXMode do wait()
            a.Ambient = Color3.fromRGB(33, 33, 33)
            a.Brightness = 0.3
            c.Brightness = 0.176
            c.Contrast = 0.39
            c.TintColor = Color3.fromRGB(217, 145, 57)
            game.Lighting.FogEnd = 999
            if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("PointLight") then
                local a2 = Instance.new("PointLight")
                a2.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                a2.Range = 15
                a2.Color = Color3.fromRGB(217, 145, 57)
            end
            if not _G.RTXMode then
                a.Ambient = OldAmbient
                a.Brightness = OldBrightness
                a.ColorShift_Top = OldColorShift_Top
                c.Contrast = OldContrastc
                c.Brightness = OldBrightnessc
                c.TintColor = OldTintColorc
                e.TintColor = OldTintColore
                game.Lighting.FogEnd = 2500
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("PointLight"):Destroy()
            end
        end
    end)
    
    Misc:AddButton("FPS Boost",function()
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
    
    Misc:AddToggle("Remove Fog",RemoveFog,function(value)
        RemoveFog = value
        if not RemoveFog then return end
        while RemoveFog do wait()
            game.Lighting.FogEnd = 9e9
            if not RemoveFog then
                game.Lighting.FogEnd = 2500
            end
        end
    end)
    
    Misc:AddButton("Unlock FPS",function()
        setfpscap(100)
    end)
    
    Misc:AddSeperator("ESP")
    
    Misc:AddToggle("ESP Player",false,function(value)
        ESPPlayer = value
        while ESPPlayer do wait()
            UpdateEspPlayer()
        end
    end)
    
    Misc:AddToggle("ESP Chest",false,function(value)
        ChestESP = value
        while ChestESP do wait()
            UpdateChestEsp() 
        end
    end)
    
    Misc:AddToggle("ESP Fruit",false,function(value)
        DevilFruitESP = value
        while DevilFruitESP do wait()
            UpdateBfEsp() 
        end
    end)
    
    Misc:AddToggle("ESP Flower",false,function(value)
        FlowerESP = value
        while FlowerESP do wait()
            UpdateFlowerEsp() 
        end
    end)
    
    Misc:AddToggle("ESP Island",IslandESP,function(value)
        IslandESP = value
        while IslandESP do wait()
            UpdateIslandESP() 
        end
    end)
    
    Misc:AddSeperator("Abilities")
    
    Misc:AddToggle("Dodge No Cooldown",false,function(value)
        nododgecool = value
        NoDodgeCool()
    end)
    
    Misc:AddToggle("Infinite Energy",false,function(value)
        InfiniteEnergy = value
        originalstam = LocalPlayer.Character.Energy.Value
    end)
    
    Misc:AddToggle("Auto Active Race",_G.AutoAgility,function(value)
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
    
    Misc:AddToggle("Infinite Ability",false,function(value)
        InfAbility = value
        if value == false then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end)
    
    spawn(function()
        while wait() do
            if InfAbility then
                InfAb()
            end
        end
    end)
    
    Misc:AddToggle("Infinite Obversation Range",_G.InfiniteObRange,function(value)
        _G.InfiniteObRange = value
        local VS = game:GetService("Players").LocalPlayer.VisionRadius.Value
        while _G.InfiniteObRange do
            wait()
            local player = game:GetService("Players").LocalPlayer
            local char = player.Character
            local VisionRadius = player.VisionRadius
            if player then
                if char.Humanoid.Health <= 0 then 
                    wait(5) 
                end
                VisionRadius.Value = math.huge
            elseif _G.InfiniteObRange == false and player then
                VisionRadius.Value = VS
            end
        end
    end)
    
    Misc:AddToggle("Infinite Geppo",_G.InfGeppo,function(value)
        _G.InfGeppo = value
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.InfGeppo then
                    for i,v in next, getgc() do
                        if game:GetService("Players").LocalPlayer.Character.Geppo then
                            if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Geppo then
                                for i2,v2 in next, getupvalues(v) do
                                    if tostring(i2) == "9" then
                                        repeat wait(.1)
                                            setupvalue(v,i2,0)
                                        until not _G.InfGeppo or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0 
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    Misc:AddToggle("Infinite Soru",_G.InfSoru,function(value)
        _G.InfSoru = value
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.InfSoru and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
                    for i,v in next, getgc() do
                        if game:GetService("Players").LocalPlayer.Character.Soru then
                            if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
                                for i2,v2 in next, getupvalues(v) do
                                    if typeof(v2) == "table" then
                                        repeat wait(.1)
                                            v2.LastUse = 0
                                        until not _G.InfSoru or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    Misc:AddToggle("Walk on Water",_G.WalkWater,function(value)
        _G.WalkWater = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.WalkWater then
                    if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                        if not game:GetService("Workspace"):FindFirstChild("Water") then
                            local Water = Instance.new("Part", game:GetService("Workspace"))
                            Water.Name = "Water"
                            Water.Size = Vector3.new(15,0.5,15)
                            Water.Anchored = true
                            Water.Material = "Neon"
                            Water.Color = _G.Color
                            game:GetService("Workspace").Water.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.X,game:GetService("Workspace").Camera["Water;"].CFrame.Y,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                        else
                            game:GetService("Workspace").Water.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.X,game:GetService("Workspace").Camera["Water;"].CFrame.Y,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                        end
                    elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y >= 1 and game:GetService("Workspace"):FindFirstChild("Water") then
                        game:GetService("Workspace"):FindFirstChild("Water"):Destroy()
                    end
                else
                    if game:GetService("Workspace"):FindFirstChild("Water") then
                        game:GetService("Workspace"):FindFirstChild("Water"):Destroy()
                    end
                end
            end
        end)
    end)
    
    Misc:AddToggle("Fly",false,function(value)
        Fly = value
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if Fly then
                    fly()
                end
            end)
        end
    end)
    
    Misc:AddToggle("NoClip",_G.NOCLIP,function(value)
        _G.NOCLIP = value
    end)
    
    Misc:AddSeperator("Mastery Skill Settings")
    
    Misc:AddToggle("Skill Z",true,function(value)
        _G.SkillZ = value
    end)
    
    Misc:AddToggle("Skill X",true,function(value)
        _G.SkillX = value
    end)
    
    Misc:AddToggle("Skill C",true,function(value)
        _G.SkillC = value
    end)
    
    Misc:AddToggle("Skill V",true,function(value)
        _G.SkillV = value
    end)
    
    ------------Settings------------------
    
    Set:AddToggle("Ultra Magnet ",false,function(value)
        _G.UltraBring = value
    end)
    
    Set:AddToggle("Auto Ken",false,function(value)
        _G.Ken = value
    end)
    
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.UltraBring then
                    CheckQuest()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
                            v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        elseif _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 275 then
                            v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        end
                        if _G.AutoEctoplasm and StartEctoplasmMagnet then
                            if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= 300 then
                                v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                v.HumanoidRootPart.CFrame = EctoplasmMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoRengoku and StartRengokuMagnet then
                            if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = RengokuMon
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoMusketeerHat and StartMagnetMusketeerhat then
                            if v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = MusketeerHatMon
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.Auto_EvoRace and StartEvoMagnet then
                            if v.Name == "Zombie [Lv. 950]" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonEvo
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoBartilo and AutoBartiloBring then
                            if v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonBarto
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then
                            if v.Name == "Monkey [Lv. 14]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == "Factory Staff [Lv. 800]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 500 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == Mon then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                        if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
                            if v.Name == "Monkey [Lv. 14]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == "Factory Staff [Lv. 800]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == Mon then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(150,150,150)(150,150,150)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                        if _G.Auto_Bone or _G.Auto_BoneTest and StartMagnetBoneMon then
                            if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 600 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(600,600,600)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonBone
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoDoughtBoss and MagnetDought then
                            if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoCandy and StartMagnetCandy then
                            if (v.HumanoidRootPart.Position - PosMonCandy.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonCandy
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    --------------------------------[Hub]------------------------------------
   
    
    
    Hub:AddButton("Mukuro Hub (not update yet)",function()
        loadstring(game:HttpGet(''))()
    end)
    
    Hub:AddSeperator("Ui LunarHub test paid")
    
    Hub:AddButton("LunarHub UI Test",function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Cve-Hub/ui/main/README.md'))()
    end)
    
    Hub:AddSeperator("Smz Hub (join discord him)")
    
    Hub:AddButton("Smz Hub",function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Frerfgzz/free-script/main/SMZHUBv2BETA"))()
    end)
    
    ----------------------------------[End]----------------------------------
    local DamageModule = require(game:GetService("ReplicatedStorage").Effect.Container.Misc.Damage)
local old = DamageModule.Run
_G.FakeDamage = function(Damage)
    DamageModule.Run = function(...)
        args = {...}
        if Damage then
            args[1]['Value'] = Damage
        end
        return old(unpack(args))
    end
end


spawn(function()
local dj=game.Players.LocalPlayer
local dk=require(dj.PlayerScripts.CombatFramework.Particle)
local dl=require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
if not shared.orl then 
shared.orl=dl.wrapAttackAnimationAsync 
end
if not shared.cpc then 
shared.cpc=dk.play end
while wait()do 
pcall(function()
dl.wrapAttackAnimationAsync=function(dm,dn,dp,dq,dr)
local ds=dl.getBladeHits(dn,dp,dq)
if ds then 
dk.play=function()
end
dm:Play(0.1,0.1,0.1)dr(ds)dk.play=shared.cpc
wait(.1)
dm:Stop()
end 
end 
end)
end 
end)

local CombatFrameworkParticle = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle)
local CombatFrameworkRigLib = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
local StopCamera = require(game.ReplicatedStorage.Util.CameraShaker)StopCamera:Stop()
local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
for i,v in pairs(getreg()) do
    if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
        for x,w in pairs(debug.getupvalue(v)) do
             if typeof(w) == "table" then
                spawn(function()
                    game:GetService("RunService").RenderStepped:Connect(function()
                        if _G.FastAttack then
                            pcall(function()             
                                CameraShaker:Stop()
                                w.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
                                w.activeController.attacking = false
                                w.activeController.increment = 4
                                w.activeController.blocking = false                            
                                w.activeController.hitboxMagnitude = 150
    		                    w.activeController.humanoid.AutoRotate = true
    	                      	w.activeController.focusStart = 0
    	                      	w.activeController.currentAttackTrack = 0
    	                        game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
                                game.Players.LocalPlayer.Character.Humanoid.xNerosplayxNerostanceType = "None"
                                game.Players.LocalPlayer.Character.Stun.Value = 0
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                game.Players.LocalPlayer.Character.Busy.Value = false
                                game.Players.LocalPlayer.SimulationRadius = math.huge * math.huge, math.huge * math.huge * 0 / 0 * 0 / 0 * 0 / 0 * 0 / 0 * 0 / 0
                                setscriptable(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end)
                        end
                    end)
                end)
            end
        end
    end
end
spawn(function()
    while task.wait() do
        pcall(function()
            for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
                if v.Name == "CurvedRing" or v.Name == "SwordSlash" or v.Name == "Sounds" or v.Name == "SlashHit" or v.Name == "DamageCounter" or v.Name == "SlashHit" or v.Name == "Death" then
                    v:Destroy() 
                end
            end
        end)
    end
end)
local Players = game:GetService("Players")
local OldNameCall = nil
getgenv().SendNotifications = true
local SuperFastMode = true
local plr = game.Players.LocalPlayer
local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]
function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then return end
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
    return ret
end
function AttackNoCD() 
    local AC = CbFw2.activeController
    for i = 1, 1 do 
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            {plr.Character.HumanoidRootPart},
            60
        )
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
            local NameCallMethod = getnamecallmethod()
                if tostring(string.lower(NameCallMethod)) == "Kick" then
                    if getgenv().SendNotifications == true then
                        game:GetService("StarterGui"):SetCore("SendNotification", {
                            Title = "CutieZ Developer",
                            Text = "Kick Detected",
                            Icon = "",
                            Duration = 3,
                        })
                    end
                    return nil
                end
                return OldNameCall(Self, ...)
            end)
            local getrawmetatable = getrawmetatable or debug.getmetatable
            local make_writeable = make_writeable or setreadonly or changereadonly or change_writeable
            make_writeable(getrawmetatable(game), false)
            local backup = getrawmetatable(game).__namecall
            getrawmetatable(game).__namecall = function(u, ...)
               local m = ({...})[select('#', ...)]
               local packed = {...}
               local a = {}
               for i = 1, #packed - 1 do
                   a[i] = packed[i]
               end
               if m == 'Kick' then
                   warn('Kick attempt at ' .. os.time() .. ' (' .. tostring(unpack(a)) .. ')')
                   return true -- this tricks the game into thinking it was kicked, while it never disconnects itself.
               end
               return backup and backup(u, ...) or u[m](u, unpack(a))
            end
            local mt = getrawmetatable(game)
            local OldNC = mt.__namecall
            setreadonly(mt,false)
            mt.__namecall = function(arg,...)
                local args = {...}
                local Method = getnamecallmethod()
                if (Method == 'Kick' or Method == 'InvokeServer' or Method == 'FireServer') then
                    return wait(9e9)
                end
                return OldNC(arg,...)
            end
            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "") 
                AC.animator.anims.basic:Play()
            end
        end
    end
end
local cac
if SuperFastMode == true then 
	cac=task.wait
else
	cac=wait
end
spawn(function()
    while cac() do 
    	AttackNoCD()
    end
end)
