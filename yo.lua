--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 5 | Scripts: 1 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.6hx_neverlose
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[6hx_neverlose]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.6hx_neverlose.INTRO_MAIN
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Size"] = UDim2.new(0, 1920, 0, 1078);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[INTRO_MAIN]];
G2L["2"]["BackgroundTransparency"] = 0.22;


-- StarterGui.6hx_neverlose.INTRO_MAIN.6HX
G2L["3"] = Instance.new("ImageLabel", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["ImageTransparency"] = 0.58;
G2L["3"]["Image"] = [[rbxassetid://76278591184555]];
G2L["3"]["Size"] = UDim2.new(0, 828, 0, 828);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["BackgroundTransparency"] = 1;
G2L["3"]["Name"] = [[6HX]];
G2L["3"]["Position"] = UDim2.new(0.31134, 0, 0.12595, 0);


-- StarterGui.6hx_neverlose.INTRO_MAIN.6HX.LocalScript
G2L["4"] = Instance.new("LocalScript", G2L["3"]);



-- StarterGui.6hx_neverlose.INTRO_MAIN.NEVERLOSE
G2L["5"] = Instance.new("TextLabel", G2L["2"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextSize"] = 100;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["BackgroundTransparency"] = 1;
G2L["5"]["Size"] = UDim2.new(0, 1099, 0, 273);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[Neverlose with 6hx. Loading]];
G2L["5"]["Name"] = [[NEVERLOSE]];
G2L["5"]["Position"] = UDim2.new(0.21631, 0, 0.49165, 0);


-- StarterGui.6hx_neverlose.INTRO_MAIN.6HX.LocalScript
local function C_4()
local script = G2L["4"];
	local TweenService = game:GetService("TweenService")
	local SoundService = game:GetService("SoundService")
	local Debris = game:GetService("Debris")
	local camera = workspace.CurrentCamera
	local image = script.Parent
	local frame = image.Parent
	local textLabel = frame:WaitForChild("NEVERLOSE")
	
	-- ================= CONFIG =================
	local START_DELAY = 2
	
	local FRAME_FADE_TIME = 0.6
	local FRAME_TARGET_TRANSPARENCY = 0.35
	
	local IMAGE_BOOM_TIME = 0.7
	local IMAGE_FINAL_TRANSPARENCY = 0.7
	local IMAGE_Y_OFFSET = -0.05 -- más arriba
	
	local TYPE_SPEED = 0.04
	local DELETE_SPEED = 0.03
	
	local AFTER_TEXT_WAIT = 1
	local AFTER_DELETE_WAIT = 2.5
	
	local FADEOUT_TIME = 0.8
	
	local SFX_ID = "rbxassetid://9116156872"
	-- ==========================================
	
	
	frame.Visible = true
	frame.BackgroundTransparency = 1
	
	image.ImageTransparency = 1
	image.Visible = true
	
	local originalText = textLabel.Text
	textLabel.Text = ""
	textLabel.TextTransparency = 1
	
	task.wait(START_DELAY)
	
	local sound = Instance.new("Sound")
	sound.Name = "Introtungtungsahur"
	sound.SoundId = "rbxassetid://9109651770"
	sound.Volume = 0.3
	sound.Parent = SoundService
	
	sound:Play()
	local blur = Instance.new("BlurEffect")
	blur.Parent = game.Lighting
	blur.Size = 70
	TweenService:Create(
		frame,
		TweenInfo.new(FRAME_FADE_TIME, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{ BackgroundTransparency = FRAME_TARGET_TRANSPARENCY }
	):Play()
	
	task.wait(FRAME_FADE_TIME)
	
	local originalSize = image.Size
	
	image.AnchorPoint = Vector2.new(0.5, 0.5)
	image.Position = UDim2.fromScale(0.5, 0.5 + IMAGE_Y_OFFSET)
	image.Size = UDim2.new(0, 0, 0, 0)
	image.ImageTransparency = 1
	
	TweenService:Create(
		image,
		TweenInfo.new(IMAGE_BOOM_TIME, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
		{
			Size = originalSize,
			ImageTransparency = IMAGE_FINAL_TRANSPARENCY
		}
	):Play()
	
	task.wait(IMAGE_BOOM_TIME * 0.6)
	
	textLabel.TextTransparency = 0
	
	local function playKeySound()
		local s = Instance.new("Sound")
		s.SoundId = SFX_ID
		s.Volume = 0.6
		s.PlaybackSpeed = math.random(90,110) / 100
		s.Parent = SoundService
		s:Play()
		Debris:AddItem(s, 1)
	end
	
	for i = 1, #originalText do
		textLabel.Text = originalText:sub(1, i)
		playKeySound()
		task.wait(TYPE_SPEED)
	end
		
	task.wait(AFTER_TEXT_WAIT)
	
	for i = #originalText, 0, -1 do
		textLabel.Text = originalText:sub(1, i)
		playKeySound()
		task.wait(DELETE_SPEED)
	end
	
	
	task.wait(AFTER_DELETE_WAIT)
	
	TweenService:Create(frame, TweenInfo.new(FADEOUT_TIME), {
		BackgroundTransparency = 1
	}):Play()
	
	TweenService:Create(image, TweenInfo.new(FADEOUT_TIME), {
		ImageTransparency = 1
	}):Play()
	
	TweenService:Create(textLabel, TweenInfo.new(FADEOUT_TIME), {
		TextTransparency = 1
	}):Play()
	
	task.delay(FADEOUT_TIME + 0.1, function()
		frame.Visible = false
		blur:Destroy()
	end)
	
end;
task.spawn(C_4);

return G2L["1"], require;
