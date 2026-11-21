-- [PART 1: RUNTIME ENVIRONMENT PROTECTION & INTEGRITY CHECK]
do
	local v = pcall
	local v2 = error
	local v3 = type
	local v4 = typeof
	local v5 = select
	local v6 = ipairs

	local random = math and math.random or function()
		return 0
	end

	local str = "hduSjOT3xk44"

	local function fn()
		v2("[Panda] This script could not verify its runtime environment.", 0)
	end

	local tbl = {}

	tbl[#tbl + 1] = function()
		if v4(Enum.Material.Plastic) ~= "EnumItem" then
			v2("x")
		end
	end

	tbl[#tbl + 1] = function()
		local HttpService = game:GetService("HttpService")
		local json = HttpService:JSONEncode({ p = true })

		if v3(json) ~= "string" then
			v2("x")
		end

		local data = HttpService:JSONDecode(json)

		if v3(data) ~= "table" or data.p ~= true then
			v2("x")
		end

		local v7 = HttpService:GenerateGUID(false)

		if v3(v7) ~= "string" or #v7 ~= 36 or string.sub(v7, 9, 9) ~= "-" then
			v2("x")
		end
	end

	tbl[#tbl + 1] = function()
		local n = Vector3.new(1, 2, 3) + Vector3.one

		if v4(n) ~= "Vector3" then
			v2("x")
		end

		if n.X ~= 2 or n.Y ~= 3 or n.Z ~= 4 then
			v2("x")
		end
	end

	tbl[#tbl + 1] = function()
		local Workspace_ = game:GetService("Workspace")

		if v4(Workspace_) ~= "Instance" then
			v2("x")
		end

		if Workspace_:IsA("Workspace") ~= true then
			v2("x")
		end

		if Workspace_:IsA("NC_" .. str) ~= false then
			v2("x")
		end
	end

	tbl[#tbl + 1] = function()
		if v(getfenv, 2147483647) then
			v2("x")
		end
	end

	tbl[#tbl + 1] = function()
		if v(function()
			return game()
		end) then
			v2("x")
		end

		if v(function()
			for k in game, nil, nil do
			end
		end) then
			v2("x")
		end
	end

	tbl[#tbl + 1] = function()
		local part, v7 = v(Instance.new, "Part")

		if not part or v4(v7) ~= "Instance" then
			v2("x")
		end

		local name = "P_" .. str
		v7.Name = name

		if v7.Name ~= name then
			v2("x")
		end

		if v(function()
			return v7["NP_" .. str]
		end) then
			v2("x")
		end

		v(function()
			v7:Destroy()
		end)
	end

	tbl[#tbl + 1] = function()
		if v4(game) ~= "Instance" then
			v2("x")
		end
	end

	tbl[#tbl + 1] = function()
		if v(Instance.new, "NC_" .. str .. tostring(random(1, 1000000))) then
			v2("x")
		end
	end

	local flag = false

	for _, v7 in v6(tbl) do
		if not v(v7) then
			flag = true
		end
	end

	local n = 0

	local function fn2(arg)
		if not v(arg) then
			n = n + 1
		end
	end

	local tbl2 = {}

	tbl2[#tbl2 + 1] = function()
		local info = debug and debug.info
		if v3(info) ~= "function" then
			return
		end
		local n2 = 0

		if info(v, "s") ~= "[C]" then
			n2 = 1
		end

		if info(v3, "s") ~= "[C]" then
			n2 = n2 + 1
		end

		if info(v4, "s") ~= "[C]" then
			n2 = n2 + 1
		end

		if n2 >= 2 then
			v2("x")
		end
	end

	tbl2[#tbl2 + 1] = function()
		local info = debug and debug.info

		if v3(info) == "function" and info(print, "s") ~= "[C]" then
			v2("x")
		end
	end

	tbl2[#tbl2 + 1] = function()
		local n2 = 0

		local connection = game:GetService("RunService").Heartbeat:Connect(function()
			n2 = n2 + 1
		end)

		local n3 = 0

		while true do
			task.wait()
			n3 = n3 + 1
			if not (n2 >= 2 or n3 >= 8) then
				continue
			end
			break
		end

		connection:Disconnect()

		if n2 < 2 then
			v2("x")
		end
	end

	tbl2[#tbl2 + 1] = function()
		local localPlayer = game:GetService("Players").LocalPlayer

		if v4(localPlayer) ~= "Instance" then
			v2("x")
		end

		local userId = localPlayer.UserId

		if v3(userId) ~= "number" or userId <= 0 then
			v2("x")
		end
	end

	tbl2[#tbl2 + 1] = function()
		local count = collectgarbage("count")
		local tbl3 = {}

		for i = 1, 400 do
			tbl3[i] = { i }
		end

		if collectgarbage("count") <= count then
			v2("x")
		end
	end

	tbl2[#tbl2 + 1] = function()
		local flag2 = false

		local function fn3(...)
			if v5("#", ...) > 0 then
				flag2 = true
			end
		end

		fn3()

		if flag2 then
			v2("x")
		end
	end

	tbl2[#tbl2 + 1] = function()
		local tbl3 = {}

		local v7, v8 = v(function()
			v2(tbl3)
		end)

		if v8 ~= tbl3 then
			v2("x")
		end
	end

	tbl2[#tbl2 + 1] = function()
		local now = os.clock()
		task.wait()

		if os.clock() - now <= 0 then
			v2("x")
		end
	end

	for _, v7 in v6(tbl2) do
		fn2(v7)
	end

	if flag or n >= 4 then
		fn()
	end
end

if getgenv().ScriptExecuted then
	return
end

if identifyexecutor then
	identifyexecutor()
end

getgenv().ScriptExecuted = true

-- [NEW] AUTO ULT: ALWAYS ON BY DEFAULT, only turned off when you press the "Auto Ult" button in the GUI
if getgenv().AutoUlt == nil then
	getgenv().AutoUlt = true
end

local flag
flag = false
local TweenService
TweenService = game:GetService("TweenService")
local RunService
RunService = game:GetService("RunService")
local flag2 = true

-- [PART 3: SUPER FIX LAG OPTIMIZATION]
task.spawn(function()
	local tbl = { "ParticleEmitter", "Trail", "Beam", "Fire", "Smoke", "Sparkles", "Explosion", "Sound" }

	local tbl2 = {
		-- (Thrown is NOT deleted: the dodge logic needs workspace.Thrown)
		Preload = true,
		Built = true,
		Benchs = true,
		["Floor/Roads"] = true,
		GrassBottom = true,
		GrassTop = true,
		Stuff = true,
		Trash = true,
		Trees = true,
		Grass = true,
		Walls = true,
		Tunnel = true,
	}

	local function fn(arg)
		for _, v in tbl, nil, nil do
			if arg:IsA(v) then
				return true
			end
		end

		if (arg:IsA("Folder") or arg:IsA("Model")) and tbl2[arg.Name] then
			return true
		end
		return false
	end

	local function fn2(descendant)
		if fn(descendant) then
			task.defer(function()
				if descendant and descendant.Parent then
					descendant:Destroy()
				end
			end)
		end
	end

	workspace.DescendantAdded:Connect(fn2)

	for _, v in workspace:GetDescendants() do
		fn2(v)
	end

	print("[Project Eternal] Super Fix Lag Activated!")
end)

local tbl

tbl = {
	"France",
	"Netherlands",
	"United States",
	"United Kingdom",
	"Australia",
	"Germany",
	"India",
	"Brazil",
	"Singapore",
	"Japan",
}

local tbl2 = {
	Background = Color3.fromRGB(240, 248, 255),
	Panel = Color3.fromRGB(224, 242, 254),
	PanelAlt = Color3.fromRGB(207, 235, 253),
	Stroke = Color3.fromRGB(186, 230, 253),
	TextPrimary = Color3.fromRGB(12, 74, 110),
	TextDim = Color3.fromRGB(56, 130, 170),
	Amber = Color3.fromRGB(245, 158, 11),
	Teal = Color3.fromRGB(14, 165, 233),
	Rose = Color3.fromRGB(244, 63, 94),
	Lavender = Color3.fromRGB(99, 102, 241),
	FarmOn = Color3.fromRGB(34, 197, 94),
	FarmOff = Color3.fromRGB(239, 68, 68),
}

local flag3
flag3 = true
local HttpService
HttpService = game:GetService("HttpService")
local v, fn

do
	local str = "Project Eternal/PublicFarm/" .. game:GetService("Players").LocalPlayer.Name
	local str2 = str .. "/settings.json"

	local function fn2()
		if isfolder and not isfolder("Project Eternal") then
			makefolder("Project Eternal")
		end

		if isfolder and not isfolder(str) then
			makefolder(str)
		end
	end

	v = table.clone({ country = tbl[1], theme = "Legacy" })

	fn = function()
		fn2()
		local ok, result = pcall(HttpService.JSONEncode, HttpService, v)

		if ok and writefile then
			writefile(str2, result)
		else
			warn("[Project Eternal] Failed to encode settings:", result)
		end
	end

	local function fn3()
		fn2()
		if not isfile or not isfile(str2) then
			return
		end
		local ok, result = pcall(readfile, str2)
		if not ok then
			warn("[Project Eternal] Failed to read settings file:", result)
			return
		end
		local ok2, result2 = pcall(HttpService.JSONDecode, HttpService, result)
		if not ok2 or type(result2) ~= "table" then
			warn("[Project Eternal] Failed to decode settings file, using defaults")
			return
		end

		for k, v2 in pairs(result2) do
			v[k] = v2
		end
	end

	fn3()
end

getgenv().TimeFarmed = getgenv().TimeFarmed or 0
getgenv().session_start = getgenv().session_start or os.time()
getgenv().carriedKills = getgenv().carriedKills or 0
getgenv().emotes = getgenv().emotes or 0
local serverJoinTick = tick()
local fn2

fn2 = function(arg, arg2, arg3, arg4, arg5)
	local tween = TweenService:Create(arg, TweenInfo.new(arg3, arg4 or Enum.EasingStyle.Quint, arg5 or Enum.EasingDirection.Out), arg2)
	tween:Play()
	return tween
end

local createUIGradient

createUIGradient = function(parent, arg, arg2, rotation)
	local uiGradient = Instance.new("UIGradient")
	uiGradient.Color = ColorSequence.new(arg, arg2)
	uiGradient.Rotation = rotation or 90
	uiGradient.Parent = parent
	return uiGradient
end

local fn3

fn3 = function(arg, arg2)
	Instance.new("UICorner", arg).CornerRadius = UDim.new(0, arg2 or 8)
end

local createUIStroke

createUIStroke = function(parent, color, thickness, transparency)
	local uiStroke = Instance.new("UIStroke")
	uiStroke.Color = color or Color3.fromRGB(186, 230, 253)
	uiStroke.Thickness = thickness or 1
	uiStroke.Transparency = transparency or 0.3
	uiStroke.Parent = parent
	return uiStroke
end

-- [SECTION 4: PROJECT ETERNAL UI AND VISIBILITY TOGGLE]
-- Project Eternal logo asset.
local ETERNAL_LOGO = "rbxassetid://137845148886319"

-- These are read by the farming logic further down, so they stay at file level.
local doServerHop, fn4, textButton2
tbl3 = {}

do
	local UserInputService = game:GetService("UserInputService")

	------------------------------------------------------------------
	-- themes
	------------------------------------------------------------------
	local ROLES = { "Bg", "Panel", "PanelHover", "Stroke", "Text", "Dim", "List", "Pill", "BarOn", "BarOff", "Accent" }
	-- which theme field controls the transparency of each role (falls back to PanelAlpha)
	local ALPHA_ROLE = {
		Panel = "PanelAlpha",
		PanelHover = "HoverAlpha",
		List = "ListAlpha",
		Pill = "PillAlpha",
	}
	local THEME_ORDER = { "Legacy", "Smoked Glass", "Obsidian", "Crimson", "Aurora", "Ocean", "Midnight", "Emerald", "Amethyst", "Sunset" }

	local function rgb(r, g, b)
		return Color3.fromRGB(r, g, b)
	end

	-- th.sheen : strength (0-1) of the soft diagonal light streak over the window
	-- th.edge  : 3 colours for a gradient window/tab-bar border (glass rim light)
	local THEMES = {
		["Legacy"] = {
			desc = "Classic black",
			Bg = rgb(0, 0, 0), Panel = rgb(24, 24, 30), PanelHover = rgb(40, 40, 50), Stroke = rgb(80, 80, 98),
			Text = rgb(250, 250, 253), Dim = rgb(165, 165, 182), List = rgb(22, 22, 30), Pill = rgb(16, 16, 22),
			BarOn = rgb(40, 40, 44), BarOff = rgb(14, 14, 16), Accent = rgb(34, 214, 80),
			grad = { rgb(0, 0, 0), rgb(0, 0, 0), rgb(0, 0, 0) }, rot = 90, BgAlpha = 0, PanelAlpha = 0,
		},
		["Smoked Glass"] = {
			desc = "Frosted dark glass",
			Bg = rgb(14, 16, 22), Panel = rgb(206, 218, 240), PanelHover = rgb(238, 245, 255), Stroke = rgb(108, 122, 150),
			Text = rgb(248, 250, 255), Dim = rgb(176, 188, 210), List = rgb(16, 19, 27), Pill = rgb(6, 8, 12),
			BarOn = rgb(84, 98, 128), BarOff = rgb(10, 12, 18), Accent = rgb(142, 214, 255),
			grad = { rgb(40, 46, 60), rgb(18, 21, 30), rgb(7, 8, 13) }, rot = 62,
			BgAlpha = 0.24, PanelAlpha = 0.9, HoverAlpha = 0.8, ListAlpha = 0.03, PillAlpha = 0.35,
			BarOnAlpha = 0.3, BarOffAlpha = 0.5,
			sheen = 1, edge = { rgb(255, 255, 255), rgb(120, 134, 164), rgb(50, 58, 76) },
		},
		["Obsidian"] = {
			desc = "Black glass, gold trim",
			Bg = rgb(10, 9, 8), Panel = rgb(236, 214, 160), PanelHover = rgb(255, 238, 190), Stroke = rgb(120, 98, 52),
			Text = rgb(255, 250, 238), Dim = rgb(196, 178, 140), List = rgb(18, 15, 11), Pill = rgb(6, 5, 4),
			BarOn = rgb(110, 86, 38), BarOff = rgb(10, 9, 8), Accent = rgb(255, 196, 64),
			grad = { rgb(32, 27, 18), rgb(13, 11, 8), rgb(4, 4, 3) }, rot = 65,
			BgAlpha = 0.1, PanelAlpha = 0.92, HoverAlpha = 0.84, ListAlpha = 0.02, PillAlpha = 0.4,
			BarOnAlpha = 0.2, BarOffAlpha = 0.15,
			sheen = 0.7, edge = { rgb(255, 214, 120), rgb(140, 108, 50), rgb(54, 42, 20) },
		},
		["Crimson"] = {
			desc = "Deep red",
			Bg = rgb(58, 8, 16), Panel = rgb(44, 12, 18), PanelHover = rgb(78, 20, 32), Stroke = rgb(158, 36, 56),
			Text = rgb(255, 240, 242), Dim = rgb(212, 154, 162), List = rgb(32, 9, 13), Pill = rgb(24, 6, 10),
			BarOn = rgb(86, 17, 30), BarOff = rgb(22, 6, 10), Accent = rgb(255, 72, 92),
			grad = { rgb(74, 10, 22), rgb(30, 6, 12), rgb(10, 3, 5) }, rot = 65, BgAlpha = 0, PanelAlpha = 0.04,
			sheen = 0.5, edge = { rgb(255, 104, 120), rgb(150, 32, 50), rgb(60, 12, 20) },
		},
		["Aurora"] = {
			desc = "Teal and violet glow",
			Bg = rgb(8, 40, 52), Panel = rgb(12, 34, 44), PanelHover = rgb(24, 62, 74), Stroke = rgb(64, 210, 180),
			Text = rgb(236, 255, 250), Dim = rgb(150, 200, 200), List = rgb(10, 28, 38), Pill = rgb(8, 24, 34),
			BarOn = rgb(22, 70, 78), BarOff = rgb(8, 22, 30), Accent = rgb(96, 255, 196),
			grad = { rgb(8, 44, 58), rgb(16, 76, 82), rgb(58, 30, 104) }, rot = 70, BgAlpha = 0, PanelAlpha = 0.15,
			sheen = 0.6, edge = { rgb(110, 255, 214), rgb(70, 150, 200), rgb(150, 90, 240) },
		},
		["Ocean"] = {
			desc = "Deep sea blue",
			Bg = rgb(6, 28, 48), Panel = rgb(10, 36, 58), PanelHover = rgb(20, 62, 94), Stroke = rgb(52, 150, 214),
			Text = rgb(236, 248, 255), Dim = rgb(144, 186, 214), List = rgb(8, 26, 44), Pill = rgb(6, 20, 36),
			BarOn = rgb(18, 70, 112), BarOff = rgb(6, 20, 34), Accent = rgb(72, 206, 255),
			grad = { rgb(8, 52, 86), rgb(6, 28, 50), rgb(3, 10, 22) }, rot = 70, BgAlpha = 0, PanelAlpha = 0.1,
			sheen = 0.55, edge = { rgb(120, 226, 255), rgb(50, 130, 200), rgb(16, 48, 90) },
		},
		["Midnight"] = {
			desc = "Navy blue",
			Bg = rgb(14, 20, 52), Panel = rgb(18, 24, 54), PanelHover = rgb(34, 44, 90), Stroke = rgb(76, 102, 210),
			Text = rgb(240, 244, 255), Dim = rgb(156, 168, 212), List = rgb(13, 18, 40), Pill = rgb(10, 14, 34),
			BarOn = rgb(34, 46, 102), BarOff = rgb(9, 12, 30), Accent = rgb(116, 156, 255),
			grad = { rgb(20, 28, 72), rgb(9, 13, 34), rgb(4, 6, 16) }, rot = 65, BgAlpha = 0, PanelAlpha = 0.05,
			sheen = 0.5, edge = { rgb(150, 182, 255), rgb(76, 100, 210), rgb(30, 40, 100) },
		},
		["Emerald"] = {
			desc = "Dark green",
			Bg = rgb(8, 40, 26), Panel = rgb(12, 34, 22), PanelHover = rgb(20, 56, 38), Stroke = rgb(40, 158, 98),
			Text = rgb(236, 255, 244), Dim = rgb(146, 196, 166), List = rgb(8, 24, 16), Pill = rgb(6, 18, 12),
			BarOn = rgb(18, 70, 46), BarOff = rgb(5, 17, 11), Accent = rgb(58, 236, 136),
			grad = { rgb(10, 52, 34), rgb(5, 24, 15), rgb(2, 9, 6) }, rot = 65, BgAlpha = 0, PanelAlpha = 0.05,
			sheen = 0.5, edge = { rgb(110, 255, 170), rgb(40, 150, 96), rgb(14, 60, 38) },
		},
		["Amethyst"] = {
			desc = "Royal purple",
			Bg = rgb(40, 16, 66), Panel = rgb(34, 18, 54), PanelHover = rgb(58, 34, 90), Stroke = rgb(138, 88, 220),
			Text = rgb(248, 240, 255), Dim = rgb(192, 166, 220), List = rgb(24, 12, 40), Pill = rgb(18, 10, 32),
			BarOn = rgb(64, 36, 106), BarOff = rgb(17, 9, 30), Accent = rgb(198, 128, 255),
			grad = { rgb(56, 22, 92), rgb(24, 10, 42), rgb(9, 4, 17) }, rot = 65, BgAlpha = 0, PanelAlpha = 0.05,
			sheen = 0.55, edge = { rgb(218, 160, 255), rgb(134, 84, 214), rgb(52, 26, 96) },
		},
		["Sunset"] = {
			desc = "Warm orange",
			Bg = rgb(86, 34, 22), Panel = rgb(54, 24, 26), PanelHover = rgb(88, 42, 38), Stroke = rgb(236, 116, 64),
			Text = rgb(255, 244, 236), Dim = rgb(224, 176, 156), List = rgb(42, 18, 20), Pill = rgb(32, 14, 16),
			BarOn = rgb(98, 46, 32), BarOff = rgb(28, 12, 12), Accent = rgb(255, 158, 76),
			grad = { rgb(112, 40, 28), rgb(58, 20, 32), rgb(20, 8, 20) }, rot = 65, BgAlpha = 0, PanelAlpha = 0.05,
			sheen = 0.55, edge = { rgb(255, 186, 110), rgb(224, 104, 58), rgb(90, 30, 40) },
		},
	}

	local function roleAlpha(th, role)
		local key = ALPHA_ROLE[role]
		if not key then
			return nil
		end
		if th[key] ~= nil then
			return th[key]
		end
		if key == "HoverAlpha" or key == "PillAlpha" then
			return th.PanelAlpha or 0
		end
		return 0
	end

	-- Colours that never change with the theme
	local C = {
		Off = Color3.fromRGB(62, 62, 78),
		White = Color3.fromRGB(244, 244, 247),
		Green = Color3.fromRGB(74, 222, 128),
		Red = Color3.fromRGB(248, 113, 113),
		Amber = Color3.fromRGB(251, 191, 36),
		Indigo = Color3.fromRGB(129, 140, 248),
	}
	for _, role in ipairs(ROLES) do
		C[role] = THEMES["Legacy"][role]
	end
	local currentTheme = "Legacy"
	local statDots = {} -- stat-card dots, recoloured by the theme
	local statCards = {} -- the four stat boxes (and the timer box), tinted by the theme
	local switchRefreshers = {} -- toggle switches, redrawn when the theme changes

	-- stat dots keep their original fixed colours (red, green, amber, indigo)
	local function statPalette()
		return { C.Red, C.Green, C.Amber, C.Indigo }
	end
	local themed = setmetatable({}, { __mode = "k" })

	getgenv().renderEnabled = true
	pcall(function()
		RunService:Set3dRenderingEnabled(true)
	end)

	local WIN_W, WIN_H = 420, 600

	------------------------------------------------------------------
	-- helpers
	------------------------------------------------------------------
	local function mk(class, props, parent)
		local inst = Instance.new(class)
		local skip = props._noTheme
		for k, val in pairs(props) do
			if k ~= "_noTheme" then
				inst[k] = val
				if not skip and typeof(val) == "Color3" then
					for _, role in ipairs(ROLES) do
						if C[role] == val then
							local entry = themed[inst]
							if not entry then
								entry = {}
								themed[inst] = entry
							end
							entry[k] = role
							break
						end
					end
				end
			end
		end
		if parent then
			inst.Parent = parent
		end
		return inst
	end

	local function round(inst, radius)
		return mk("UICorner", { CornerRadius = UDim.new(0, radius) }, inst)
	end

	local function outline(inst, color, thickness, transparency)
		return mk("UIStroke", {
			Color = color,
			Thickness = thickness or 1,
			Transparency = transparency or 0,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		}, inst)
	end

	local function tw(inst, props, time, style, dir)
		local t = TweenService:Create(inst, TweenInfo.new(time or 0.15, style or Enum.EasingStyle.Quint, dir or Enum.EasingDirection.Out), props)
		t:Play()
		return t
	end

	local function text(parent, str, size, font, color, pos, sz, align)
		return mk("TextLabel", {
			Text = str,
			TextSize = size,
			Font = font,
			TextColor3 = color,
			Position = pos,
			Size = sz,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			TextXAlignment = align or Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
		}, parent)
	end

	local function loadLogo(img)
		img.Image = ETERNAL_LOGO
		task.spawn(function()
			local function waitLoaded(seconds)
				local t = 0
				while t < seconds and not img.IsLoaded do
					task.wait(0.1)
					t = t + 0.1
				end
				return img.IsLoaded
			end

			if waitLoaded(2) then
				return
			end

			-- Direct load failed (often a decal id): try the asset thumbnail instead
			img.Image = "rbxthumb://type=Asset&id=137845148886319&w=420&h=420"
			if waitLoaded(3) then
				return
			end

			-- Still nothing: show a text mark so the spot is never empty
			img.Image = ""
			local mark = Instance.new("TextLabel")
			mark.Text = "PE"
			mark.Font = Enum.Font.GothamBlack
			mark.TextScaled = true
			mark.TextColor3 = Color3.fromRGB(20, 20, 24)
			mark.BackgroundTransparency = 1
			mark.Size = img.Size
			mark.Position = img.Position
			mark.Parent = img.Parent
		end)
		return img
	end

	local function card(parent, pos, size)
		local f = mk("Frame", {
			Position = pos,
			Size = size,
			BackgroundColor3 = C.Panel,
			BorderSizePixel = 0,
		}, parent)
		round(f, 12)
		outline(f, C.Stroke, 1, 0)
		return f
	end

	------------------------------------------------------------------
	-- screen gui
	------------------------------------------------------------------
	local uiParent = nil
	pcall(function()
		if gethui then
			uiParent = gethui()
		end
	end)
	if not uiParent then
		pcall(function()
			uiParent = game:GetService("CoreGui")
		end)
	end
	if not uiParent then
		uiParent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
	end

	local blackGui = mk("ScreenGui", {
		Name = "ProjectEternalBlackScreen",
		ResetOnSpawn = false,
		DisplayOrder = 998,
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, uiParent)
	local blackFrame = mk("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.new(0, 0, 0),
		BorderSizePixel = 0,
		Visible = false,
		_noTheme = true,
	}, blackGui)

	local gui = mk("ScreenGui", {
		Name = "ProjectYieldingUI",
		ResetOnSpawn = false,
		DisplayOrder = 999,
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, uiParent)

	------------------------------------------------------------------
	-- main window
	------------------------------------------------------------------
	local win = mk("CanvasGroup", {
		Name = "Window",
		Size = UDim2.fromOffset(WIN_W, WIN_H),
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Active = true,
		GroupTransparency = 1,
		Visible = false,
	}, gui)
	round(win, 18)
	local uiScale = mk("UIScale", { Scale = 1 }, win)

	local bgFill = mk("Frame", {
		Name = "Fill",
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderSizePixel = 0,
		ZIndex = 0,
	}, win)
	round(bgFill, 18)
	local bgGradient = mk("UIGradient", { Rotation = 90 }, bgFill)

	local winBorder = mk("Frame", {
		Name = "Border",
		Size = UDim2.new(1, -2, 1, -2),
		Position = UDim2.fromOffset(1, 1),
		BackgroundTransparency = 1,
		ZIndex = 50,
	}, win)
	round(winBorder, 17)
	local winStroke = outline(winBorder, C.Stroke, 1, 0)
	local winEdge = mk("UIGradient", { Enabled = false, Rotation = 45 }, winStroke)

	-- soft diagonal light streak (used by the glass themes)
	local sheen = mk("Frame", {
		Name = "Sheen",
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderSizePixel = 0,
		ZIndex = 40,
		Visible = false,
		_noTheme = true,
	}, win)
	round(sheen, 18)
	local sheenGrad = mk("UIGradient", { Rotation = 28 }, sheen)

	-- Title bar -------------------------------------------------------
	local titleBar = mk("Frame", {
		Name = "TitleBar",
		Size = UDim2.new(1, 0, 0, 62),
		BackgroundTransparency = 1,
	}, win)

	local logoTile = mk("Frame", {
		Size = UDim2.fromOffset(46, 46),
		Position = UDim2.fromOffset(14, 8),
		BackgroundColor3 = Color3.fromRGB(240, 240, 245),
		BorderSizePixel = 0,
	}, titleBar)
	round(logoTile, 12)
	local logoTileImg = loadLogo(mk("ImageLabel", {
		Image = ETERNAL_LOGO,
		Size = UDim2.fromScale(1, 1),
		Position = UDim2.fromOffset(0, 0),
		BackgroundTransparency = 1,
		ScaleType = Enum.ScaleType.Crop,
		}, logoTile))
	round(logoTileImg, 12)

	text(titleBar, "Project Eternal", 17, Enum.Font.GothamBold, C.Text, UDim2.fromOffset(68, 12), UDim2.new(1, -90, 0, 20))
	text(titleBar, "Saitama Farm", 11, Enum.Font.Gotham, C.Dim, UDim2.fromOffset(68, 32), UDim2.new(1, -90, 0, 14))

	mk("Frame", {
		Size = UDim2.new(1, -32, 0, 1),
		Position = UDim2.fromOffset(16, 62),
		BackgroundColor3 = C.Stroke,
		BorderSizePixel = 0,
	}, win)

	-- Credits (very bottom, visible on every page) ---------------------
	mk("Frame", {
		Name = "CreditsDivider",
		Size = UDim2.new(1, -32, 0, 1),
		Position = UDim2.fromOffset(16, 566),
		BackgroundColor3 = C.Stroke,
		BorderSizePixel = 0,
	}, win)
	text(win, "Developer @NoMxcry   \u{2022}   Helper @kietlackid", 11, Enum.Font.GothamMedium, C.Dim, UDim2.fromOffset(0, 572), UDim2.new(1, 0, 0, 16), Enum.TextXAlignment.Center)

	-- Pages -----------------------------------------------------------
	local mainPage = mk("Frame", {
		Name = "MainPage",
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}, win)

	-- Hero card: timer + status ---------------------------------------
	local hero = card(mainPage, UDim2.fromOffset(16, 76), UDim2.fromOffset(388, 86))
	statCards[#statCards + 1] = hero
	text(hero, "TIME FARMED", 10, Enum.Font.GothamMedium, C.Dim, UDim2.fromOffset(16, 12), UDim2.fromOffset(150, 14))

	local timerLabel = text(hero, "00:00:00", 34, Enum.Font.GothamBold, C.Text, UDim2.fromOffset(16, 30), UDim2.new(1, -32, 0, 46))
	tbl3.timer = timerLabel

	local pill = mk("Frame", {
		Size = UDim2.fromOffset(92, 24),
		Position = UDim2.new(1, -106, 0, 10),
		BackgroundColor3 = C.Pill,
		BorderSizePixel = 0,
	}, hero)
	round(pill, 12)
	local pillStroke = outline(pill, C.Stroke, 1, 0)
	local pillDot = mk("Frame", {
		Size = UDim2.fromOffset(7, 7),
		Position = UDim2.fromOffset(11, 8.5),
		BackgroundColor3 = C.Accent,
		BorderSizePixel = 0,
	}, pill)
	round(pillDot, 4)
	local pillText = text(pill, "Farming", 11, Enum.Font.GothamBold, C.Accent, UDim2.fromOffset(25, 0), UDim2.new(1, -30, 1, 0))

	-- Stat cards -------------------------------------------------------
	local stats = {
		{ id = "kills", label = "KILLS" },
		{ id = "kph", label = "KILLS / HOUR" },
		{ id = "emotes", label = "EMOTES UNLOCKED" },
		{ id = "total", label = "TOTAL KILLS" },
	}

	for i, s in ipairs(stats) do
		local col = (i - 1) % 2
		local row = math.floor((i - 1) / 2)
		local c = card(mainPage, UDim2.fromOffset(16 + col * 198, 174 + row * 72), UDim2.fromOffset(190, 64))
		statCards[#statCards + 1] = c

		text(c, s.label, 9, Enum.Font.GothamMedium, C.Dim, UDim2.fromOffset(14, 10), UDim2.new(1, -36, 0, 12))
		local value = text(c, "0", 22, Enum.Font.GothamBold, C.Text, UDim2.fromOffset(14, 26), UDim2.new(1, -28, 0, 28))
		local dot = mk("Frame", {
			Size = UDim2.fromOffset(6, 6),
			Position = UDim2.new(1, -18, 0, 13),
			BackgroundColor3 = statPalette(C.Accent)[i],
			_noTheme = true,
			BorderSizePixel = 0,
		}, c)
		round(dot, 3)
		statDots[#statDots + 1] = { dot = dot, idx = i }
		tbl3[s.id] = value
	end

	-- Settings card (raised above the buttons so the dropdown overlaps them)
	local settings = card(mainPage, UDim2.fromOffset(16, 322), UDim2.fromOffset(388, 180))
	settings.ZIndex = 5

	text(settings, "Region", 12, Enum.Font.GothamMedium, C.Text, UDim2.fromOffset(16, 16), UDim2.fromOffset(120, 16))

	local ddButton = mk("TextButton", {
		Text = "",
		BackgroundColor3 = C.PanelHover,
		BorderSizePixel = 0,
		AutoButtonColor = false,
		Size = UDim2.fromOffset(160, 28),
		Position = UDim2.new(1, -176, 0, 10),
	}, settings)
	round(ddButton, 8)
	outline(ddButton, C.Stroke, 1, 0)

	local ddText = text(ddButton, v.country or "Select...", 11, Enum.Font.GothamMedium, C.Text, UDim2.fromOffset(10, 0), UDim2.new(1, -30, 1, 0))
	local ddArrow = text(ddButton, "▾", 11, Enum.Font.GothamBold, C.Dim, UDim2.new(1, -22, 0, 0), UDim2.fromOffset(16, 28), Enum.TextXAlignment.Center)

	local ROW_H = 26
	local list = mk("ScrollingFrame", {
		Visible = false,
		Position = UDim2.new(0, 0, 1, 4),
		Size = UDim2.new(1, 0, 0, 0),
		BackgroundColor3 = C.List,
		BorderSizePixel = 0,
		ScrollBarThickness = 3,
		ScrollBarImageColor3 = C.Dim,
		CanvasSize = UDim2.fromOffset(0, #tbl * ROW_H),
		ClipsDescendants = true,
		ZIndex = 20,
	}, ddButton)
	round(list, 8)
	outline(list, C.Stroke, 1, 0)
	mk("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder }, list)

	local listOpen = false
	local rowButtons = {}

	local function closeList()
		listOpen = false
		list.Visible = false
		list.Size = UDim2.new(1, 0, 0, 0)
		ddArrow.Text = "▾"
	end

	local function openList()
		listOpen = true
		list.Visible = true
		ddArrow.Text = "▴"
		list.Size = UDim2.new(1, 0, 0, math.min(#tbl, 4) * ROW_H)
	end

	local function refreshRows()
		for name, btn in pairs(rowButtons) do
			local selected = (name == v.country)
			btn.TextColor3 = selected and C.Text or C.Dim
			btn.Font = selected and Enum.Font.GothamBold or Enum.Font.Gotham
		end
	end

	ddButton.MouseButton1Click:Connect(function()
		if listOpen then
			closeList()
		else
			openList()
		end
	end)

	for i, name in ipairs(tbl) do
		local row = mk("TextButton", {
			Name = name,
			LayoutOrder = i,
			Text = "  " .. name,
			Font = Enum.Font.Gotham,
			TextSize = 11,
			TextColor3 = C.Dim,
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundColor3 = C.List,
			BorderSizePixel = 0,
			AutoButtonColor = false,
			Size = UDim2.new(1, 0, 0, ROW_H),
			ZIndex = 21,
		}, list)
		rowButtons[name] = row

		row.MouseEnter:Connect(function()
			local th = THEMES[currentTheme] or THEMES["Legacy"]
			row.BackgroundColor3 = C.PanelHover
			row.BackgroundTransparency = roleAlpha(th, "PanelHover")
		end)
		row.MouseLeave:Connect(function()
			local th = THEMES[currentTheme] or THEMES["Legacy"]
			row.BackgroundColor3 = C.List
			row.BackgroundTransparency = roleAlpha(th, "List")
		end)
		row.MouseButton1Click:Connect(function()
			v.country = name
			ddText.Text = name
			refreshRows()
			closeList()
			fn()
		end)
	end
	refreshRows()

	mk("Frame", {
		Size = UDim2.new(1, -32, 0, 1),
		Position = UDim2.fromOffset(16, 46),
		BackgroundColor3 = C.Stroke,
		BorderSizePixel = 0,
	}, settings)

	text(settings, "Server hop", 12, Enum.Font.GothamMedium, C.Text, UDim2.fromOffset(16, 61), UDim2.fromOffset(160, 16))

	local function makeSwitch(parent, y, onChange)
		local trk = mk("TextButton", {
			Text = "",
			BackgroundColor3 = C.Off,
			BorderSizePixel = 0,
			AutoButtonColor = false,
			Size = UDim2.fromOffset(42, 22),
			Position = UDim2.new(1, -58, 0, y),
		}, parent)
		round(trk, 11)
		local kb = mk("Frame", {
			Size = UDim2.fromOffset(16, 16),
			Position = UDim2.fromOffset(3, 3),
			BackgroundColor3 = C.White,
			BorderSizePixel = 0,
		}, trk)
		round(kb, 8)

		local state = false
		local function set(on, instant)
			state = on
			local t = instant and 0 or 0.18
			if on then
				tw(trk, { BackgroundColor3 = C.Accent }, t)
				tw(kb, { Position = UDim2.fromOffset(23, 3), BackgroundColor3 = Color3.fromRGB(8, 10, 14) }, t)
			else
				tw(trk, { BackgroundColor3 = C.Off }, t)
				tw(kb, { Position = UDim2.fromOffset(3, 3), BackgroundColor3 = C.White }, t)
			end
		end
		switchRefreshers[#switchRefreshers + 1] = function()
			set(state, true)
		end
		trk.MouseButton1Click:Connect(function()
			set(not state)
			onChange(state)
		end)
		return set
	end

	doServerHop = getgenv().DoServerHop
	if doServerHop == nil then
		doServerHop = true
	end

	local setHopVisual = makeSwitch(settings, 58, function(on)
		doServerHop = on
		getgenv().DoServerHop = on
	end)
	setHopVisual(doServerHop, true)

	mk("Frame", {
		Size = UDim2.new(1, -32, 0, 1),
		Position = UDim2.fromOffset(16, 90),
		BackgroundColor3 = C.Stroke,
		BorderSizePixel = 0,
	}, settings)

	text(settings, "Disable rendering", 12, Enum.Font.GothamMedium, C.Text, UDim2.fromOffset(16, 98), UDim2.fromOffset(200, 16))
	text(settings, "Black screen + 3D rendering off", 10, Enum.Font.Gotham, C.Dim, UDim2.fromOffset(16, 114), UDim2.fromOffset(220, 14))

	local function applyRender(disabled)
		getgenv().DisableRendering = disabled
		getgenv().renderEnabled = not disabled
		blackFrame.Visible = disabled
		pcall(function()
			RunService:Set3dRenderingEnabled(not disabled)
		end)
	end

	local setRenderVisual = makeSwitch(settings, 103, applyRender)
	local startDisabled = getgenv().DisableRendering == true
	setRenderVisual(startDisabled, true)
	applyRender(startDisabled)

	mk("Frame", {
		Size = UDim2.new(1, -32, 0, 1),
		Position = UDim2.fromOffset(16, 134),
		BackgroundColor3 = C.Stroke,
		BorderSizePixel = 0,
	}, settings)

	text(settings, "Auto ultimate", 12, Enum.Font.GothamMedium, C.Text, UDim2.fromOffset(16, 142), UDim2.fromOffset(200, 16))
	text(settings, "Uses your ultimate automatically", 10, Enum.Font.Gotham, C.Dim, UDim2.fromOffset(16, 158), UDim2.fromOffset(240, 14))

	local autoUlt = getgenv().AutoUlt
	if autoUlt == nil then
		autoUlt = true
	end
	getgenv().AutoUlt = autoUlt
	local setUltVisual = makeSwitch(settings, 147, function(on)
		getgenv().AutoUlt = on
	end)
	setUltVisual(autoUlt, true)

	-- Action buttons ---------------------------------------------------
	local farmBtn = mk("TextButton", {
		Text = "Stop Farm",
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		BackgroundColor3 = C.White,
		TextColor3 = Color3.fromRGB(8, 8, 10),
		BorderSizePixel = 0,
		AutoButtonColor = false,
		Size = UDim2.fromOffset(256, 42),
		Position = UDim2.fromOffset(16, 514),
	}, mainPage)
	round(farmBtn, 12)
	local farmStroke = outline(farmBtn, C.Stroke, 1, 1)
	themed[farmStroke] = nil

	textButton2 = mk("TextButton", {
		Text = "Hop Server",
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		TextColor3 = C.Text,
		BackgroundColor3 = C.Panel,
		BorderSizePixel = 0,
		AutoButtonColor = false,
		Size = UDim2.fromOffset(124, 42),
		Position = UDim2.fromOffset(280, 514),
	}, mainPage)
	round(textButton2, 12)
	outline(textButton2, C.Stroke, 1, 0)

	textButton2.MouseEnter:Connect(function()
		tw(textButton2, { BackgroundColor3 = C.PanelHover })
	end)
	textButton2.MouseLeave:Connect(function()
		tw(textButton2, { BackgroundColor3 = C.Panel })
	end)

	-- Farm toggle (called by the farming logic too) --------------------
	local BLACK = Color3.fromRGB(0, 0, 0)
	local function runningBg(hover) -- "Stop Farm": dark red
		return hover and Color3.fromRGB(48, 18, 22) or Color3.fromRGB(34, 14, 17)
	end
	local function pausedBg(hover) -- "Start Farm": green
		return hover and C.Green:Lerp(Color3.fromRGB(255, 255, 255), 0.18) or C.Green
	end

	fn4 = function(arg)
		flag3 = arg

		if arg then
			farmBtn.Text = "Stop Farm"
			tw(farmBtn, { BackgroundColor3 = runningBg(false), TextColor3 = C.Red }, 0.2)
			tw(farmStroke, { Transparency = 0.35, Color = C.Red }, 0.2)
			pillText.Text = "Farming"
			tw(pillText, { TextColor3 = C.Accent }, 0.2)
			tw(pillDot, { BackgroundColor3 = C.Accent }, 0.2)
		else
			farmBtn.Text = "Start Farm"
			tw(farmBtn, { BackgroundColor3 = pausedBg(false), TextColor3 = Color3.fromRGB(6, 20, 11) }, 0.2)
			tw(farmStroke, { Transparency = 1 }, 0.2)
			pillText.Text = "Paused"
			tw(pillText, { TextColor3 = C.Dim }, 0.2)
			tw(pillDot, { BackgroundColor3 = C.Dim }, 0.2)
		end
	end

	farmBtn.MouseButton1Click:Connect(function()
		fn4(not flag3)
	end)
	farmBtn.MouseEnter:Connect(function()
		tw(farmBtn, { BackgroundColor3 = flag3 and runningBg(true) or pausedBg(true) }, 0.15)
	end)
	farmBtn.MouseLeave:Connect(function()
		tw(farmBtn, { BackgroundColor3 = flag3 and runningBg(false) or pausedBg(false) }, 0.15)
	end)

	fn4(flag3)
	pillDot.BackgroundColor3 = flag3 and C.Accent or C.Dim

	-- Soft pulse on the status dot while farming
	task.spawn(function()
		while gui.Parent do
			if flag3 then
				tw(pillDot, { BackgroundTransparency = 0.65 }, 0.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
				task.wait(0.85)
				tw(pillDot, { BackgroundTransparency = 0 }, 0.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
				task.wait(0.85)
			else
				pillDot.BackgroundTransparency = 0
				task.wait(0.4)
			end
		end
	end)

	------------------------------------------------------------------
	-- dragging (mouse + touch)
	------------------------------------------------------------------
	local function makeDraggable(handle, target, getScale)
		local dragging, dragStart, startPos = false, nil, nil

		handle.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = target.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				local delta = input.Position - dragStart
				local s = getScale()
				target.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X / s, startPos.Y.Scale, startPos.Y.Offset + delta.Y / s)
			end
		end)
	end

	makeDraggable(titleBar, win, function()
		return uiScale.Scale
	end)

	------------------------------------------------------------------
	-- settings page (themes)
	------------------------------------------------------------------
	local settingsPage = mk("Frame", {
		Name = "SettingsPage",
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Visible = false,
	}, win)

	text(settingsPage, "THEMES", 10, Enum.Font.GothamMedium, C.Dim, UDim2.fromOffset(20, 76), UDim2.fromOffset(200, 14))
	text(settingsPage, "Pick a look for the window and the tab bar", 11, Enum.Font.Gotham, C.Dim, UDim2.fromOffset(20, 92), UDim2.new(1, -40, 0, 14))

	local themeScroll = mk("ScrollingFrame", {
		Name = "ThemeList",
		Position = UDim2.fromOffset(10, 118),
		Size = UDim2.fromOffset(400, 392),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ScrollBarThickness = 2,
		ScrollBarImageColor3 = C.Dim,
		CanvasSize = UDim2.new(),
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		ScrollingDirection = Enum.ScrollingDirection.Y,
	}, settingsPage)
	mk("UIPadding", {
		PaddingLeft = UDim.new(0, 6),
		PaddingRight = UDim.new(0, 6),
		PaddingTop = UDim.new(0, 3),
		PaddingBottom = UDim.new(0, 3),
	}, themeScroll)
	mk("UIGridLayout", {
		CellSize = UDim2.fromOffset(190, 62),
		CellPadding = UDim2.fromOffset(6, 8),
		SortOrder = Enum.SortOrder.LayoutOrder,
	}, themeScroll)

	local themeTiles = {}
	local chooseTheme

	for i, name in ipairs(THEME_ORDER) do
		local th = THEMES[name]

		local tile = mk("TextButton", {
			Name = name,
			LayoutOrder = i,
			Text = "",
			AutoButtonColor = false,
			BackgroundColor3 = C.Panel,
			BorderSizePixel = 0,
		}, themeScroll)
		round(tile, 12)
		local tileStroke = outline(tile, C.Stroke, 1, 0)
		themed[tileStroke] = nil

		local swatch = mk("Frame", {
			Size = UDim2.fromOffset(46, 46),
			Position = UDim2.fromOffset(8, 8),
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderSizePixel = 0,
			_noTheme = true,
		}, tile)
		round(swatch, 10)
		mk("UIGradient", {
			Rotation = th.rot,
			Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, th.grad[1]),
				ColorSequenceKeypoint.new(0.5, th.grad[2]),
				ColorSequenceKeypoint.new(1, th.grad[3]),
			}),
		}, swatch)
		local swStroke = outline(swatch, th.Stroke, 1, 0)
		themed[swStroke] = nil
		local dot = mk("Frame", {
			Size = UDim2.fromOffset(12, 12),
			Position = UDim2.fromOffset(17, 8),
			BackgroundColor3 = th.Accent,
			BorderSizePixel = 0,
			_noTheme = true,
		}, swatch)
		round(dot, 6)
		local strip = mk("Frame", {
			Size = UDim2.fromOffset(28, 7),
			Position = UDim2.fromOffset(9, 30),
			BackgroundColor3 = th.Panel,
			BorderSizePixel = 0,
			_noTheme = true,
		}, swatch)
		round(strip, 3)

		text(tile, name, 13, Enum.Font.GothamBold, C.Text, UDim2.fromOffset(64, 11), UDim2.new(1, -72, 0, 16))
		local sub = text(tile, th.desc, 10, Enum.Font.Gotham, C.Dim, UDim2.fromOffset(64, 31), UDim2.new(1, -72, 0, 14))
		themed[sub] = nil

		tile.MouseEnter:Connect(function()
			tw(tile, { BackgroundColor3 = C.PanelHover })
		end)
		tile.MouseLeave:Connect(function()
			tw(tile, { BackgroundColor3 = C.Panel })
		end)
		tile.MouseButton1Click:Connect(function()
			chooseTheme(name)
		end)

		themeTiles[name] = { stroke = tileStroke, sub = sub, desc = th.desc }
	end


	local function refreshTiles()
		for name, t in pairs(themeTiles) do
			local active = (name == currentTheme)
			t.stroke.Color = active and C.Accent or C.Stroke
			t.stroke.Thickness = active and 2 or 1
			t.sub.Text = active and "Active" or t.desc
			t.sub.TextColor3 = active and C.Accent or C.Dim
		end
	end

	------------------------------------------------------------------
	-- top tab bar (Main / Settings), draggable
	------------------------------------------------------------------
	local BAR_W, BAR_H = 300, 44
	local TAB_ORDER = { "Main", "Settings" }
	local tabPages = { Main = mainPage, Settings = settingsPage }
	local currentTab = "Main"
	local tabs = {}
	local barMoved = 0
	local openToken = 0
	local winOpen = false -- main window starts hidden: only the top bar shows. Click a tab to open it.
	local fitScale = 1
	local ready = false

	local bar = mk("CanvasGroup", {
		Name = "TabBar",
		Size = UDim2.fromOffset(BAR_W, BAR_H),
		Position = UDim2.new(0.5, 0, 0, 14),
		AnchorPoint = Vector2.new(0.5, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		GroupTransparency = 1,
		Visible = false,
	}, gui)
	round(bar, 14)

	local function checkIcon(parent)
		local holder = mk("Frame", {
			Size = UDim2.fromOffset(24, 24),
			Position = UDim2.fromOffset(16, 10),
			BackgroundColor3 = C.Accent,
			BorderSizePixel = 0,
		}, parent)
		round(holder, 12)
		outline(holder, Color3.fromRGB(245, 245, 247), 2, 0)
		local function stroke(x, y, len, rot)
			local s = mk("Frame", {
				Size = UDim2.fromOffset(len, 3),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromOffset(x, y),
				Rotation = rot,
				BackgroundColor3 = Color3.fromRGB(8, 12, 10),
				BorderSizePixel = 0,
				ZIndex = 2,
			}, holder)
			round(s, 1)
		end
		stroke(8.8, 13.8, 6, 45)
		stroke(14, 12, 11, -45)
		return holder
	end

	local function gearIcon(parent)
		local holder = mk("Frame", {
			Size = UDim2.fromOffset(24, 24),
			Position = UDim2.fromOffset(16, 10),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, parent)
		local parts = {}
		local body = mk("Frame", {
			Size = UDim2.fromOffset(14, 14),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			BackgroundColor3 = Color3.fromRGB(1, 1, 1),
			BorderSizePixel = 0,
		}, holder)
		round(body, 7)
		parts[#parts + 1] = body
		for _, rot in ipairs({ 0, 45, 90, 135 }) do
			local tooth = mk("Frame", {
				Size = UDim2.fromOffset(22, 6),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Rotation = rot,
				BackgroundColor3 = Color3.fromRGB(1, 1, 1),
				BorderSizePixel = 0,
			}, holder)
			round(tooth, 1)
			parts[#parts + 1] = tooth
		end
		local hole = mk("Frame", {
			Size = UDim2.fromOffset(7, 7),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			BackgroundColor3 = Color3.fromRGB(1, 1, 1),
			BorderSizePixel = 0,
			ZIndex = 2,
		}, holder)
		round(hole, 4)
		return { root = holder, parts = parts, hole = hole }
	end

	local function gridIcon(parent)
		local holder = mk("Frame", {
			Size = UDim2.fromOffset(24, 24),
			Position = UDim2.fromOffset(16, 10),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, parent)
		local parts = {}
		for _, p in ipairs({ { 3, 3 }, { 13, 3 }, { 3, 13 }, { 13, 13 } }) do
			local sq = mk("Frame", {
				Size = UDim2.fromOffset(8, 8),
				Position = UDim2.fromOffset(p[1], p[2]),
				BackgroundColor3 = Color3.fromRGB(1, 1, 1),
				BorderSizePixel = 0,
			}, holder)
			round(sq, 2)
			parts[#parts + 1] = sq
		end
		return { root = holder, parts = parts }
	end

	for index, name in ipairs(TAB_ORDER) do
		local btn = mk("TextButton", {
			Name = name,
			Text = "",
			AutoButtonColor = false,
			BackgroundColor3 = Color3.fromRGB(1, 1, 1),
			BorderSizePixel = 0,
			Size = UDim2.new(0.5, 0, 1, 0),
			Position = UDim2.new((index - 1) * 0.5, 0, 0, 0),
		}, bar)
		local tab = { btn = btn }
		tab.iconOn = checkIcon(btn)
		tab.iconOff = (name == "Settings") and gearIcon(btn) or gridIcon(btn)
		tab.label = text(btn, name, 15, Enum.Font.GothamMedium, Color3.fromRGB(1, 1, 1), UDim2.fromOffset(52, 0), UDim2.new(1, -58, 1, 0))
		tabs[name] = tab
	end

	local barDivider = mk("Frame", {
		Size = UDim2.new(0, 1, 1, 0),
		Position = UDim2.new(0.5, 0, 0, 0),
		BackgroundColor3 = C.Stroke,
		BorderSizePixel = 0,
		ZIndex = 5,
	}, bar)

	local barBorder = mk("Frame", {
		Size = UDim2.new(1, -2, 1, -2),
		Position = UDim2.fromOffset(1, 1),
		BackgroundTransparency = 1,
		ZIndex = 10,
	}, bar)
	round(barBorder, 13)
	local barStroke = outline(barBorder, C.Stroke, 1, 0)
	local barEdge = mk("UIGradient", { Enabled = false, Rotation = 20 }, barStroke)

	-- moving light that travels along the tab bar's border, following the whole shape
	local barGlow = mk("Frame", {
		Name = "BorderGlow",
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		ZIndex = 11,
		_noTheme = true,
	}, bar)

	local GLOW_SEGS = 22 -- length of the comet trail (head + fading tail)
	local GLOW_STEP = 3 -- pixels between trail segments
	local GLOW_INSET = 3 -- distance of the path from the bar edge
	local GLOW_RADIUS = 11 -- corner radius of the path (matches the bar corners)
	local GLOW_SPEED = 170 -- pixels per second
	local glowSegs = {}
	for i = 1, GLOW_SEGS do
		local seg = mk("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = UDim2.fromOffset(GLOW_STEP + 2, 2),
			BackgroundColor3 = Color3.new(1, 1, 1),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ZIndex = 12,
			_noTheme = true,
		}, barGlow)
		glowSegs[i] = seg
	end
	local glowColor = Color3.new(1, 1, 1)

	-- position + direction at distance d along a rounded-rectangle path (clockwise)
	local function pathPoint(d, w, h, r)
		local sx, sy = w - 2 * r, h - 2 * r
		local arc = math.pi * r / 2
		local total = 2 * sx + 2 * sy + 4 * arc
		d = d % total
		if d < sx then
			return r + d, 0, 0
		end
		d = d - sx
		if d < arc then
			local a = d / r
			return w - r + math.sin(a) * r, r - math.cos(a) * r, a
		end
		d = d - arc
		if d < sy then
			return w, r + d, math.pi / 2
		end
		d = d - sy
		if d < arc then
			local a = d / r
			return w - r + math.cos(a) * r, h - r + math.sin(a) * r, math.pi / 2 + a
		end
		d = d - arc
		if d < sx then
			return w - r - d, h, math.pi
		end
		d = d - sx
		if d < arc then
			local a = d / r
			return r - math.sin(a) * r, h - r + math.cos(a) * r, math.pi + a
		end
		d = d - arc
		if d < sy then
			return 0, h - r - d, math.pi * 1.5
		end
		d = d - sy
		local a = d / r
		return r - math.cos(a) * r, r - math.sin(a) * r, math.pi * 1.5 + a
	end

	local glowDist = 0
	RunService.RenderStepped:Connect(function(dt)
		if not bar.Visible or bar.GroupTransparency >= 0.99 then
			return
		end
		local size = bar.AbsoluteSize
		local w = size.X - 2 * GLOW_INSET
		local h = size.Y - 2 * GLOW_INSET
		if w <= 0 or h <= 0 then
			return
		end
		local r = math.min(GLOW_RADIUS, w / 2, h / 2)
		glowDist = glowDist + GLOW_SPEED * dt
		for i, seg in ipairs(glowSegs) do
			local x, y, ang = pathPoint(glowDist - (i - 1) * GLOW_STEP, w, h, r)
			seg.Position = UDim2.fromOffset(x + GLOW_INSET, y + GLOW_INSET)
			seg.Rotation = math.deg(ang)
			seg.BackgroundColor3 = glowColor
			local f = (i - 1) / (GLOW_SEGS - 1)
			seg.BackgroundTransparency = 0.05 + 0.95 * f ^ 0.8
		end
	end)

	local function updateTabs(instant)
		local t = instant and 0 or 0.18
		local th = THEMES[currentTheme] or THEMES["Legacy"]
		for _, name in ipairs(TAB_ORDER) do
			local tab = tabs[name]
			local on = winOpen and (currentTab == name)
			tw(tab.btn, {
				BackgroundColor3 = on and C.BarOn or C.BarOff,
				BackgroundTransparency = (on and (th.BarOnAlpha or 0)) or (not on and (th.BarOffAlpha or 0)) or 0,
			}, t)
			tw(tab.label, { TextColor3 = on and C.Text or C.Dim }, t)
			tab.label.Font = on and Enum.Font.GothamBold or Enum.Font.GothamMedium
			tab.iconOn.Visible = on
			tab.iconOff.root.Visible = not on
			for _, part in ipairs(tab.iconOff.parts) do
				part.BackgroundColor3 = C.Dim
			end
			if tab.iconOff.hole then
				tab.iconOff.hole.BackgroundColor3 = C.BarOff
			end
		end
	end

	local function setWindowOpen(open)
		if winOpen == open then
			return
		end
		winOpen = open
		openToken = openToken + 1
		local token = openToken
		closeList()
		if open then
			win.Visible = true
			uiScale.Scale = fitScale * 0.94
			tw(win, { GroupTransparency = 0 }, 0.25)
			tw(uiScale, { Scale = fitScale }, 0.35, Enum.EasingStyle.Back)
		else
			tw(win, { GroupTransparency = 1 }, 0.2)
			tw(uiScale, { Scale = fitScale * 0.94 }, 0.2)
			task.delay(0.22, function()
				if openToken == token and not winOpen then
					win.Visible = false
				end
			end)
		end
		updateTabs(false)
	end

	local function showPage(name)
		currentTab = name
		closeList()
		for pageName, page in pairs(tabPages) do
			page.Visible = (pageName == name)
		end
	end

	-- Tab click rules:
	--   window hidden            -> show it (on the clicked tab)
	--   click the selected tab   -> hide the window
	--   click the other tab      -> switch page
	local function setTab(name)
		if not winOpen then
			if currentTab ~= name then
				showPage(name)
			end
			setWindowOpen(true)
			return
		end
		if currentTab == name then
			setWindowOpen(false)
			return
		end
		showPage(name)
		updateTabs(false)
	end

	for _, name in ipairs(TAB_ORDER) do
		tabs[name].btn.MouseButton1Click:Connect(function()
			if barMoved > 6 then
				return
			end
			setTab(name)
		end)
	end

	-- drag the bar anywhere (a tap still switches the tab, a drag only moves it)
	do
		local dragging, dragStart, startPos = false, nil, nil
		local function begin(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				barMoved = 0
				dragStart = input.Position
				startPos = bar.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end
		bar.InputBegan:Connect(begin)
		for _, name in ipairs(TAB_ORDER) do
			tabs[name].btn.InputBegan:Connect(begin)
		end
		UserInputService.InputChanged:Connect(function(input)
			if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				local delta = input.Position - dragStart
				barMoved = math.max(barMoved, delta.Magnitude)
				bar.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			end
		end)
	end

	------------------------------------------------------------------
	-- theme engine
	------------------------------------------------------------------
	local function applyTheme(name)
		local th = THEMES[name]
		if not th then
			name = "Legacy"
			th = THEMES["Legacy"]
		end
		currentTheme = name

		-- Every theme except Legacy tints the whole UI (cards, settings options, buttons,
		-- dividers, tab bar) toward its accent. Legacy stays plain black.
		local TINT = { Panel = 0.14, PanelHover = 0.18, List = 0.10, Pill = 0.10, Stroke = 0.35, BarOn = 0.12, BarOff = 0.06 }
		for _, role in ipairs(ROLES) do
			local col = th[role]
			if name ~= "Legacy" and TINT[role] then
				col = col:Lerp(th.Accent, TINT[role])
			end
			C[role] = col
		end

		for inst, props in pairs(themed) do
			for prop, role in pairs(props) do
				pcall(function()
					inst[prop] = C[role]
					if prop == "BackgroundColor3" and ALPHA_ROLE[role] then
						inst.BackgroundTransparency = roleAlpha(th, role)
					end
				end)
			end
		end

		bgGradient.Rotation = th.rot
		bgGradient.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, th.grad[1]),
			ColorSequenceKeypoint.new(0.5, th.grad[2]),
			ColorSequenceKeypoint.new(1, th.grad[3]),
		})
		bgFill.BackgroundTransparency = th.BgAlpha

		-- border light colour follows the selected theme
		glowColor = th.Accent:Lerp(Color3.new(1, 1, 1), 0.35)

		-- stat dots, toggle switches, farm button and status pill follow the accent
		local pal = statPalette(th.Accent)
		for _, sd in ipairs(statDots) do
			sd.dot.BackgroundColor3 = pal[sd.idx]
		end
		for _, refresh in ipairs(switchRefreshers) do
			pcall(refresh)
		end
		if fn4 then
			pcall(fn4, flag3)
		end

		-- glass sheen + rim light
		if th.sheen then
			local k = th.sheen
			sheenGrad.Transparency = NumberSequence.new({
				NumberSequenceKeypoint.new(0, 1 - 0.16 * k),
				NumberSequenceKeypoint.new(0.28, 1 - 0.05 * k),
				NumberSequenceKeypoint.new(0.5, 1),
				NumberSequenceKeypoint.new(1, 1 - 0.07 * k),
			})
			sheen.Visible = true
		else
			sheen.Visible = false
		end
		for _, e in ipairs({ { winStroke, winEdge }, { barStroke, barEdge } }) do
			if th.edge then
				e[2].Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, th.edge[1]),
					ColorSequenceKeypoint.new(0.5, th.edge[2]),
					ColorSequenceKeypoint.new(1, th.edge[3]),
				})
				e[2].Enabled = true
				e[1].Color = Color3.new(1, 1, 1)
			else
				e[2].Enabled = false
			end
		end

		updateTabs(true)
		refreshTiles()
	end

	chooseTheme = function(name)
		applyTheme(name) -- theme is NOT saved; it resets to Legacy on every execute
	end

	v.theme = nil -- ignore any theme stored by older versions
	applyTheme("Legacy")

	------------------------------------------------------------------
	-- responsive scale
	------------------------------------------------------------------
	local function refit()
		local cam = workspace.CurrentCamera
		if not cam then
			return
		end
		local vp = cam.ViewportSize
		local portrait = vp.Y > vp.X
		local fillX = portrait and 0.97 or 0.9
		local fillY = portrait and 0.94 or 0.9
		fitScale = math.min(vp.X * fillX / WIN_W, vp.Y * fillY / WIN_H, 1)
		if ready then
			uiScale.Scale = fitScale
		end
	end

	refit()
	workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
		refit()
		if workspace.CurrentCamera then
			workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(refit)
		end
	end)
	if workspace.CurrentCamera then
		workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(refit)
	end

	------------------------------------------------------------------
	-- intro splash
	------------------------------------------------------------------
	local splash = mk("CanvasGroup", {
		Name = "Splash",
		Size = UDim2.fromOffset(300, 196),
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = C.Bg,
		BorderSizePixel = 0,
		GroupTransparency = 1,
		ZIndex = 100,
	}, gui)
	round(splash, 20)
	local splashScale = mk("UIScale", { Scale = 0.94 }, splash)

	local splashBorder = mk("Frame", {
		Size = UDim2.new(1, -2, 1, -2),
		Position = UDim2.fromOffset(1, 1),
		BackgroundTransparency = 1,
		ZIndex = 50,
	}, splash)
	round(splashBorder, 19)
	outline(splashBorder, C.Stroke, 1, 0)

	local splashTile = mk("Frame", {
		Size = UDim2.fromOffset(84, 84),
		Position = UDim2.new(0.5, -42, 0, 16),
		BackgroundColor3 = Color3.fromRGB(240, 240, 245),
		BorderSizePixel = 0,
	}, splash)
	round(splashTile, 20)
	local splashTileImg = loadLogo(mk("ImageLabel", {
		Image = ETERNAL_LOGO,
		Size = UDim2.fromScale(1, 1),
		Position = UDim2.fromOffset(0, 0),
		BackgroundTransparency = 1,
		ScaleType = Enum.ScaleType.Crop,
		}, splashTile))
	round(splashTileImg, 20)

	text(splash, "Project Eternal", 22, Enum.Font.GothamBold, C.Text, UDim2.fromOffset(0, 110), UDim2.new(1, 0, 0, 28), Enum.TextXAlignment.Center)
	text(splash, "Loading", 11, Enum.Font.Gotham, C.Dim, UDim2.fromOffset(0, 136), UDim2.new(1, 0, 0, 14), Enum.TextXAlignment.Center)

	local barTrack = mk("Frame", {
		Size = UDim2.new(1, -80, 0, 3),
		Position = UDim2.fromOffset(40, 166),
		BackgroundColor3 = Color3.fromRGB(52, 52, 66),
		BorderSizePixel = 0,
	}, splash)
	round(barTrack, 2)
	local barFill = mk("Frame", {
		Size = UDim2.fromScale(0, 1),
		BackgroundColor3 = C.White,
		BorderSizePixel = 0,
	}, barTrack)
	round(barFill, 2)

	task.spawn(function()
		tw(splash, { GroupTransparency = 0 }, 0.35)
		tw(splashScale, { Scale = 1 }, 0.45, Enum.EasingStyle.Back)
		task.wait(0.3)
		tw(barFill, { Size = UDim2.fromScale(1, 1) }, 0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
		task.wait(1.05)
		tw(splash, { GroupTransparency = 1 }, 0.3)
		task.wait(0.3)
		splash:Destroy()

		ready = true
		refit()
		-- the main window stays hidden at start; only the top bar appears
		print("[Project Eternal] UI build v3: tabs toggle the window, starts hidden")
		bar.Visible = true
		tw(bar, { GroupTransparency = 0 }, 0.35)
	end)

end

-- [PART 5: DISABLE PLAYER LIST AND PRESERVE GLOBALS]
local function fn5()
	local CoreGui = game:GetService("CoreGui")
	local StarterGui = game:GetService("StarterGui")

	for _, v2 in ipairs({ "CaptureManager", "CaptureOverlay", "PlayerList" }) do
		pcall(function()
			local v3 = CoreGui:FindFirstChild(v2)

			if v3 then
				v3:Destroy()
			end
		end)
	end

	pcall(function()
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
	end)
end

task.spawn(function()
	fn5()

	while true do
		pcall(function()
			game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
			local playerList = game:GetService("CoreGui"):FindFirstChild("PlayerList")

			if playerList then
				playerList:Destroy()
			end
		end)

		task.wait(0.3)
	end
end)

fn5()

if not getgenv().TimeFarmed then
	getgenv().TimeFarmed = 0
end

local savedCarriedKills
savedCarriedKills = getgenv().SavedCarriedKills or 0
local savedEmotes
savedEmotes = getgenv().SavedEmotes or 0
local savedSessionStart
savedSessionStart = getgenv().SavedSessionStart or os.time()
local n3
n3 = 0
local n4
n4 = 0
local n5
n5 = 0
local n6
n6 = 0
local n7
n7 = 0
local flag4
flag4 = false
local cFrame
cFrame = nil
local v2
v2 = nil
local flag5
flag5 = false
local flag6
flag6 = false
local flag7
flag7 = false
-- Time the Ult started, so the watchdog can unlock itself if it gets stuck
local flag7Start = nil
local flag8, n8, TeleportService, Players, VirtualInputManager, localPlayer, currentCamera, fn6, fn7
local lastUltScale = nil
local lastUltTick = nil
-- Auto Ult: ALWAYS ON BY DEFAULT (only turned off when you press the "Auto Ult" button in the UI or set getgenv().AutoUlt = false)
if getgenv().AutoUlt == nil then
	getgenv().AutoUlt = true
end

-- [PART 6: COMBAT LOGIC, AUTO KEY PRESSES AND DODGING]
local function _deleteNew(obj)
    pcall(function()
        if obj and obj.Parent then obj:Destroy() end
    end)
end

do
	local flag9 = false
	flag8 = false
	n8 = 0
	TeleportService = game:GetService("TeleportService")
	Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	VirtualInputManager = game:GetService("VirtualInputManager")
	localPlayer = Players.LocalPlayer
	currentCamera = workspace.CurrentCamera
	local leaderstats

	if not localPlayer:FindFirstChild("leaderstats") or not localPlayer.leaderstats:FindFirstChild("Total Kills") then
		leaderstats = localPlayer
	else
		leaderstats = localPlayer.leaderstats
	end

	fn6 = function()
		return false
	end

	workspace.FallenPartsDestroyHeight = (0/0)

	workspace:GetPropertyChangedSignal("FallenPartsDestroyHeight"):Connect(function()
		local fallenPartsDestroyHeight = workspace.FallenPartsDestroyHeight

		if fallenPartsDestroyHeight == fallenPartsDestroyHeight then
			workspace.FallenPartsDestroyHeight = (0/0)
		end
	end)

	local part = Instance.new("Part", workspace)
	part.CFrame = CFrame.new(0, -10008, 0)
	part.Anchored = true
	part.Size = Vector3.new(2048, 10, 2048)
	part.Transparency = 0.5
	part.CanCollide = true
	part.Name = game:GetService("HttpService"):GenerateGUID()
	local health = 100
	local connection = nil
	local connection2 = nil

	local function fn8(arg)
		if not arg then
			return
		end
		local humanoid = arg:FindFirstChildOfClass("Humanoid") or arg:WaitForChild("Humanoid", 3)
		local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart") or arg:WaitForChild("HumanoidRootPart", 3)
		if not humanoid or not humanoidRootPart then
			return
		end
		health = humanoid.Health

		if connection then
			connection:Disconnect()
			connection = nil
		end

		if connection2 then
			connection2:Disconnect()
			connection2 = nil
		end

		connection2 = RunService.RenderStepped:Connect(function()
			local humanoidRootPart2 = arg:FindFirstChild("HumanoidRootPart")

			if humanoidRootPart2 then
				health = humanoid.Health
				part.CFrame = CFrame.new(humanoidRootPart2.Position.X, -10008, humanoidRootPart2.Position.Z)
			end
		end)

		connection = humanoid.HealthChanged:Connect(function(health2)
			local humanoidRootPart2 = arg:FindFirstChild("HumanoidRootPart")

			if health2 <= 0 and humanoidRootPart2 and humanoidRootPart2.CFrame.Y <= 0 then
				humanoid.Health = health
			end
		end)
	end

	fn8(localPlayer.Character)

	localPlayer.CharacterAdded:Connect(function(character)
		task.wait(0.1)
		fn8(character)
	end)

	local tbl4 = {}
	local obj = setmetatable({}, { __mode = "k" })

	local function createFolder(parent)
		if not parent then
			return nil
		end
		local movingExclusion = parent:FindFirstChild("MovingExclusion")
		if movingExclusion then
			return movingExclusion
		end
		local folder = Instance.new("Folder")
		folder.Name = "MovingExclusion"

		pcall(function()
			folder:SetAttribute("ProjectEternalOwned", true)
		end)

		folder.Parent = parent
		obj[folder] = true
		return folder
	end

	local function fn9(arg)
		if not arg then
			return
		end
		createFolder(arg)

		local connection3 = arg.ChildRemoved:Connect(function(child)
			if child.Name == "MovingExclusion" then
				task.defer(createFolder, arg)
			end
		end)

		table.insert(tbl4, connection3)
	end

	fn9(localPlayer.Character)

	table.insert(tbl4, localPlayer.CharacterAdded:Connect(function(character)
		task.wait(0.1)
		fn9(character)
	end))

	local flag10 = false
	local v3 = nil
	local v4 = nil
	local v5 = nil
	local tbl5 = {}
	local model = Instance.new("Model", workspace)
	local humanoid = Instance.new("Humanoid", model)
	local part2 = Instance.new("Part", model)
	getgenv().InvisHumanoid = humanoid
	getgenv().InvisPart30 = part2
	local flag11 = false

	local function fn10()
		if not flag11 then
			return
		end
		flag11 = false
		getgenv().InvisActive = false
		flag10 = false

		if v3 then
			pcall(function()
				if v3.IsPlaying then
					v3:Stop()
				end
			end)

			v3 = nil
		end

		v4 = nil
		local character = localPlayer.Character

		if character then
			local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

			if humanoidRootPart and v5 then
				pcall(function()
					humanoidRootPart.CFrame = v5
				end)
			end

			v5 = nil
			local humanoid2 = character:FindFirstChildOfClass("Humanoid")

			if humanoid2 then
				pcall(function()
					workspace.CurrentCamera.CameraSubject = humanoid2
				end)
			end

			pcall(function()
				character:SetAttribute("NoHeadLerp", false)
			end)

			for _, v6 in pairs(tbl5) do
				pcall(function()
					v6:Disconnect()
				end)
			end

			tbl5 = {}

			for _, descendant in pairs(character:GetDescendants()) do
				if descendant:IsA("BasePart") and descendant.Name ~= "HumanoidRootPart" then
					descendant.LocalTransparencyModifier = 0
				end
			end
		end
	end

	local function fn11()
		if v3 then
			pcall(function()
				if v3.IsPlaying then
					v3:Stop()
				end
			end)

			v3 = nil
		end

		v4 = nil
		v5 = nil
		flag10 = false
	end

	local function fn12(arg)
		if not arg:IsA("BasePart") then
			return
		end

		if arg.Name == "HumanoidRootPart" then
			return
		end

		if arg.Transparency == 1 then
			return
		end

		if arg.Name:lower():find("hitbox") then
			return
		end
		arg.LocalTransparencyModifier = 0.5

		local connection3 = arg:GetPropertyChangedSignal("LocalTransparencyModifier"):Connect(function()
			if not flag11 then
				return
			end

			if arg.LocalTransparencyModifier ~= 0.5 then
				arg.LocalTransparencyModifier = 0.5
			end
		end)

		table.insert(tbl5, connection3)
	end

	local function fn13(arg)
		for _, descendant in pairs(arg:GetDescendants()) do
			fn12(descendant)
		end

		local connection3 = arg.DescendantAdded:Connect(function(descendant)
			if flag11 then
				fn12(descendant)
			end
		end)

		table.insert(tbl5, connection3)
	end

	local function fn14()
		if flag11 then
			fn10()
			return
		end
		local character = localPlayer.Character
		if not character then
			return
		end
		local humanoid2 = character:FindFirstChildOfClass("Humanoid")
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		if not humanoid2 or not humanoidRootPart then
			return
		end
		flag11 = true
		getgenv().InvisActive = true
		flag10 = false
		local character2 = localPlayer.Character

		if character2 then
			fn13(character2)
		end
	end

	RunService.Heartbeat:Connect(function()
		if not flag3 then
			return
		end

		if flag6 or flag8 then
			getgenv().desync = nil
		end

		local flag12 = getgenv().desync ~= nil
		if not flag11 and not flag12 then
			return
		end

		if flag10 then
			return
		end
		flag10 = true
		local character = localPlayer.Character
		local humanoid2 = character and character:FindFirstChildOfClass("Humanoid")
		local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
		if not character or not humanoid2 or not humanoidRootPart then
			flag10 = false
			return
		end

		if humanoid2.Health <= 0 then
			if flag11 then
				task.spawn(fn11)
			end

			flag10 = false
			return
		end

		local cFrame2 = humanoidRootPart.CFrame
		local velocity = humanoidRootPart.Velocity
		v5 = cFrame2
		local currentCamera2 = workspace.CurrentCamera
		local flag13 = flag12 and not localPlayer.Character:FindFirstChild("AbsoluteImmortal")
		local cFrame3 = nil

		if flag13 then
			cFrame3 = getgenv().desync.CFrame
			cFrame3 = cFrame3 or nil
		end

		if cFrame3 then
			local flag14

			if currentCamera2 then
				flag14 = not (flag11 and not flag12)
			else
				flag14 = currentCamera2
			end

			if flag14 then
				character:SetAttribute("NoHeadLerp", true)
				currentCamera2.CameraSubject = humanoid
			end

			humanoidRootPart.CFrame = cFrame3
		end

		local v6 = nil

		if flag11 then
			if v4 ~= humanoid2 then
				if v3 then
					pcall(function()
						if v3.IsPlaying then
							v3:Stop()
						end

						v3:Destroy()
					end)

					v3 = nil
				end

				v4 = humanoid2
			end

			local animator = humanoid2:FindFirstChildOfClass("Animator")

			if animator then
				if not v3 or v3.Parent == nil then
					local animation = Instance.new("Animation")
					animation.AnimationId = "rbxassetid://71181015443030"
					v3 = animator:LoadAnimation(animation)
					v3.Priority = Enum.AnimationPriority.Action4
					v3:Play()
					v3:AdjustSpeed(0)
					v3:AdjustWeight(2e9)
				end

				v6 = v3
				v6.TimePosition = 13.45
			end
		end

		RunService.RenderStepped:Wait()
		humanoid.CameraOffset = humanoid2.CameraOffset

		if v6 and v6.IsPlaying then
			pcall(function()
				v6:Stop()
			end)
		end

		if cFrame3 then
			if flag4 and cFrame then
				humanoidRootPart.CFrame = cFrame
			else
				local flag14 = currentCamera2 and UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter and not flag12

				if flag14 then
					flag14 = not (flag11 and not flag12)
				end

				if flag14 then
					local lookVector = currentCamera2.CFrame.LookVector
					local vector = Vector3.new(lookVector.X, 0, lookVector.Z)

					if vector.Magnitude > 0.001 then
						humanoidRootPart.CFrame = CFrame.new(cFrame2.Position, cFrame2.Position + vector)
					else
						humanoidRootPart.CFrame = cFrame2
					end
				else
					humanoidRootPart.CFrame = cFrame2
				end
			end
		end

		humanoidRootPart.Velocity = velocity
		flag10 = false
	end)

	fn14()

	task.spawn(function()
		local function fn15(arg)
			while true do
				task.wait()
				if not (localPlayer.Character == arg and arg:FindFirstChild("HumanoidRootPart") and arg:FindFirstChildOfClass("Humanoid")) then
					continue
				end
				break
			end

			if localPlayer.Character ~= arg then
				return
			end
			local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")

			task.spawn(function()
				while task.wait() and (not localPlayer.Character or localPlayer.Character == arg) do
					if getgenv().desync and not arg:FindFirstChild("AbsoluteImmortal") then
						local tbl6 = {}

						local ok, result = pcall(function()
							return ReplicatedStorage.Resources.NinjaUlt.Afterimage_Despawn:Clone()
						end)

						local ok2, result2 = pcall(function()
							return ReplicatedStorage.Resources.VanishingKick.tpthing:Clone()
						end)

						if ok and result then
							result.Parent = humanoidRootPart
							tbl6[1] = result

							for _, child in pairs(result:GetChildren()) do
								if child:IsA("ParticleEmitter") then
									child.Enabled = true
									child.Rate = 100
								end
							end
						end

						if ok2 and result2 then
							result2.Parent = humanoidRootPart
							tbl6[2] = result2
							result2.Enabled = true
							result2.Rate = 100
						end

						while true do
							if tbl6[1] and tbl6[1].Parent then
								tbl6[1].CFrame = humanoidRootPart.CFrame
							end

							RunService.RenderStepped:Wait()
							if not (not getgenv().desync or arg:FindFirstChild("AbsoluteImmortal")) then
								continue
							end
							break
						end

						for _, v6 in pairs(tbl6) do
							pcall(function()
								v6:Destroy()
							end)
						end
					end
				end
			end)

			task.spawn(function()
				for _, descendant in pairs(arg:GetDescendants()) do
					if descendant:IsA("BasePart") and descendant ~= humanoidRootPart and descendant.Transparency ~= 1 and not descendant.Name:lower():find("hitbox") then
						task.spawn(function()
							while task.wait() and (not localPlayer.Character or localPlayer.Character == arg) do
								if descendant and (flag11 or getgenv().desync and not arg:FindFirstChild("AbsoluteImmortal")) then
									descendant.Transparency = 0.5

									while true do
										RunService.RenderStepped:Wait()
										local flag12 = not flag11
										local absoluteImmortal

										if flag12 then
											absoluteImmortal = not getgenv().desync or arg:FindFirstChild("AbsoluteImmortal")
										else
											absoluteImmortal = flag12
										end

										absoluteImmortal = absoluteImmortal or localPlayer.Character and localPlayer.Character ~= arg
										if not absoluteImmortal then
											continue
										end
										break
									end

									descendant.Transparency = 0
								end
							end
						end)
					end
				end
			end)
		end

		if localPlayer.Character then
			task.spawn(fn15, localPlayer.Character)
		end

		localPlayer.CharacterAdded:Connect(function(character)
			task.spawn(fn15, character)
		end)
	end)

	local Lighting = game:GetService("Lighting")
	local Workspace_ = game:GetService("Workspace")
	local terrain = Workspace:FindFirstChildOfClass("Terrain")

	local function fn15(arg, arg2)
		pcall(function()
			arg:Connect(arg2)
		end)
	end

	local tbl6 = {
		function()
			local color = Color3.fromRGB(0, 85, 190)

			local function fn16(arg)
				if arg:IsA("Trail") then
					arg.Color = ColorSequence.new(color)
					arg.Texture = ""
					arg.LightEmission = 0.8
				elseif arg:IsA("ParticleEmitter") then
					arg.Color = ColorSequence.new(color)
					arg.LightEmission = 0.75
				end
			end

			local function fn17(arg)
				for _, descendant in ipairs(arg:GetDescendants()) do
					if descendant:IsA("Trail") or descendant:IsA("ParticleEmitter") then
						fn16(descendant)
					end
				end

				fn15(arg.DescendantAdded, function(arg2)
					if arg2:IsA("Trail") or arg2:IsA("ParticleEmitter") then
						fn16(arg2)
					end
				end)
			end

			if localPlayer.Character then
				fn17(localPlayer.Character)
			end

			fn15(localPlayer.CharacterAdded, fn17)
		end,
		function()
			local tbl6 = {
				Bk = 92959017845968,
				Ft = 129304841254693,
				Lf = 129249062260004,
				Rt = 117319232583147,
				Up = 121193772599100,
				Dn = 115022734343595,
			}

			for _, child in ipairs(Lighting:GetChildren()) do
				if child:IsA("Sky") then
					child:Destroy()
				end
			end

			local sky = Instance.new("Sky")

			for k, v6 in pairs(tbl6) do
				sky["Skybox" .. k] = "rbxassetid://" .. v6
			end

			sky.Parent = Lighting
		end,
		function()
			Lighting.ClockTime = 12
			Lighting.GlobalShadows = false
			Lighting.Brightness = 0.8
			Lighting.ExposureCompensation = -0.2
			local v6 = Lighting
			Lighting.FogStart = 9e9
			v6.FogEnd = 9e9

			for _, child in ipairs(Lighting:GetChildren()) do
				if (child:IsA("PostEffect") or child:IsA("SunRaysEffect")) then
					child.Enabled = false
				end
			end
		end,
		function()
			fn15(Workspace_.DescendantAdded, function(arg)
				if arg:IsA("Smoke") then
					arg:Destroy()
				elseif arg:IsA("ParticleEmitter") then
					local model2 = arg:FindFirstAncestorOfClass("Model")

					if not (model2 and model2:FindFirstChild("Class") and model2.Class.Value == "Hero Hunter") then
						arg:Destroy()
					end
				end
			end)
		end,
		function()
			if not terrain then
				return
			end

			for _, child in ipairs(terrain:GetChildren()) do
				if child:IsA("Clouds") then
					child.Enabled = false
				end
			end

			fn15(terrain.ChildAdded, function(arg)
				if arg:IsA("Clouds") then
					arg.Enabled = false
				end
			end)
		end,
		function()
			local function fn16()
				local sky = Lighting:FindFirstChildOfClass("Sky")

				if sky then
					sky.SunAngularSize = 0
					sky.SunTextureId = ""
					sky.MoonAngularSize = 0
					sky.MoonTextureId = ""
				end
			end

			fn16()
			local atmosphere = Lighting:FindFirstChildOfClass("Atmosphere")

			if atmosphere then
				atmosphere.Density = 0
				atmosphere.Haze = 0
				atmosphere.Glare = 0
			end

			fn15(Lighting.ChildAdded, function(arg)
				if arg:IsA("Sky") then
					task.wait()
					fn16()
				elseif arg:IsA("Atmosphere") then
					arg.Density = 0
					arg.Haze = 0
					arg.Glare = 0
				end
			end)
		end,
	}

	task.spawn(function()
		local tbl7 = { 1, 2, 3, 4, 5, 6 }

		while #tbl7 > 0 do
			local n9 = math.random(#tbl7)
			pcall(tbl6[tbl7[n9]])
			table.remove(tbl7, n9)
		end
	end)

	pcall(function()
		local level01 = Enum.QualityLevel.Level01
		settings().Rendering.QualityLevel = level01
	end)

	local flag12 = false

	local function fn16(arg)
		if typeof(arg) == "Instance" then
			if arg:IsA("Player") then
				return arg.Character
			end

			if arg:IsA("Model") then
				return arg
			end
		end

		return nil
	end

	local function fn17(arg)
		return arg and arg:FindFirstChild("HumanoidRootPart") or nil
	end

	local function fn18(arg)
		return arg and arg:FindFirstChildOfClass("Humanoid") or nil
	end

	local function fn19()
		local players = Players:GetPlayers()
		local v6 = table.find(players, localPlayer)

		if v6 then
			table.remove(players, v6)
		end

		return players
	end

	local function fn20(arg, arg2)
		if not arg then
			return false
		end

		for _, v6 in pairs(arg:GetPlayingAnimationTracks()) do
			if v6.Animation.AnimationId:match(arg2) then
				return true
			end
		end

		return false
	end

	-- Check whether a player is a valid target to attack
	local function isTargetValid(player)
		if not player or player == localPlayer then
			return false
		end
		local character = player.Character
		if not character then
			return false
		end
		local humanoid2 = character:FindFirstChildOfClass("Humanoid")
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		if not humanoid2 or not humanoidRootPart then
			return false
		end
		if humanoid2.Health <= 0 then
			return false
		end
		local torso = character:FindFirstChild("Torso")
		if not torso or torso.Transparency == 1 then
			return false
		end
		if fn20(humanoid2, "15128849047") then
			return false
		end
		if character:FindFirstChildWhichIsA("ForceField") then
			return false
		end
		if (character:GetAttribute("Ulted") and (character:GetAttribute("Character") == "Batter" or character:GetAttribute("Character") == "Bald")) or character:FindFirstChild("Counter") then
			return false
		end
		local position = humanoidRootPart.Position
		if not (position.X >= -500 and position.X <= 800 and position.Z >= -600 and position.Z <= 700) then
			return false
		end
		return true
	end

	-- [CHANGED] Target selection: ALWAYS PRIORITIZE THE LOWEST-HEALTH PLAYER in the server.
	-- Keep the current target until it dies/becomes invalid, UNLESS someone else has
	-- clearly less health (difference > 20 HP), then switch to them (avoids constant back-and-forth).
	fn7 = function()
		local bestPlayer = nil
		local bestHealth = math.huge

		for _, player in ipairs(Players:GetPlayers()) do
			if isTargetValid(player) then
				local humanoid2 = player.Character:FindFirstChildOfClass("Humanoid")
				if humanoid2 and humanoid2.Health < bestHealth then
					bestHealth = humanoid2.Health
					bestPlayer = player
				end
			end
		end

		if v2 and isTargetValid(v2) then
			local currentHumanoid = v2.Character:FindFirstChildOfClass("Humanoid")
			if currentHumanoid and bestPlayer and bestPlayer ~= v2 and bestHealth + 20 < currentHumanoid.Health then
				return bestPlayer
			end
			return v2
		end

		return bestPlayer
	end

	local function fn21(arg)
		local humanoid2 = arg:WaitForChild("Humanoid")

		arg.DescendantAdded:Connect(function(descendant)
			if descendant.Name == "Ragdoll" or descendant.Name == "RagdollSim" then
				if not flag12 and humanoid2.Health > 0 and not arg:FindFirstChild("ExtraHitbox") then
					task.spawn(function()
						while true do
							flag12 = true
							getgenv().desync = { CFrame = CFrame.new(9e9, 9e9, 9e9) }
							task.wait()
							if not (descendant.Parent ~= arg or humanoid2.Health <= 0) then
								continue
							end
							break
						end

						flag12 = false
						getgenv().desync = nil
					end)
				end
			end
		end)

		task.spawn(function()
			local playerGui = localPlayer:WaitForChild("PlayerGui")
			if not playerGui then
				return
			end
			local hotbar = playerGui:WaitForChild("Hotbar")
			if not hotbar then
				return
			end
			local backpack = hotbar:WaitForChild("Backpack")
			if not backpack then
				return
			end
			local hotbar2 = backpack:WaitForChild("Hotbar")
			if not hotbar2 then
				return
			end
			local n22 = hotbar2:WaitForChild("2")
			if not n22 then
				return
			end
			local base = n22:WaitForChild("Base")
			if not base then
				return
			end

			base.ChildAdded:Connect(function(child)
				if child.Name == "Cooldown" and localPlayer.Character:GetAttribute("Ulted") then
					task.spawn(function()
						flag9 = true
						task.wait(0.05)
						flag9 = false
					end)
				end
			end)
		end)

		local tbl7 = { ["18464351556"] = true, ["18464372850"] = true, ["136370737633649"] = true }

		humanoid2.AnimationPlayed:Connect(function(arg2)
			local animationId = arg2.Animation.AnimationId
			if tbl7[animationId:match("%d+")] then
				v2 = fn7()
				return
			end

			local function fn22(arg3)
				if not arg3 or not arg3:IsA("Player") then
					return false
				end
				local attribute = fn16(arg3)
				attribute = attribute and attribute:GetAttribute("Character")
				if type(attribute) ~= "string" then
					return false
				end
				local str = attribute:lower()
				return str == "hunter" or str == "blade" or str:find("zombie", 1, true) ~= nil
			end

			local function fn23(arg3)
				local v6 = nil

				return (RunService.Heartbeat:Connect(function()
					if not arg3() then
						v6:Disconnect()
						return
					end
					local v7 = fn17(fn16(localPlayer))

					if v7 then
						v7.AssemblyLinearVelocity = Vector3.new()
						v7.AssemblyAngularVelocity = Vector3.new()
					end
				end))
			end

			local connection3 = nil
			local connection4 = nil
			local v6 = nil
			local v7 = nil
			local flag13 = false

			local function fn24()
				if connection3 then
					connection3:Disconnect()
					connection3 = nil
				end

				if connection4 then
					connection4:Disconnect()
					connection4 = nil
				end

				if sethiddenproperty then
					if v6 and v6.Parent then
						pcall(function()
							sethiddenproperty(v6, "PhysicsRepRootPart", nil)
						end)
					end

					if v7 and v7.Parent then
						pcall(function()
							sethiddenproperty(v7, "PhysicsRepRootPart", nil)
						end)
					end
				end

				if v6 and v6.Parent then
					v6.CFrame = CFrame.new(v6.Position)
					v6.AssemblyLinearVelocity = Vector3.zero
					v6.AssemblyAngularVelocity = Vector3.zero

					pcall(function()
						v6.Velocity = Vector3.zero
					end)

					pcall(function()
						v6.RotVelocity = Vector3.zero
					end)

					local humanoid3 = v6.Parent:FindFirstChildOfClass("Humanoid")

					if humanoid3 then
						pcall(function()
							humanoid3.AutoRotate = true
						end)
					end
				end

				v6 = nil
				v7 = nil
			end

			local function fn25()
				fn24()
			end

			local function fn26(arg3, arg4)
				if flag13 then
					return
				end

				if connection3 then
					connection3:Disconnect()
					connection3 = nil
				end

				if v6 and v6.Parent then
					v6.AssemblyLinearVelocity = Vector3.zero
					v6.AssemblyAngularVelocity = Vector3.zero

					pcall(function()
						v6.Velocity = Vector3.zero
					end)

					pcall(function()
						v6.RotVelocity = Vector3.zero
					end)
				end

				if not arg3 or not arg4 then
					return
				end
				v6 = arg3
				v7 = arg4

				if connection4 then
					connection4:Disconnect()
					connection4 = nil
				end

				local humanoid3 = arg3.Parent and arg3.Parent:FindFirstChildOfClass("Humanoid")

				if humanoid3 then
					connection4 = RunService.RenderStepped:Connect(function()
						if humanoid3 and humanoid3.Parent then
							pcall(function()
								humanoid3.AutoRotate = false
							end)
						end
					end)
				end

				arg3.CFrame = CFrame.new(0, 0, 5)
				arg3.AssemblyLinearVelocity = Vector3.zero
				arg3.AssemblyAngularVelocity = Vector3.zero

				if sethiddenproperty then
					pcall(function()
						sethiddenproperty(arg3, "PhysicsRepRootPart", arg3)
					end)

					pcall(function()
						sethiddenproperty(arg3, "PhysicsRepRootPart", arg4)
					end)
				end

				local v8 = nil

				connection3 = RunService.Heartbeat:Connect(function()
					if not arg3 or not arg3.Parent or not arg4 or not arg4.Parent then
						v8:Disconnect()

						if connection3 == v8 then
							connection3 = nil
						end

						if sethiddenproperty then
							if arg3 and arg3.Parent then
								pcall(function()
									sethiddenproperty(arg3, "PhysicsRepRootPart", nil)
								end)
							end

							if arg4 and arg4.Parent then
								pcall(function()
									sethiddenproperty(arg4, "PhysicsRepRootPart", nil)
								end)
							end
						end

						if arg3 and arg3.Parent then
							arg3.AssemblyLinearVelocity = Vector3.zero
							arg3.AssemblyAngularVelocity = Vector3.zero

							pcall(function()
								arg3.Velocity = Vector3.zero
							end)

							pcall(function()
								arg3.RotVelocity = Vector3.zero
							end)
						end

						return
					end

					arg3.CFrame = CFrame.new(0, 0, 5)
					arg3.AssemblyLinearVelocity = Vector3.zero
					arg3.AssemblyAngularVelocity = Vector3.zero

					if sethiddenproperty then
						pcall(function()
							sethiddenproperty(arg3, "PhysicsRepRootPart", arg4)
						end)
					end
				end)
			end

			if animationId:match("18896229321") then
				task.wait(0.01)
				if not flag9 then
					return
				end
				flag13 = false
				getgenv().desync = nil
				flag8 = true

				task.spawn(function()
					local v8 = fn16(localPlayer)
					if not v8 then
						return
					end

					if v8:GetAttribute("Character") ~= "Purple" then
						return
					end
					local n9 = tick() + 3
					local flag14 = true
					local now = tick()
					local n10 = 70
					local n11 = 30

					local function fn27(arg3)
						return arg3:match("%d+")
					end

					local function fn28()
						for _, v9 in ipairs(localPlayer.Character.Humanoid.Animator:GetPlayingAnimationTracks()) do
							if fn27(v9.Animation.AnimationId) == "18896229321" then
								return v9
							end
						end

						return nil
					end

					local v9 = fn28()

					while not v9 do
						task.wait()
						v9 = fn28()
					end

					task.spawn(function()
						while true do
							task.wait()
							v9 = fn28()
							local flag15 = not v9 or v9.TimePosition >= n10 / n11

							if not flag15 then
								local n12 = now + 2.2
								flag15 = tick() >= n12
							end

							if not flag15 then
								continue
							end
							break
						end

						flag13 = true
						if not fn16(localPlayer) then
							return
						end

						pcall(function()
							localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(150, 441, 32)
						end)

pcall(function()
    -- Stand at position (0, 15, -180) and look straight at the map center (0, 0, 0)
    localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(0, 15, -180), Vector3.new(0, 0, 0))
end)

						task.wait(1.5)
						flag8 = false
					end)

					fn23(function()
						return flag14
					end)

					local tbl8 = {}
					local v10 = nil
					local now2 = tick()
					local v11 = fn16(localPlayer)

					if v11 and fn17(v11) then
					end

					local function fn29(arg3)
						if not arg3 then
							return nil
						end

						if arg3:IsA("Player") then
							return fn16(arg3)
						end
						return nil
					end

					local function fn30(arg3)
						return fn18(fn29(arg3))
					end

					local function fn31(arg3)
						return fn17(fn29(arg3))
					end

					local function fn32(arg3)
						if not arg3 then
							return false
						end

						if arg3:FindFirstChild("ForceField") then
							return true
						end

						if arg3:FindFirstChild("AbsoluteImmortal") then
							return true
						end

						if arg3:FindFirstChild("BeingGrabbed") then
							return true
						end

						if arg3:FindFirstChild("HunterCounter") then
							return true
						end

						if arg3:FindFirstChild("AtomicCounter") then
							return true
						end

						if arg3:FindFirstChild("forcefield") then
							return true
						end
						return false
					end

					local function fn33(arg3)
						local v12 = fn29(arg3)
						local v13 = v12 and fn18(v12)
						local v14 = v12 and fn17(v12)
						if not v12 or not v13 or not v14 then
							return true
						end

						if v13.Health <= 0 then
							return true
						end

						if arg3:IsA("Player") then
							if fn32(v12) then
								return true
							end

							if v12:FindFirstChild("Counter") then
								return true
							end

							if fn20(v13, "15128849047") then
								return true
							end

							if v12:GetAttribute("Ulted") and v12:GetAttribute("Character") == "Batter" then
								return true
							end
						end

						local position = v12.HumanoidRootPart.Position
						if not (position.X >= -500 and position.X <= 800 and position.Z >= -600 and position.Z <= 700) then
							return true
						end
						return false
					end

					local function fn34(arg3)
						local v12 = fn30(arg3)
						local v13

						if v12 then
							v13 = fn20(v12, "18896222853") or fn20(v12, "137434257516014")
						else
							v13 = v12
						end

						return v13
					end

					local function fn35(arg3)
						if not arg3 or not arg3:IsA("Player") then
							return false
						end
						local v12 = fn16(arg3)
						local v13 = v12 and fn18(v12)
						if not v12 or not v13 then
							return false
						end

						if v13.Health <= 0 then
							return false
						end

						if fn20(v13, "15128849047") then
							return false
						end
						return fn32(v12)
					end

					local function fn36()
						local weakestDummy = workspace.Live:FindFirstChild("Weakest Dummy")
						if not weakestDummy then
							return nil
						end
						local v12 = fn18(weakestDummy)
						if not v12 or v12.Health <= 0 then
							return nil
						end
						return weakestDummy
					end

					local function fn37(arg3)
						local tbl9 = {}
						local tbl10 = {}

						for _, v12 in pairs(fn19()) do
							if not (v12 == arg3 or tbl8[v12]) then
								local v13 = fn31(v12)

								if not fn33(v12) and not fn34(v12) and v13 then
									if fn22(v12) then
										table.insert(tbl9, v12)
									else
										table.insert(tbl10, v12)
									end
								end
							end
						end

						if #tbl9 > 0 then
							return tbl9[math.random(1, #tbl9)]
						end

						if #tbl10 > 0 then
							return tbl10[math.random(1, #tbl10)]
						end
						local v12 = fn36()
						if v12 and v12 ~= arg3 and not tbl8[v12] then
							return v12
						end
						return nil
					end

					local function fn38()
						local v12 = fn16(localPlayer)
						local v13 = v12 and fn18(v12)

						if v13 then
							pcall(function()
								v13.AutoRotate = true
							end)
						end
					end

					local function fn39()
						for _, v12 in pairs(fn19()) do
							if tbl8[v12] then
								continue
							end

							if fn35(v12) then
								return true
							end
						end

						return false
					end

					local flag15 = false

					local function fn40()
						if flag15 then
							return
						end
						flag15 = true
						fn24()
						fn38()

						if _ffWatchConn then
							pcall(function()
								_ffWatchConn:Disconnect()
							end)
						end

						if _dummyRespawnConn then
							pcall(function()
								_dummyRespawnConn:Disconnect()
							end)
						end

						if _currentTargetAnimConn then
							pcall(function()
								_currentTargetAnimConn:Disconnect()
							end)

							_currentTargetAnimConn = nil
						end

						flag14 = false
						fn25()
					end

					local connection5 = nil
					local fn41 = nil

					fn41 = function(arg3)
						if connection5 then
							pcall(function()
								connection5:Disconnect()
							end)

							connection5 = nil
						end

						fn24()
						v10 = arg3
						now2 = tick()

						if arg3 then
							local v12 = fn16(localPlayer)
							v12 = v12 and fn17(v12)
							local v13 = fn31(arg3)

							if v12 and v13 then
								fn26(v12, v13)
								local v14 = fn30(arg3)

								if v14 then
									local animator = v14:FindFirstChildOfClass("Animator")

									connection5 = (animator and animator.AnimationPlayed or v14.AnimationPlayed):Connect(function(arg4)
										local animationId2 = arg4.Animation.AnimationId

										if animationId2:match("18896222853") or animationId2:match("137434257516014") then
											if not flag14 then
												return
											end
											local v15 = v10
											if not v15 then
												return
											end
											tbl8[v15] = true
											fn24()
											local v16 = fn37(v15)

											if v16 then
												fn41(v16)

												if fn37(v16) == nil and not fn39() then
													task.wait(0.1)
													tbl8[v16] = true
													_everybodyDone = true
													fn40()
												end
											elseif fn39() then
												fn24()
												v10 = nil
											else
												_everybodyDone = true
												fn40()
											end
										end
									end)
								end
							end
						end
					end

					workspace.Live.ChildAdded:Connect(function(child)
						if child.Name == "Weakest Dummy" then
							tbl8[child] = nil
						end
					end)

					RunService.RenderStepped:Connect(function()
						for _, v12 in pairs(fn19()) do
							if tbl8[v12] then
								local v13 = fn16(v12)
								local v14 = v13 and fn18(v13)

								if v13 and v14 and v14.Health > 0 and not fn32(v13) then
									tbl8[v12] = nil

									if not v10 then
										fn41(v12)
									end
								end
							end
						end
					end)

					local v12 = fn37(nil)

					if v12 then
						fn41(v12)

						if fn37(v12) == nil then
							task.wait(0.1)
							tbl8[v12] = true
							fn40()
							return
						end
					end

					while true do
						if arg2.IsPlaying and tick() < n9 then
							if flag13 then
								fn40()
								break
							else
								RunService.Heartbeat:Wait()
								local now3 = tick()
								local flag16

								if not v10 then
									flag16 = true
								elseif fn33(v10) then
									if not fn35(v10) then
										tbl8[v10] = true
									end

									flag16 = true
								else
									flag16 = false

									if now3 - now2 >= 0.8 then
										tbl8[v10] = true
										flag16 = true
									end
								end

								if flag16 then
									local v13 = fn37(v10)

									if not v13 then
										if fn39() then
											fn24()
											v10 = nil
											continue
										else
											fn40()
											break
										end
									else
										fn41(v13)

										if fn37(v13) == nil and not fn39() then
											task.wait(0.1)
											tbl8[v13] = true
											fn40()
											break
										else
											continue
										end
									end
								else
									continue
								end
							end
						end

						break
					end

					fn40()
				end)
			end
		end)
	end

	task.spawn(function()
		local totalKills = leaderstats:WaitForChild("Total Kills")
		local attribute = localPlayer:GetAttribute("LastEmoteSpin")
		local value = totalKills.Value
		n5 = totalKills.Value - savedCarriedKills

		while true do
			task.wait(0.25)
			n6 = totalKills.Value
			n3 = n6 - n5
			n7 = n6 - value
			local attribute2 = localPlayer:GetAttribute("LastEmoteSpin")

			if attribute2 ~= attribute then
				savedEmotes = savedEmotes + 1
				attribute = attribute2
			end

			n4 = math.floor(n3 / math.max(os.time() - savedSessionStart, 1) * 3600)
			tbl3.kills.Text = tostring(n3)
			tbl3.kph.Text = tostring(n4)
			tbl3.emotes.Text = tostring(savedEmotes)
			tbl3.total.Text = tostring(n6)
		end
	end)

	task.spawn(function()
		while true do
			if flag3 then
				local genv = getgenv()
				genv.TimeFarmed = genv.TimeFarmed + 1
			end

			local timeFarmed = getgenv().TimeFarmed
			tbl3.timer.Text = string.format("%02d:%02d:%02d", math.floor(timeFarmed / 3600), math.floor(timeFarmed % 3600 / 60), timeFarmed % 60)
			task.wait(1)
		end
	end)

	localPlayer.CharacterAdded:Connect(function(character)
		task.wait(0.5)
		fn21(character)

		character:GetAttributeChangedSignal("Ulted"):Connect(function()
			if localPlayer.Character:GetAttribute("Ulted") then
				n8 = n8 + 1
				print("[Project Eternal] Ulted detected, time ulted: " .. tostring(n8))
			end
		end)
	end)

	if localPlayer.Character then
		fn21(localPlayer.Character)

		localPlayer.Character:GetAttributeChangedSignal("Ulted"):Connect(function()
			if localPlayer.Character:GetAttribute("Ulted") then
				n8 = n8 + 1
				print("[Project Eternal] Ulted detected, time ulted: " .. tostring(n8))
			end
		end)
	end
end

-- [PART 7: SERVER LIST AND AUTO SERVER HOP]
do
	local tbl4 = {
		{
			QueryV2 = true,
			Page = 1,
			Filters = {
				Countries = { [v.country] = true },
				Tags = {},
				HideFull = true,
				HideTagged = false,
				FriendsOnly = false,
				HidePassword = false,
			},
			limit = 60,
			Category = "Server List",
			Region = v.country,
			Sort = { Keys = { { By = "kills", Dir = "low" } } },
			Search = "",
			notFull = false,
		},
	}

	local function fn8()
		-- Put the raw link of YOUR hosted script here (optional). Otherwise save this script to LOCAL_FILE.
		local SCRIPT_URL = ""
		local LOCAL_FILE = "Project Eternal/main.lua"
		local str = string.format([[
getgenv().ScriptExecuted = nil
getgenv().desync = nil
getgenv().TimeFarmed = %d
getgenv().SavedCarriedKills = %d
getgenv().SavedEmotes = %d
getgenv().SavedSessionStart = %d
getgenv().FarmState = %s
getgenv().DoServerHop = %s
getgenv().AutoUlt = %s

if not game:IsLoaded() then 
    game.Loaded:Wait() 
end

task.spawn(function()
    task.wait(1.5)
    local content = nil
    -- Uu tien file local (ban moi nhat ban luu trong workspace executor)
    pcall(function()
        if isfile and isfile("%s") then
            content = readfile("%s")
        end
    end)
    -- Neu khong co file local thi tai tu GitHub (chong cache bang ?t=)
    if (not content or #content < 200) and "%s" ~= "" then
        pcall(function()
            content = game:HttpGet("%s?t=" .. tostring(os.time()))
        end)
    end
    if content and #content > 200 then
        local fnLoad, loadErr = loadstring(content)
        if fnLoad then
            local ok, runErr = pcall(fnLoad)
            if ok then
                print("[Project Eternal] Tu dong chay lai script sau khi hop thanh cong!")
            else
                warn("[Project Eternal] Loi khi chay lai script: " .. tostring(runErr))
            end
        else
            warn("[Project Eternal] Loi loadstring: " .. tostring(loadErr))
        end
    else
        warn("[Project Eternal] Khong tai duoc script de chay lai sau khi hop!")
    end
end)
]], getgenv().TimeFarmed or 0, n3 or 0, savedEmotes or 0, savedSessionStart or os.time(), tostring(flag3), tostring(doServerHop), tostring(getgenv().AutoUlt ~= false), LOCAL_FILE, LOCAL_FILE, SCRIPT_URL, SCRIPT_URL)

		local q = queue_on_teleport
			or (syn and syn.queue_on_teleport)
			or (fluxus and fluxus.queue_on_teleport)

		if q then
			pcall(q, str)
			print("[Project Eternal] queue_on_teleport set up successfully for the next hop.")
		else
			warn("[Project Eternal] Executor does not support queue_on_teleport!")
		end
	end

	local function fn9(arg)
		if not arg or type(arg) ~= "table" or not arg.servers then
			return nil
		end
		local tbl5 = {}

		for _, server in ipairs(arg.servers) do
			local players = server.players

			if players and players >= 10 and players <= 13 and server.id ~= game.JobId then
				table.insert(tbl5, server)
			end
		end

		if #tbl5 == 0 then
			return nil
		end
		return tbl5[math.random(1, #tbl5)]
	end

	local flag9 = false
	local flag10 = false
	local flag11 = false

	doHopServer = function(isManual)
		local isForce = flag11 or (isManual == true)

		if not isForce then
			if not doServerHop or not flag3 then
				flag10 = false
				return
			end
		end

		flag10 = false

		if flag9 then
			return
		end
		flag9 = true

		while true do
			task.wait()
			if not (not flag6 and not flag8) then
				continue
			end
			break
		end

		fn8()
		local response = nil
		pcall(function()
			response = game:GetService("ReplicatedStorage"):WaitForChild("Ranked"):WaitForChild("GetServerBrowserData"):InvokeServer(unpack(tbl4))
		end)
		task.wait(2)
		flag = false

		if getgenv().PBF_WS then
			pcall(function()
				getgenv().PBF_WS:Close()
			end)

			getgenv().PBF_WS = nil
		end

		if flag11 then
			localPlayer:Kick("[Project Eternal] Kicked by force-hop system.")
		end

		task.spawn(function()
			while true do
				print("[Project Eternal] Hopping ...")

				if not flag11 then
					pcall(function()
						response = game:GetService("ReplicatedStorage"):WaitForChild("Ranked"):WaitForChild("GetServerBrowserData"):InvokeServer(unpack(tbl4))
					end)
				end

				local v3 = fn9(response)

				if v3 then
					print("[Project Eternal] Found server: " .. tostring(v3.id) .. " | Teleporting...")

					local tpOk = pcall(function()
						local opts = Instance.new("TeleportOptions")
						opts.ServerInstanceId = v3.id
						TeleportService:TeleportAsync(game.PlaceId, {localPlayer}, opts)
					end)

					if not tpOk then
						tpOk = pcall(function()
							TeleportService:TeleportToPlaceInstance(game.PlaceId, v3.id, localPlayer)
						end)
					end

					if not tpOk then
						pcall(function()
							game:GetService("ReplicatedStorage"):WaitForChild("Ranked"):WaitForChild("CustomServerHandler"):InvokeServer({
								Action = "JoinServer",
								JobId = v3.id,
								ServerCode = v3.serverCode or "",
								JoinCode = v3.joinCode or "",
								Password = nil,
							})
						end)
					end
				else
					pcall(function()
						TeleportService:Teleport(game.PlaceId, localPlayer)
					end)
				end

				task.wait(3)
			end
		end)
	end

	textButton2.MouseButton1Click:Connect(function()
		print("[Project Eternal] Hop server manually...")
		doHopServer(true)
	end)

	local tbl5 = {
		422755031,
		198131804,
		681405668,
		3414432341,
		339633571,
		430966809,
		2039323684,
		117723419,
		1015595932,
		263944298,
		112905203,
		2284964418,
		1266437961,
		3120648134,
		1148139861,
		1633233654,
		3350014406,
		971193650,
		661273560,
		66105529,
		77342385,
		167343092,
		2055306963,
		141984224,
		438917845,
		1391134999,
		1796550069,
		255671730,
		3162123826,
		1059541187,
		1259898795,
		31070091,
		1041867508,
		994994173,
		1446694201,
		77525605,
		1001242712,
		2533866869,
		4983064295,
	}

	local function fn10(arg)
		if arg == localPlayer then
			return
		end

		local ok, result = pcall(function()
			return arg:IsInGroup(12013007)
		end)

		if ok and result then
			local ok2, result2 = pcall(function()
				return arg:GetRoleInGroup(12013007)
			end)

			local v3 = ok2 and result2
			local flag12 = false

			if v3 then
				local str = result2:lower()
				flag12 = str:find("moderator") or str:find("developer") or str:find("contributor") or str:find("tester") or str:find("owner") or str:find("anomaly player")
			end

			if flag12 then
				fn4(false)
				flag11 = true
				doHopServer()
				return
			end
		end

		for _, v3 in ipairs(tbl5) do
			if arg.UserId == v3 then
				fn4(false)
				flag11 = true
				doHopServer()
				return
			end
		end

		local tbl6 = {}

		for _, v3 in ipairs(tbl5) do
			local ok2, result2 = pcall(function()
				return arg:IsFriendsWith(v3)
			end)

			if ok2 and result2 then
				local ok3, result3 = pcall(function()
					return Players:GetNameFromUserIdAsync(v3)
				end)

				if ok3 then
					local displayName = result3

					pcall(function()
						local userInfosByUserIdsAsync = game:GetService("UserService"):GetUserInfosByUserIdsAsync({ v3 })

						if userInfosByUserIdsAsync and userInfosByUserIdsAsync[1] then
							displayName = userInfosByUserIdsAsync[1].DisplayName
						end
					end)

					tbl6[#tbl6 + 1] = displayName .. "(@" .. result3 .. ")"
				end
			end
		end

		if #tbl6 > 0 then
			fn4(false)
			flag11 = true
			doHopServer()
			return
		end

		local leaderstats = arg:FindFirstChild("leaderstats")
		local totalKills

		if leaderstats then
			totalKills = leaderstats:FindFirstChild("Total Kills")
		else
			totalKills = arg:FindFirstChild("Total Kills")
		end

		if totalKills and totalKills.Value >= 30000 then
			if doServerHop then
				doHopServer()
			end
			return true
		end

		if not totalKills then
			local connection = nil

			connection = arg.ChildAdded:Connect(function(child)
				if child.Name == "leaderstats" then
					connection:Disconnect()
					local connection2 = nil

					connection2 = child.ChildAdded:Connect(function(child2)
						if child2.Name == "Total Kills" then
							connection2:Disconnect()
							if child2.Value >= 30000 then
								if doServerHop then
									doHopServer()
								end
								return
							end
							local connection3 = nil

							connection3 = child2:GetPropertyChangedSignal("Value"):Connect(function()
								if child2.Value >= 30000 then
									connection3:Disconnect()
									if doServerHop then
										doHopServer()
									end
								end
							end)
						end
					end)
				end
			end)

			return
		end

		local connection = nil

		connection = totalKills:GetPropertyChangedSignal("Value"):Connect(function()
			if totalKills.Value >= 30000 then
				connection:Disconnect()
				if doServerHop then
					doHopServer()
				end
			end
		end)
	end

	Players.PlayerAdded:Connect(function(player)
		task.spawn(pcall, fn10, player)
	end)

	for _, player in pairs(Players:GetPlayers()) do
		if player ~= localPlayer then
			task.spawn(pcall, fn10, player)
		end
	end

	local str = "undefined"

	pcall(function()
		if type(gethwid) == "function" then
			str = gethwid() or "none"
		elseif type(getfingerprintid) == "function" then
			str = getfingerprintid() or "none"
		elseif type(getdeviceid) == "function" then
			str = getdeviceid() or "none"
		end
	end)

	local name = localPlayer.Name
	local str2 = "wss://pbf-websocket.baovq-tiger.workers.dev/?" .. "serverid=" .. game.JobId .. "&service=publicfarm" .. "&ispremium=" .. tostring(flag2) .. "&username=" .. name .. "&hwid=" .. str

	if getgenv().PBF_WS then
		pcall(function()
			getgenv().PBF_WS:Close()
		end)

		getgenv().PBF_WS = nil
	end

	local n9 = 10
	local n10 = 2
	local flag12 = false

	local function fn11(arg)
		local ok, result = pcall(function()
			return game:GetService("HttpService"):JSONDecode(arg)
		end)

		if not ok or not result then
			return
		end

		if result.command == "server_hop" then
			flag = false

			if getgenv().PBF_WS then
				pcall(function()
					getgenv().PBF_WS:Close()
				end)

				getgenv().PBF_WS = nil
			end

			print("[Project Eternal] Received hop server command for: " .. name)
			if doServerHop then
				doHopServer()
			end
		end

		if result.command == "kill_dup_session" then
			flag = false
			flag12 = true

			if getgenv().PBF_WS then
				pcall(function()
					getgenv().PBF_WS:Close()
				end)

				getgenv().PBF_WS = nil
			end

			game.Players.LocalPlayer:Kick("[Project Eternal] You got kicked because of duplicate session!")
			task.wait(2)
			game:Shutdown()
		end

		if result.command == "kill_session" then
			flag = false
			flag12 = true

			if getgenv().PBF_WS then
				pcall(function()
					getgenv().PBF_WS:Close()
				end)

				getgenv().PBF_WS = nil
			end

			game.Players.LocalPlayer:Kick("[Project Eternal] You got kicked by an admin!")
			task.wait(2)
			game:Shutdown()
		end
	end

	local function fn12()
		local ok, result = pcall(function()
			getgenv().PBF_WS = WebSocket.connect(str2)
		end)

		if not ok or not getgenv().PBF_WS then
			return false, tostring(result)
		end
		flag = true
		print("[Project Eternal] Server connected")
		getgenv().PBF_WS.OnMessage:Connect(fn11)

		getgenv().PBF_WS.OnClose:Connect(function()
			flag = false
			print("[Project Eternal] Server closed")
		end)

		return true
	end

	task.spawn(function()
		local n11 = 0
		local n12 = 2

		while not flag12 do
			n11 = n11 + 1
			print("[Project Eternal] Connecting... (attempt " .. n11 .. ")")
			local flag13, flag14

			if fn12() then
				while flag do
					task.wait(1)
				end

				if not flag12 then
					print("[Project Eternal] Disconnected, reconnecting in " .. n10 .. "s...")
					task.wait(2)
					n12 = 2
					flag13 = n11 >= n9
					flag14 = flag13 and not flag

					if flag14 then
						warn("[Project Eternal] Max retries reached, giving up")
						break
					else
						continue
					end
				end
			else
				warn("[Project Eternal] Connect failed (attempt " .. n11 .. "), retrying in " .. n12 .. "s...")
				task.wait(n12)
				n12 = math.min(n12 * 2, 30)
				flag13 = n11 >= n9
				flag14 = flag13 and not flag

				if flag14 then
					warn("[Project Eternal] Max retries reached, giving up")
					break
				else
					continue
				end
			end

			break
		end
	end)

	local Players2 = game:GetService("Players")

	local function fn13()
		local players = Players2:GetPlayers()
		local tbl6 = {}

		for _, player in ipairs(players) do
			local function fn14(arg)
				local match = arg:match("^([^_]+)_")
				return match and match:lower() or nil
			end

			local v3 = fn14(player.Name)
			local v4 = fn14(player.DisplayName)

			local function fn15(arg, arg2)
				if not arg then
					return
				end

				if not tbl6[arg] then
					tbl6[arg] = {}
				end

				table.insert(tbl6[arg], { player = player, source = arg2, original = arg2 == "username" and player.Name or player.DisplayName })
			end

			fn15(v3, "username")
			fn15(v4, "displayname")
		end

		local tbl7 = {}

		for k, v3 in pairs(tbl6) do
			local tbl8 = {}
			local tbl9 = {}

			for _, v4 in ipairs(v3) do
				if not tbl8[v4.player.UserId] then
					tbl8[v4.player.UserId] = true
					table.insert(tbl9, v4)
				end
			end

			if #tbl9 >= 2 then
				tbl7[k] = tbl9
			end
		end

		return tbl7
	end

	local function fn14(arg)
		local flag13 = false

		for k, v3 in pairs(arg) do
			print("[Project Eternal] Clan detected: [" .. k .. "] — " .. #v3 .. " members")

			for _, v4 in ipairs(v3) do
				print("  - " .. v4.player.Name .. " (" .. v4.player.DisplayName .. ") matched via " .. v4.source .. ": " .. v4.original)
			end

			flag13 = true
		end

		if not flag13 then
			print("[Project Eternal] No clans detected")
		else
			print("[Project Eternal] Clans detected...")
			if doServerHop then
				print("[Project Eternal] Serverhop is ON, hopping server...")
				doHopServer()
			else
				print("[Project Eternal] Serverhop is OFF, skip clan hop.")
			end
		end
	end

	task.spawn(function()
		print("[Project Eternal] Scanning server...")
		local v3 = fn13()
		fn14(v3)

		Players2.PlayerAdded:Connect(function()
			task.wait(1)
			print("[Project Eternal] New player joined, rescanning...")
			local v4 = fn13()
			fn14(v4)
		end)
	end)
end

deathCounterConns = {}
deathCounterDebounce = {}
hookedChars = {}

-- [PART 8: COUNTER AND DESYNC HANDLING TO AVOID DEATH]
do
	local flag9 = false

	local function fn8()
		return 0
	end

	local function fn9(arg)
		return arg:IsA("Accessory") and arg.Name == "Counter"
	end

	local flag10 = false
	local connection = nil

	local function fn10(cFrame2)
		local character = localPlayer.Character
		local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
		if not (character and humanoidRootPart) then
			return
		end

		task.spawn(function()
			RunService.RenderStepped:Once(function()
				humanoidRootPart.Velocity = Vector3.new()
				RunService.Heartbeat:Wait()
				humanoidRootPart.Velocity = Vector3.new()
			end)

			RunService.Heartbeat:Once(function()
				humanoidRootPart.CFrame = cFrame2
			end)
		end)
	end

	local function fn11()
		local character = localPlayer.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")

		if character and humanoid and workspace.CurrentCamera then
			local cFrame2 = workspace.CurrentCamera.CFrame
			workspace.CurrentCamera:Destroy()
			local camera = Instance.new("Camera", workspace)
			currentCamera = camera
			camera.CameraType = Enum.CameraType.Custom
			camera.CameraSubject = humanoid
			camera.CFrame = cFrame2
			localPlayer.CameraMode = Enum.CameraMode.Classic
			local head = character:FindFirstChild("Head")

			if head then
				head.Anchored = false
			end
		end
	end

	local function fn12(arg)
		local ok, result = pcall(function()
			return arg.DisplayName
		end)

		if not ok or not result or result == "" then
			return arg.Name
		end

		for _, player in pairs(Players:GetPlayers()) do
			if player ~= arg and player.DisplayName == result then
				return arg.Name
			end
		end

		return result
	end

	local function fn13(arg)
		if connection then
			connection:Disconnect()
			connection = nil
		end

		if not arg then
			return
		end

		connection = arg.AnimationPlayed:Connect(function(arg2)
			if not arg2.Animation.AnimationId:match("11343250001") then
				return
			end
			flag9 = true

			task.spawn(function()
				task.wait(0.2)
				local v3 = fn8()
				local flag11 = v3 <= 0

				if v3 <= 0 then
					pcall(function()
						arg2:Stop()
					end)
				end

				task.spawn(fn11)
				local character = localPlayer.Character
				character:WaitForChild("AbsoluteImmortal", 1)
				local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
				local cFrame2 = humanoidRootPart.CFrame
				local v4 = nil

				for _, player in pairs(Players:GetPlayers()) do
					if player ~= localPlayer then
						local character2 = player.Character
						local humanoidRootPart2 = character2 and character2:FindFirstChild("HumanoidRootPart")
						local humanoid = character2 and character2:FindFirstChildOfClass("Humanoid")

						if character2 and humanoidRootPart2 and humanoid then
							for _, v5 in pairs(humanoid:GetPlayingAnimationTracks()) do
								if v5.Animation.AnimationId:match("11343318134") and (humanoidRootPart.Position - humanoidRootPart2.Position).Magnitude <= 15 then
									v4 = player
								end
							end
						end
					end
				end

				local character2

				if v4 then
					character2 = v4.Character
					character2 = character2 and character2:FindFirstChildOfClass("Humanoid")
					fn12(v4)
				else
					local model = Instance.new("Model")
					local humanoid = Instance.new("Humanoid", model)
					humanoid.Health = 100
					character2 = humanoid

					task.delay(v3 + 2, function()
						humanoid.Health = 0
					end)
				end

				if v3 > 0 then
					task.wait(v3)
					character = localPlayer.Character
					local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")
					if not (character and humanoidRootPart2) then
						return
					end
				end

				local cameraSubject = workspace.CurrentCamera and workspace.CurrentCamera.CameraSubject

				if workspace.CurrentCamera then
					workspace.CurrentCamera.CameraSubject = nil
				end

				local humanoid = character:FindFirstChildOfClass("Humanoid")
				local n9 = CFrame.new(0, -10000, 0) * CFrame.Angles(1.5707963267948966, 0, 0)
				local now = tick()

				while true do
					fn10(n9)

					if v3 > 0 and not flag11 then
						pcall(function()
							arg2:Stop()
						end)

						flag11 = true
					end

					RunService.RenderStepped:Wait()
					if not (character2 and character2.Health <= 0 or humanoid and humanoid.Health <= 0 or tick() >= now + 10) then
						continue
					end
					break
				end

				if workspace.CurrentCamera then
					workspace.CurrentCamera.CameraSubject = cameraSubject
				end

				fn10(cFrame2)
				task.wait(1)
				local character3 = localPlayer.Character

				if character3 then
					local freeze = character3:FindFirstChild("Freeze")
					local noRotate = character3:FindFirstChild("NoRotate")

					if freeze then
						freeze:Destroy()
					end

					if noRotate then
						noRotate:Destroy()
					end
				end

				task.spawn(fn11)
				flag9 = false
			end)
		end)
	end

	local function fn14(arg)
		if not arg then
			return
		end
		local humanoid = arg:FindFirstChildOfClass("Humanoid")

		if humanoid then
			fn13(humanoid)
		else
			task.spawn(function()
				local humanoid2 = arg:WaitForChild("Humanoid", 5)

				if humanoid2 then
					fn13(humanoid2)
				end
			end)
		end
	end

	fn14(localPlayer.Character)

	localPlayer.CharacterAdded:Connect(function(character)
		task.wait(0.1)
		fn14(character)
	end)

	local function fn15(arg, arg2)
		if not arg or not arg2 or arg2 == localPlayer then
			return
		end

		if hookedChars[arg] then
			return
		end
		hookedChars[arg] = true

		for _, child in pairs(arg:GetChildren()) do
			if fn9(child) then
				local flag11 = false

				if flag10 then
					flag11 = not deathCounterDebounce[arg2]
				end

				if flag11 then
					deathCounterDebounce[arg2] = true
				end
			end
		end

		local connection2 = arg.ChildAdded:Connect(function(child)
			if not flag10 then
				return
			end

			if not fn9(child) then
				return
			end

			if deathCounterDebounce[arg2] then
				return
			end
			deathCounterDebounce[arg2] = true
		end)

		table.insert(deathCounterConns, connection2)
	end

	local function fn16(arg)
		if arg == localPlayer then
			return
		end

		if arg.Character then
			task.spawn(fn15, arg.Character, arg)
		end

		local connection2 = arg.CharacterAdded:Connect(function(character)
			if not flag10 then
				return
			end
			task.wait(0.1)
			fn15(character, arg)
		end)

		table.insert(deathCounterConns, connection2)
	end

	for _, v3 in pairs(deathCounterConns) do
		pcall(v3.Disconnect, v3)
	end

	for _, player in pairs(Players:GetPlayers()) do
		fn16(player)
	end

	table.insert(deathCounterConns, Players.PlayerAdded:Connect(function(player)
		if flag10 then
			fn16(player)
		end
	end))

	local tbl4 = {}
	local tbl5 = {}

	localPlayer.CharacterAdded:Connect(function()
		getgenv().desync = nil
	end)

	isCountering = function(arg)
		if not arg then
			return false
		end
		local model = arg:FindFirstAncestorWhichIsA("Model")
		if model and model:FindFirstChild("Counter") then
			return true
		end

		for _, v3 in pairs(arg:GetPlayingAnimationTracks()) do
			local animationId = v3.Animation.AnimationId
			if animationId:match("13726226905") or animationId:match("13726235415") then
				return true
			end
		end

		return false
	end

	local function fn17(arg, arg2)
		if not arg2 then
			return
		end

		if tbl4[arg] then
			pcall(function()
				tbl4[arg]:Disconnect()
			end)

			tbl4[arg] = nil
		end

		while true do
			task.wait()
			if not (not arg2.Parent or arg2:FindFirstChild("HumanoidRootPart") and arg2:FindFirstChildOfClass("Humanoid")) then
				continue
			end
			break
		end

		if not arg2.Parent then
			return
		end
		local humanoidRootPart = arg2:FindFirstChild("HumanoidRootPart")
		local humanoid = arg2:FindFirstChildOfClass("Humanoid")
		if not (humanoidRootPart and humanoid) then
			return
		end

		local function fn18(arg3, arg4)
			local match = tostring(arg4):match("%d+")

			for _, v3 in pairs(arg3:GetPlayingAnimationTracks()) do
				if v3.Animation.AnimationId:match(match) then
					return v3
				end
			end

			return nil
		end

		tbl4[arg] = humanoid.AnimationPlayed:Connect(function(arg3)
			local animationId = arg3.Animation.AnimationId
			local character = localPlayer.Character
			local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")
			if not (character and humanoidRootPart2) then
				return
			end

			task.spawn(function()
				if arg3.WeightTarget == 0 or arg3.Speed == 0 then
					return
				end
				local cframe = CFrame.new(9e9, 9e9, 9e9)
				local v3 = character
				local humanoid2

				if character then
					humanoid2 = character:FindFirstChildOfClass("Humanoid")
				else
					humanoid2 = v3
				end

				local function fn19(arg4)
					pcall(function()
						repeat
							local desync = { CFrame = cframe }
							getgenv().desync = desync
							task.wait()
							local character2 = localPlayer.Character
							local humanoidRootPart3 = character2 and character2:FindFirstChild("HumanoidRootPart")
							local humanoid3 = character2 and character2:FindFirstChildOfClass("Humanoid")
							if not (character2 and humanoidRootPart3 and humanoid3) then
								return
							end
							humanoidRootPart2 = humanoidRootPart3
							humanoid2 = humanoid3
						until arg4()
					end)

					getgenv().desync = nil

					if sethiddenproperty then
						local humanoidRootPart3 = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")

						if humanoidRootPart3 then
							pcall(function()
								sethiddenproperty(humanoidRootPart3, "PhysicsRepRootPart", nil)
							end)
						end
					end
				end

				local function fn20(arg4)
					if not arg4 then
						return false
					end
					local model = arg4:FindFirstAncestorWhichIsA("Model")
					return model and model:FindFirstChild("Counter") and true or false
				end

				local function fn21(size)
					local part = Instance.new("Part", workspace)
					part.Anchored = true
					part.Size = size
					part.CanCollide = false
					part.Transparency = 1
					local flag11 = false

					local connection2 = part.Touched:Connect(function(hit)
						if hit == humanoidRootPart2 or hit == getgenv().InvisPart30 then
							flag11 = true
						end
					end)

					local connection3 = part.TouchEnded:Connect(function(hit)
						if hit == humanoidRootPart2 or hit == getgenv().InvisPart30 then
							flag11 = false
						end
					end)

					return part, function()
						return flag11
					end, function()
						pcall(function()
							part:Destroy()
						end)

						connection2:Disconnect()
						connection3:Disconnect()
					end
				end

				local function fn22()
					local invisPart30 = getgenv().InvisPart30
					if getgenv().InvisActive and invisPart30 then
						return invisPart30.Position
					end
					return humanoidRootPart2.Position
				end

				if animationId:match("12983333733") and arg2:GetAttribute("Ulted") ~= nil then
					task.delay(1, function()
						if arg2:FindFirstChild("AbsoluteImmortal", true) and arg2:FindFirstChild("Freeze") then
							task.wait(4.25)
							local now = tick()

							fn19(function()
								local position = humanoidRootPart.Position
								local flag11 = (fn22() - position).Magnitude > 150
								local flag12

								if flag11 then
									flag12 = flag11
								else
									local n9 = now + 2
									flag12 = tick() >= n9
								end

								return flag12 or not arg3.IsPlaying
							end)
						end
					end)
				end

				if animationId:match("11365563255") and arg2:GetAttribute("Ulted") ~= nil then
					task.delay(1, function()
						if arg2:FindFirstChild("AbsoluteImmortal", true) and arg2:FindFirstChild("Freeze") then
							task.wait(3)
							local now = tick()

							fn19(function()
								local n9 = now + 2.5
								return tick() >= n9
							end)
						end
					end)
				end

				if animationId:match("13927612951") and arg2:GetAttribute("Ulted") ~= nil then
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 150
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 2.5
							flag12 = tick() >= n9
						end

						return flag12
					end)
				end

				if animationId:match("12342141464") then
					task.wait(3.5)
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 125
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 1.25
							flag12 = tick() >= n9
						end

						return flag12
					end)
				end

				if animationId:match("12463072679") then
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 25
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 0.75
							flag12 = tick() >= n9
						end

						return flag12
					end)
				end

				if animationId:match("13603396939") then
					local now = tick()

					fn19(function()
						local cFrame2 = humanoidRootPart.CFrame
						local flag11 = (fn22() - (cFrame2 * CFrame.new(0, 0, -1)).Position).Magnitude > 7.5 or isCountering(humanoid)

						if not flag11 then
							local n9 = now + 2.5
							flag11 = tick() >= n9
						end

						return flag11
					end)
				end

				if animationId:match("12460977270") then
					local v4, v5, v6 = fn21(Vector3.new(12.5, 5, 12.5))
					local now = tick()

					while true do
						v4.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -6.25)

						if v5() and not isCountering(humanoid) then
							getgenv().desync = { CFrame = cframe }
						else
							getgenv().desync = nil
						end

						RunService.RenderStepped:Wait()
						if not (tick() >= now + 1.85 or not arg3.IsPlaying) then
							continue
						end
						break
					end

					getgenv().desync = nil
					v6()
				end

				if animationId:match("14057231976") then
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 10
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 0.5
							flag12 = tick() >= n9
						end

						return flag12
					end)

					task.wait(0.5)
					local now2 = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 10 or isCountering(humanoid)

						if not flag11 then
							local n9 = now2 + 1.25
							flag11 = tick() >= n9
						end

						return flag11
					end)
				end

				if animationId:match("13630786846") then
					local v4, v5, v6 = fn21(Vector3.new(25, 10, 75))
					local now = tick()

					while true do
						v4.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -37.5)

						if v5() and not isCountering(humanoid) then
							getgenv().desync = { CFrame = cframe }
						else
							getgenv().desync = nil
						end

						RunService.RenderStepped:Wait()
						if not (tick() >= now + 1.5 or not arg3.IsPlaying) then
							continue
						end
						break
					end

					getgenv().desync = nil
					v6()
				end

				if animationId:match("72451715583225") then
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 15
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 0.75
							flag12 = tick() >= n9
						end

						return flag12
					end)
				end

				if animationId:match("13813955149") then
					local position = humanoidRootPart.Position

					if (fn22() - position).Magnitude <= 25 then
						getgenv().desync = { CFrame = CFrame.new(9e9, 9e9, 9e9) }
						task.wait(0.75)
						getgenv().desync = nil
					end

					local connection2 = nil

					connection2 = workspace:WaitForChild("Thrown", 3).ChildAdded:Connect(function(child)
						if child:IsA("MeshPart") and child.Name:lower() == "trash can" then
							connection2:Disconnect()
							local now = tick()

							fn19(function()
								local position2 = child.Position
								local flag11 = (fn22() - position2).Magnitude > 25
								local flag12

								if flag11 then
									flag12 = flag11
								else
									local n9 = now + 2
									flag12 = tick() >= n9
								end

								return flag12
							end)
						end
					end)
				end

				if animationId:match("15128849047") then
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 100 or fn18(humanoid, "15128849047")

						if not flag11 then
							local n9 = now + 3
							flag11 = tick() >= n9
						end

						return flag11
					end)
				end

				if animationId:match("15391323441") then
					task.wait(5.5)
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 125
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 1
							flag12 = tick() >= n9
						end

						return flag12
					end)
				end

				if animationId:match("16082123712") then
					task.wait(2.5)
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 50
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 1.5
							flag12 = tick() >= n9
						end

						return flag12
					end)
				end

				if animationId:match("14719290328") then
					local position = humanoidRootPart.Position

					if (fn22() - position).Magnitude <= 50 then
						getgenv().desync = { CFrame = CFrame.new(9e9, 9e9, 9e9) }
					end

					task.wait(0.5)

					if arg3.IsPlaying then
						local now = tick()

						fn19(function()
							local position2 = humanoidRootPart.Position
							local flag11 = (fn22() - position2).Magnitude > 50 or fn20(humanoid2)

							if not flag11 then
								local n9 = now + 3.5
								flag11 = tick() >= n9
							end

							return flag11 or not arg3.IsPlaying
						end)
					end
				end

				if animationId:match("15520132233") then
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 50 or fn20(humanoid2)

						if not flag11 then
							local n9 = now + 3.3
							flag11 = tick() >= n9
						end

						return flag11 or not arg3.IsPlaying
					end)

					repeat
						task.wait()
					until now + 5.5 <= tick()

					local now2 = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 100 or fn20(humanoid2)

						if not flag11 then
							local n9 = now2 + 1
							flag12 = tick() >= n9
						end

						return flag11 or not arg3.IsPlaying
					end)
				end

				if animationId:match("15676072469") then
					local v4, v5, v6 = fn21(Vector3.new(50, 10, 150))
					local now = tick()

					while true do
						v4.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -75)

						if v5() and not fn20(humanoid2) then
							getgenv().desync = { CFrame = cframe }
						else
							getgenv().desync = nil
						end

						RunService.RenderStepped:Wait()
						if not (tick() >= now + 2 or not arg3.IsPlaying) then
							continue
						end
						break
					end

					getgenv().desync = nil
					v6()
				end

				if animationId:match("16057411888") then
					task.wait(4.25)
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 50
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 2
							flag12 = tick() >= n9
						end

						return flag12
					end)
				end

				if animationId:match("18435535291") then
					task.wait(4.25)
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 100
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 1.25
							flag12 = tick() >= n9
						end

						return flag12
					end)
				end

				if animationId:match("17857788598") then
					task.wait(0.65)

					if arg3.IsPlaying then
						local part = Instance.new("Part", workspace)
						part.Anchored = true
						part.Size = Vector3.new(35, 2048, 35)
						part.CanCollide = false
						part.Transparency = 1
						local flag11 = false

						local connection2 = part.Touched:Connect(function(hit)
							if hit == humanoidRootPart2 or hit == getgenv().InvisPart30 then
								flag11 = true
							end
						end)

						local connection3 = part.TouchEnded:Connect(function(hit)
							if hit == humanoidRootPart2 or hit == getgenv().InvisPart30 then
								flag11 = false
							end
						end)

						local now = tick()

						while true do
							part.CFrame = humanoidRootPart.CFrame

							if flag11 and not fn18(humanoid, "15128849047") then
								getgenv().desync = { CFrame = CFrame.new(9e9, 9e9, 9e9) }
							else
								getgenv().desync = nil
							end

							RunService.RenderStepped:Wait()
							if not (tick() >= now + 0.85 or not arg3.IsPlaying) then
								continue
							end
							break
						end

						getgenv().desync = nil
						connection2:Disconnect()
						connection3:Disconnect()

						pcall(function()
							part:Destroy()
						end)
					end
				end

				if animationId:match("129651400898906") then
					task.wait(0.5)
					local cFrame2 = humanoidRootPart.CFrame
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 75

						if not flag11 then
							local n9 = now + 1.25
							flag11 = tick() >= n9
						end

						return flag11 or not arg3.IsPlaying
					end)

					task.wait(1)
					local now2 = tick()

					fn19(function()
						local position = cFrame2.Position
						local flag11 = (fn22() - position).Magnitude > 75
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now2 + 1.75
							flag12 = tick() >= n9
						end

						return flag12
					end)
				end

				if animationId:match("18896229321") then
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 15 or isCountering(humanoid)
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 3.5
							flag12 = tick() >= n9
						end

						return flag12 or not arg3.IsPlaying
					end)

					task.wait(1)

					if arg3.IsPlaying then
						local position = humanoidRootPart.Position

						if (fn22() - position).Magnitude <= 25 then
							local now2 = tick()

							fn19(function()
								local position2 = humanoidRootPart.Position
								local flag11 = (fn22() - position2).Magnitude > 25
								local flag12

								if flag11 then
									flag12 = flag11
								else
									local n9 = now2 + 2
									flag12 = tick() >= n9
								end

								return flag12 or not arg3.IsPlaying
							end)
						end
					end
				end

				if animationId:match("18897119503") then
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 50
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 1.5
							flag12 = tick() >= n9
						end

						return flag12
					end)
				end

				if animationId:match("106755459092436") or animationId:match("75502010126640") then
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 50
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 2
							flag12 = tick() >= n9
						end

						return flag12
					end)
				end

				if animationId:match("16515850153") then
					task.spawn(function()
						local position = humanoidRootPart.Position

						if (fn22() - position).Magnitude <= 15 then
							getgenv().desync = { CFrame = CFrame.new(9e9, 9e9, 9e9) }
						end

						local dotted = workspace:WaitForChild("Thrown", 3):WaitForChild("Dotted", 1)

						if dotted then
							local dots = dotted:WaitForChild("Dots", 1)
							if not dots then
								getgenv().desync = nil
								return
							end
							local now = tick()
							local position2 = dots.Position

							if (fn22() - position2).Magnitude > 20 then
								getgenv().desync = nil
							end

							fn19(function()
								local position3 = dots.Position
								local flag11 = (fn22() - position3).Magnitude > 20 or fn20(humanoid2)
								local flag12

								if flag11 then
									flag12 = flag11
								else
									local n9 = now + 4.25
									flag12 = tick() >= n9
								end

								return flag12
							end)
						else
							getgenv().desync = nil
						end
					end)
				end

				if animationId:match("16431491215") then
					local now = tick()

					while true do
						task.wait()
						local cFrame2 = humanoidRootPart.CFrame
						if not ((fn22() - (cFrame2 * CFrame.new(0, 0, -25)).Position).Magnitude <= 25 or fn18(humanoid, "15128849047") or tick() >= now + 0.75) then
							continue
						end
						break
					end

					if not fn18(humanoid, "15128849047") then
						fn19(function()
							local cFrame2 = humanoidRootPart.CFrame
							local flag11 = (fn22() - (cFrame2 * CFrame.new(0, 0, -20)).Position).Magnitude > 25 or fn18(humanoid, "15128849047")

							if not flag11 then
								local n9 = now + 0.75
								flag11 = tick() >= n9
							end

							return flag11
						end)
					end
				end

				if animationId:match("16597912086") then
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 15 or isCountering(humanoid)
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 0.75
							flag12 = tick() >= n9
						end

						return flag12
					end)
				end

				if animationId:match("17275150809") then
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 50
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 1
							flag12 = tick() >= n9
						end

						return flag12
					end)
				end

				if animationId:match("17278415853") and arg2:GetAttribute("Character") == "Esper" then
					task.wait(11)
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 100
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 6
							flag12 = tick() >= n9
						end

						return flag12
					end)
				end

				if animationId:match("16734584478") then
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 75
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 5.75
							flag12 = tick() >= n9
						end

						return flag12
					end)
				end

				if animationId:match("13376869471") then
					local part = Instance.new("Part", workspace)
					part.Anchored = true
					part.Size = Vector3.new(10, 7.5, 60)
					part.CanCollide = false
					part.Transparency = 1
					local flag11 = false

					local connection2 = part.Touched:Connect(function(hit)
						if hit == humanoidRootPart2 or hit == getgenv().InvisPart30 then
							flag11 = true
						end
					end)

					local connection3 = part.TouchEnded:Connect(function(hit)
						if hit == humanoidRootPart2 or hit == getgenv().InvisPart30 then
							flag11 = false
						end
					end)

					local now = tick()

					while true do
						part.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -part.Size.Z / 2)
						RunService.RenderStepped:Wait()
						if not (flag11 or tick() >= now + 3 or not arg3.IsPlaying) then
							continue
						end
						break
					end

					if flag11 then
						local now2 = tick()

						fn19(function()
							local flag12 = not flag11

							if not flag12 then
								local n9 = now2 + 1
								flag12 = tick() >= n9
							end

							return flag12 or not arg3.IsPlaying
						end)
					end

					connection2:Disconnect()
					connection3:Disconnect()

						pcall(function()
							part:Destroy()
						end)
				end

				if animationId:match("13294790250") then
					task.wait(0.5)
					local now = tick()

					fn19(function()
						local cFrame2 = humanoidRootPart.CFrame
						local flag11 = (fn22() - (cFrame2 * CFrame.new(0, 0, -2.5)).Position).Magnitude > 10 or isCountering(humanoid)

						if not flag11 then
							local n9 = now + 0.75
							flag11 = tick() >= n9
						end

						return flag11
					end)
				end

				if animationId:match("13632347366") then
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 75 or fn20(humanoid2)
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 1.75
							flag12 = tick() >= n9
						end

						return flag12 or not arg3.IsPlaying
					end)
				end

				if animationId:match("13723174078") then
					task.wait(0.5)
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 50
						local flag12

						if flag11 then
							flag12 = flag11
						else
							local n9 = now + 2
							flag12 = tick() >= n9
						end

						return flag12 or not arg3.IsPlaying
					end)
				end

				if animationId:match("13881335713") then
					task.wait(0.75)

					if arg3.IsPlaying then
						local part = Instance.new("Part", workspace)
						part.Anchored = true
						part.Size = Vector3.new(35, 5, 60)
						part.CanCollide = false
						part.Transparency = 1
						local flag11 = false

						local connection2 = part.Touched:Connect(function(hit)
							if hit == humanoidRootPart2 or hit == getgenv().InvisPart30 then
								flag11 = true
							end
						end)

						local connection3 = part.TouchEnded:Connect(function(hit)
							if hit == humanoidRootPart2 or hit == getgenv().InvisPart30 then
								flag11 = false
							end
						end)

						local now = tick()

						while true do
							part.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -part.Size.Z / 2)
							RunService.RenderStepped:Wait()
							if not (flag11 or tick() >= now + 3 or not arg3.IsPlaying) then
								continue
							end
							break
						end

						if flag11 then
							local now2 = tick()

							fn19(function()
								local flag12 = not flag11

								if not flag12 then
									local n9 = now2 + 1
									flag12 = tick() >= n9
								end

								return flag12 or not arg3.IsPlaying
							end)
						end

						connection2:Disconnect()
						connection3:Disconnect()

						pcall(function()
							part:Destroy()
						end)
					end
				end

				if animationId:match("14721837245") then
					local now = tick()

					fn19(function()
						local position = humanoidRootPart.Position
						local flag11 = (fn22() - position).Magnitude > 25 or fn18(humanoid, "15128849047")

						if not flag11 then
							local n9 = now + 1.5
							flag11 = tick() >= n9
						end

						return flag11 or not arg3.IsPlaying
					end)

					if now + 1.5 <= tick() then
						task.wait(1)
						local now2 = tick()

						fn19(function()
							local position = humanoidRootPart.Position
							local flag11 = (fn22() - position).Magnitude > 100
							local flag12

							if flag11 then
								flag12 = flag11
							else
								local n9 = now2 + 1.5
								flag12 = tick() >= n9
							end

							return flag12 or not arg3.IsPlaying
						end)
					end
				end

				if animationId:match("13083332742") then
					task.wait(1)
					local part = Instance.new("Part", workspace)
					part.Anchored = true
					part.Size = Vector3.new(12.5, 5, 1000)
					part.CanCollide = false
					part.Transparency = 1

					task.delay(0.25, function()
						part.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -part.Size.Z / 2)
					end)

					local flag11 = false

					local connection2 = part.Touched:Connect(function(hit)
						if hit == humanoidRootPart2 or hit == getgenv().InvisPart30 then
							flag11 = true
						end
					end)

					local connection3 = part.TouchEnded:Connect(function(hit)
						if hit == humanoidRootPart2 or hit == getgenv().InvisPart30 then
							flag11 = false
						end
					end)

					local now = tick()

					while true do
						if flag11 and not fn20(humanoid2) then
							getgenv().desync = { CFrame = CFrame.new(9e9, 9e9, 9e9) }
						else
							getgenv().desync = nil
						end

						RunService.RenderStepped:Wait()
						if not (tick() >= now + 4 or not arg3.IsPlaying) then
							continue
						end
						break
					end

					getgenv().desync = nil
					connection2:Disconnect()
					connection3:Disconnect()

					pcall(function()
						part:Destroy()
					end)
				end

				if animationId:match("13146710762") then
					task.wait(3.25)

					if arg3.IsPlaying then
						local tbl6 = {}
						local tbl7 = {}
						local n9 = CFrame.new(50, 0, -200) * CFrame.Angles(0, -0.26179938779914941, 0)
						local n10 = CFrame.new(-50, 0, -200) * CFrame.Angles(0, 0.26179938779914941, 0)
						local cframe2 = CFrame.new
						tbl7[1] = n9
						tbl7[2] = n10

						do
							local values = table.pack(cframe2(0, 0, -200))
							table.move(values, 1, values.n, 3, tbl7)
						end

						local flag11 = false
						local tbl8 = {}

						for _, v4 in ipairs(tbl7) do
							local part = Instance.new("Part", workspace)
							part.Anchored = true
							part.Size = Vector3.new(100, 75, 400)
							part.CanCollide = false
							part.Transparency = 1
							part.CFrame = humanoidRootPart.CFrame * v4
							table.insert(tbl6, part)

							table.insert(tbl8, part.Touched:Connect(function(hit)
								if hit == humanoidRootPart2 or hit == getgenv().InvisPart30 then
									flag11 = true
								end
							end))

							table.insert(tbl8, part.TouchEnded:Connect(function(hit)
								if hit == humanoidRootPart2 or hit == getgenv().InvisPart30 then
									flag11 = false
								end
							end))
						end

						local now = tick()

						while true do
							if flag11 and not fn20(humanoid2) then
								getgenv().desync = { CFrame = CFrame.new(9e9, 9e9, 9e9) }
							else
								getgenv().desync = nil
							end

							RunService.RenderStepped:Wait()
							if not (tick() >= now + 6 or not arg3.IsPlaying) then
								continue
							end
							break
						end

						getgenv().desync = nil

						for _, v4 in ipairs(tbl8) do
							v4:Disconnect()
						end

						for _, v4 in ipairs(tbl6) do
							pcall(function()
								v4:Destroy()
							end)
						end
					end
				end

				if animationId:match("11343318134") then
					task.wait(7.5)
					if not arg3.IsPlaying then
						return
					end
					local tbl6 = {}
					local tbl7 = {}
					local n9 = CFrame.new(60, 0, -250) * CFrame.Angles(0, -0.26179938779914941, 0)
					local n10 = CFrame.new(-60, 0, -250) * CFrame.Angles(0, 0.26179938779914941, 0)
					local cframe2 = CFrame.new
					tbl7[1] = n9
					tbl7[2] = n10

					do
						local values = table.pack(cframe2(0, 0, -250))
						table.move(values, 1, values.n, 3, tbl7)
					end

					local tbl8 = { false, false, false }
					local tbl9 = {}

					for i in ipairs(tbl7) do
						local part = Instance.new("Part", workspace)
						part.Anchored = true
						part.Size = Vector3.new(125, 5, 500)
						part.CanCollide = false
						part.Transparency = 1
						table.insert(tbl6, part)
						local v4 = i

						table.insert(tbl9, part.Touched:Connect(function(hit)
							if hit == humanoidRootPart2 or hit == getgenv().InvisPart30 then
								tbl8[v4] = true
							end
						end))

						table.insert(tbl9, part.TouchEnded:Connect(function(hit)
							if hit == humanoidRootPart2 or hit == getgenv().InvisPart30 then
								tbl8[v4] = false
							end
						end))
					end

					local now = tick()

					while true do
						for i, v4 in ipairs(tbl6) do
							v4.CFrame = humanoidRootPart.CFrame * tbl7[i]
						end

						if tbl8[1] or tbl8[2] or tbl8[3] then
							getgenv().desync = { CFrame = CFrame.new(9e9, 9e9, 9e9) }
						else
							getgenv().desync = nil
						end

						RunService.RenderStepped:Wait()
						if not (tick() >= now + 2.5 or not arg3.IsPlaying) then
							continue
						end
						break
					end

					getgenv().desync = nil

					for _, v4 in ipairs(tbl9) do
						v4:Disconnect()
					end

					for _, v4 in ipairs(tbl6) do
						pcall(function()
							v4:Destroy()
						end)
					end
				end
			end)
		end)
	end

	local function fn18(arg)
		if arg == localPlayer then
			return
		end

		if arg.Character then
			task.spawn(fn17, arg, arg.Character)
		end

		tbl5[arg] = arg.CharacterAdded:Connect(function(character)
			task.spawn(fn17, arg, character)
		end)
	end

	for _, player in pairs(Players:GetPlayers()) do
		task.spawn(fn18, player)
	end

	Players.PlayerAdded:Connect(function(player)
		if player == localPlayer then
			return
		end

		task.spawn(function()
			local now = tick()

			while true do
				RunService.RenderStepped:Wait()
				if not (player:GetAttribute("PreloadDone") or tick() >= now + 30) then
					continue
				end
				break
			end

			if player and player.Parent then
				if player.Character then
					task.spawn(fn17, player, player.Character)
				end

				tbl5[player] = player.CharacterAdded:Connect(function(character)
					task.spawn(fn17, player, character)
				end)
			end
		end)
	end)

	Players.PlayerRemoving:Connect(function(player)
		if tbl4[player] then
			pcall(function()
				tbl4[player]:Disconnect()
			end)

			tbl4[player] = nil
		end

		if tbl5[player] then
			pcall(function()
				tbl5[player]:Disconnect()
			end)

			tbl5[player] = nil
		end
	end)

	local function fn19()
		local character = localPlayer.Character

		if sethiddenproperty then
			if character and character.Parent then
				pcall(function()
					sethiddenproperty(character.HumanoidRootPart, "PhysicsRepRootPart", nil)
				end)
			end
		end

		if character and character.Parent then
			pcall(function()
				if currentCamera then
					character:SetAttribute("NoHeadLerp", false)

					if character.Humanoid then
						currentCamera.CameraSubject = character.Humanoid
					end
				end
			end)

			local now = tick()

			repeat
				pcall(function()
					character.HumanoidRootPart.CFrame = CFrame.new(character.HumanoidRootPart.Position)
				end)

				RunService.Heartbeat:Wait()
			until tick() - now > 0.15

			pcall(function()
				character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
			end)

			pcall(function()
				character.HumanoidRootPart.AssemblyAngularVelocity = Vector3.zero
			end)

			pcall(function()
				character.HumanoidRootPart.Velocity = Vector3.zero
			end)

			pcall(function()
				character.HumanoidRootPart.RotVelocity = Vector3.zero
			end)

			local humanoid = character:FindFirstChildOfClass("Humanoid")

			if humanoid then
				pcall(function()
					humanoid.AutoRotate = true
				end)
			end
		end
	end

	local function fn20()
		local now = nil
		local now3 = nil
		local tbl6 = { { Goal = "LeftClick", MousePos = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) } }
		local tbl7 = { { Goal = "LeftClickRelease" } }
		local tbl8 = { { Mobile = true, Goal = "LeftClick", MousePos = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) } }

		local tbl9 = {
			{
				Dash = Enum.KeyCode.W,
				Key = Enum.KeyCode.Q,
				Goal = "KeyPress",
				MousePos = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
			},
		}

		local tbl10 = {
			"17799224866",
			"17838006839",
			"17838619895",
			"17857788598",
			"17857880283",
			"18179181663",
			"18182425133",
			"18464351556",
			"18464356233",
			"18464372850",
			"18464362124",
			"136370737633649",
			"130301810149072",
			"17889290569",
			"10479335397",
			"18896229321",
		}

		local function fn21(arg)
			if not arg then
				return false
			end

			for _, v3 in pairs(arg:GetPlayingAnimationTracks()) do
				local animationId = v3.Animation.AnimationId

				for _, v4 in ipairs(tbl10) do
					if animationId:match(v4) then
						flag5 = true
						return true
					end
				end
			end

			flag5 = false
			return false
		end

		local function fn22(arg)
			if not arg then
				return false
			end

			for _, v3 in pairs(arg:GetPlayingAnimationTracks()) do
				local animationId = v3.Animation.AnimationId
				if animationId:match("18435535291") or animationId:match("18435383478") then
					return true
				end
			end

			return false
		end

		local flag11 = false

		RunService.Heartbeat:Connect(function()
			if not flag3 then
				return
			end

			if flag11 then
				return
			end

			if getgenv().desync then
				return
			end

			if flag7 then
				return
			end

			if flag6 then
				VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
				task.wait(0.001)
				VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
				task.wait(0.05)
				local character = localPlayer.Character
				if not character then
					return
				end
				local humanoid = character:FindFirstChildOfClass("Humanoid")
				local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
				if not humanoid or not humanoidRootPart then
					return
				end

				if fn22(humanoid) or humanoidRootPart.Anchored == true then
					return
				end
				local playerGui = localPlayer:FindFirstChild("PlayerGui")
				if not playerGui then
					return
				end

				-- [AUTOMATICALLY USE MOVE 4 TWO SECONDS BEFORE ULT ENDS TO REFILL RAGE QUICKLY]
				local isUltEndingSoon = false
				local magicHealthBar = playerGui:FindFirstChild("Bar") and playerGui.Bar:FindFirstChild("MagicHealth") and playerGui.Bar.MagicHealth:FindFirstChild("Health") and playerGui.Bar.MagicHealth.Health:FindFirstChild("Bar")
				if magicHealthBar and magicHealthBar.Size.X.Scale > 0 then
					local currentScale = magicHealthBar.Size.X.Scale
					local nowTick = tick()

					if lastUltScale and lastUltTick and (lastUltScale > currentScale) and (nowTick - lastUltTick > 0.08) then
						local drainRate = (lastUltScale - currentScale) / (nowTick - lastUltTick)
						if drainRate > 0.001 then
							local estSecondsLeft = currentScale / drainRate
							if estSecondsLeft <= 2.2 and estSecondsLeft > 0 then
								isUltEndingSoon = true
							end
						end
					end

					if currentScale <= 0.065 then
						isUltEndingSoon = true
					end

					lastUltScale = currentScale
					lastUltTick = nowTick
				else
					lastUltScale = nil
					lastUltTick = nil
				end

				local hotbar = playerGui:FindFirstChild("Hotbar")
				if not hotbar then
					return
				end
				local backpack = hotbar:FindFirstChild("Backpack")
				if not backpack then
					return
				end
				local hotbar2 = backpack:FindFirstChild("Hotbar")
				if not hotbar2 then
					return
				end

				if isUltEndingSoon then
					local slot4 = hotbar2:FindFirstChild("4")
					local base4 = slot4 and slot4:FindFirstChild("Base")
					if base4 and (base4:FindFirstChild("Cooldown") == nil or base4:FindFirstChild("Cooldown").Size.Y.Scale >= -0.2) then
						VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Four, false, game)
						task.wait(0.001)
						VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Four, false, game)
						task.wait(0.05)
					end
				end

				local n22 = hotbar2:FindFirstChild("2")

				if n22 then
					local base = n22:FindFirstChild("Base")

					if base then
						if base:FindFirstChild("Cooldown") == nil or base:FindFirstChild("Cooldown").Size.Y.Scale >= -0.2 then
							VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Two, false, game)
							task.wait(0.001)
							VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Two, false, game)
							task.wait(0.05)
						end
					end
				end
			else
				lastUltScale = nil
				lastUltTick = nil

				if not v2 then
					return
				end
				local character = v2.Character
				local character2 = localPlayer.Character
				if not character or not character2 then
					return
				end

				if character:FindFirstChildWhichIsA("ForceField") then
					return
				end

				if character:FindFirstChild("AbsoluteImmortal") then
					return
				end

				if character:FindFirstChild("BeingGrabbed") then
					return
				end

				if character:FindFirstChild("HunterCounter") then
					return
				end

				if character:FindFirstChild("AtomicCounter") then
					return
				end
				local humanoid = character2:FindFirstChildOfClass("Humanoid")
				if fn21(humanoid) then
					return
				end
				local humanoid2 = character:FindFirstChildOfClass("Humanoid")
				local torso = character:FindFirstChild("Torso")
				if not humanoid2 or not torso or torso.Transparency == 1 then
					return
				end
				flag11 = true
				local communicate = character2:FindFirstChild("Communicate")
				if not communicate then
					flag11 = false
					return
				end

				if not character2:GetAttribute("HoldingSpace") then
					local communicate2 = character2:FindFirstChild("Communicate")

					pcall(communicate2.FireServer, communicate2, {
						Goal = "KeyPress",
						Key = Enum.KeyCode.Space,
						MousePos = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
					})
				end

				if character2:FindFirstChild("Ragdoll") or character2:FindFirstChild("RagdollSim") then
					communicate:FireServer({ Dash = Enum.KeyCode.S, Key = Enum.KeyCode.Q, Goal = "KeyPress" })
				end

				if character:FindFirstChild("Ragdoll") or character:FindFirstChild("RagdollSim") or humanoid2.Health <= 10 then
					if character2:GetAttribute("HoldingM1") then
						communicate:FireServer(unpack(tbl7))
						task.wait(0.1)
					end

					print("spaming moves")

					if not (humanoid2.Health <= 10) then
						if not now or tick() - now >= 7 then
							communicate:FireServer(unpack(tbl9))
							now = tick()
						end
					end

					VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.One, false, game)
					task.wait(0.001)
					VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.One, false, game)
					task.wait(0.05)
					VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Two, false, game)
					task.wait(0.001)
					VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Two, false, game)
					task.wait(0.05)
					VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Three, false, game)
					task.wait(0.001)
					VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Three, false, game)
					task.wait(0.05)
					VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Four, false, game)
					task.wait(0.001)
					VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Four, false, game)
				else
					task.wait(0.1)
					print("spaming m1")

					if character2:GetAttribute("mobile") then
						communicate:FireServer(unpack(tbl8))
					else
						communicate:FireServer(unpack(tbl6))
					end

					task.wait(0.1)
					communicate:FireServer(unpack(tbl7))
					task.wait(0.1)

					-- FARM WITH MOVE 3: press key 3 when the move comes off cooldown
					if not now3 or tick() - now3 >= 0.9 then
						VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Three, false, game)
						task.wait(0.001)
						VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Three, false, game)
						now3 = tick()
					end
				end
			end

			flag11 = false
		end)
	end

	local function fn21(arg, arg2, arg3)
		local cframe = CFrame.new(0, 0, 0)
		local v3, v4 = cframe:ToEulerAnglesYXZ()
		local cframe2 = CFrame.fromEulerAnglesYXZ(0, v4, 0)
		return CFrame.new((CFrame.new(cframe.Position) * cframe2 * CFrame.new(0, arg2, arg3)).Position) * cframe2
	end

	local function fn22()
		local now = nil
		-- [NEW] Timestamp of the last target re-pick (so we always aim at the lowest-health player)
		local lastRetarget = 0
		v2 = fn7()

		RunService.Heartbeat:Connect(function()
			if not flag3 then
				if flag4 then
					flag4 = false
					fn19()
					v2 = fn7()
				end

				return
			end

			if flag9 then
				return
			end

			-- Block the loop that pulls the character around while Ult is active or waiting
			if flag7 then
				-- Watchdog: if flag7 stays stuck for more than 15 seconds, unlock it automatically so farming continues.
				if flag7Start and (tick() - flag7Start > 15) then
					flag7 = false
					flag7Start = nil
					warn("[Project Eternal] Watchdog: auto-unlocked flag7 after 15s.")
				end
				return
			end

			if not v2 then
				flag4 = false
				fn19()
				v2 = fn7()
				return
			end

			-- [NEW] Every 0.5 seconds re-check: if someone has MUCH LESS HEALTH, switch the target to them
			if tick() - lastRetarget >= 0.5 then
				lastRetarget = tick()
				local betterTarget = fn7()
				if betterTarget and betterTarget ~= v2 then
					v2 = betterTarget
					flag4 = false
				end
			end

			local character = v2.Character
			local character2 = localPlayer.Character
			if not character2 then
				return
			end

			-- Auto Ult: ON BY DEFAULT. Only stops running when you turn it off with the "Auto Ult" button.
			local autoUltEnabled = getgenv().AutoUlt
			if autoUltEnabled == nil then
				autoUltEnabled = true
			end

			local isUltReady = false
			if autoUltEnabled then
				pcall(function()
					if character2:GetAttribute("Ulted") then
						return
					end
					local pg = localPlayer:FindFirstChild("PlayerGui")
					local bar = pg and pg:FindFirstChild("Bar")
					local magicHealth = bar and bar:FindFirstChild("MagicHealth")
					local healthContainer = magicHealth and magicHealth:FindFirstChild("Health")
					local barFill = healthContainer and healthContainer:FindFirstChild("Bar")
					if barFill and barFill.Size.X.Scale >= 1.0 then
						isUltReady = true
					end
				end)
			end

			if isUltReady and not character2:FindFirstChildWhichIsA("ForceField") then
				if not flag7 then
					if flag4 then
						flag4 = false
					end

					fn19()
					flag7 = true
					flag7Start = tick()

					-- Wrap the ENTIRE Ult sequence in pcall and ALWAYS unlock flag7,
					-- even on errors -> never gets "frozen" after a few Ults.
					local ok, err = pcall(function()
						local targetCFrame = CFrame.new(97.3707886, 439.510254, -99.4532089, -0.913973749, 5.35401981e-08, -0.405773371, 6.95318718e-08, 1, -2.46692053e-08, 0.405773371, -5.07611873e-08, -0.913973749)

						pcall(function()
							if localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
								localPlayer.Character.HumanoidRootPart.CFrame = targetCFrame
							end
						end)

						task.wait(0.05)

						-- Step 1: Activate Ult (G key) - try up to 3 times
						-- (sometimes it is in the middle of a move so the Ult does not pop)
						local popped = false
						local MAX_ULT_TRIES = 3
						local ANIM_WAIT = 1.3 -- wait for the transformation animation to finish

						for attempt = 1, MAX_ULT_TRIES do
							local ch = localPlayer.Character
							if not ch then
								break
							end
							if ch:GetAttribute("Ulted") then
								popped = true
								break
							end

							if attempt > 1 then
								warn("[Project Eternal] Ult has not popped, retry " .. attempt .. "/" .. MAX_ULT_TRIES)
								pcall(function()
									local root = ch:FindFirstChild("HumanoidRootPart")
									if root then
										root.CFrame = targetCFrame
										root.AssemblyLinearVelocity = Vector3.zero
									end
								end)
								task.wait(0.05)
							end

							local communicate = ch:FindFirstChild("Communicate")
							if communicate then
								pcall(communicate.FireServer, communicate, {
									Goal = "KeyPress",
									Key = Enum.KeyCode.G,
									MousePos = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
								})
							end

							VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.G, false, game)
							task.wait(0.1)
							VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.G, false, game)

							-- wait up to ANIM_WAIT seconds to see whether the Ult pops
							local waitStart = tick()
							while tick() - waitStart < ANIM_WAIT do
								local cur = localPlayer.Character
								if cur and cur:GetAttribute("Ulted") then
									popped = true
									break
								end
								task.wait(0.05)
							end

							if popped then
								-- keep the same animation wait time as the original
								local remain = ANIM_WAIT - (tick() - waitStart)
								if remain > 0 then
									task.wait(remain)
								end
								break
							end

							task.wait(0.25)
						end

						-- Ult still did not pop after 3 tries -> show the error, then reset the character
						if not popped then
							warn("[Project Eternal] Ult did not pop after " .. MAX_ULT_TRIES .. " tries, resetting character.")
							pcall(function()
								game:GetService("StarterGui"):SetCore("SendNotification", {
									Title = "Project Eternal",
									Text = "The Popping Ult Had An Error Resetting.",
									Duration = 5,
								})
							end)
							pcall(function()
								local ch = localPlayer.Character
								local hum = ch and ch:FindFirstChildOfClass("Humanoid")
								if hum then
									hum.Health = 0
								elseif ch then
									ch:BreakJoints()
								end
							end)
							return
						end

						local communicate = (localPlayer.Character or character2):FindFirstChild("Communicate")

						-- Step 2: Use MOVE 3 (key 3)
						if communicate then
							pcall(communicate.FireServer, communicate, {
								Goal = "KeyPress",
								Key = Enum.KeyCode.Three,
								MousePos = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
							})
						end

						VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Three, false, game)
						task.wait(0.1)
						VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Three, false, game)

						-- Press move 3 one more time to prevent the move from getting stuck
						task.wait(0.2)
						VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Three, false, game)
						task.wait(0.1)
						VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Three, false, game)

						-- Step 3: Hold a fixed position for 8 seconds
						local ultStartTime = tick()
						while tick() - ultStartTime < 8.0 do
							pcall(function()
								if localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
									localPlayer.Character.HumanoidRootPart.CFrame = targetCFrame
									localPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
									localPlayer.Character.HumanoidRootPart.AssemblyAngularVelocity = Vector3.zero
								end
							end)
							RunService.RenderStepped:Wait()
						end
					end)

					-- ALWAYS unlock, even when pcall reports an error
					flag7 = false
					flag7Start = nil

					if not ok then
						warn("[Project Eternal] Auto Ult error, farm auto-unlocked: " .. tostring(err))
					end
				end

				return
			end

			if character2:GetAttribute("Ulted") then
				flag6 = true
				flag4 = false
				return
			end

			flag6 = false
			if flag8 then
				return
			end

			if not character then
				if flag4 then
					flag4 = false
				end

				fn19()
				v2 = fn7()
				return
			end

			if character:GetAttribute("Ulted") or character:FindFirstChild("Counter") then
				if flag4 then
					flag4 = false
				end

				fn19()
				v2 = fn7()
				return
			end

			local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			local humanoidRootPart2 = character2:FindFirstChild("HumanoidRootPart")
			local humanoid2 = character2:FindFirstChildOfClass("Humanoid")

			if not humanoidRootPart or not humanoid or not humanoidRootPart2 or not humanoid2 then
				if flag4 then
					flag4 = false
				end

				fn19()
				v2 = fn7()
				return
			end

			if character:FindFirstChild("AbsoluteImmortal") then
				if humanoid.Health <= 20 then
					fn19()
					v2 = fn7()
					return
				end

				if not now then
					now = tick()
				elseif tick() - now >= 5 or character:FindFirstChildOfClass("Humanoid") and character.Humanoid.Health <= 10 then
					now = nil

					if flag4 then
						flag4 = false
					end

					fn19()
					v2 = fn7()
					return
				end
			end

			if humanoid.Health <= 0 then
				if flag4 then
					flag4 = false
				end

				fn19()
				v2 = fn7()
				return
			end

			local torso = character:FindFirstChild("Torso")

			if not torso or torso.Transparency == 1 then
				if flag4 then
					flag4 = false
				end

				fn19()
				v2 = fn7()
				return
			end

			if not flag4 then
				print("[Project Eternal] Targeting: " .. v2.Name)
				flag4 = true
				humanoid2.AutoRotate = false
			end

			humanoidRootPart2.AssemblyLinearVelocity = Vector3.zero
			humanoidRootPart2.AssemblyAngularVelocity = Vector3.zero

			if currentCamera then
				character2:SetAttribute("NoHeadLerp", true)
				currentCamera.CameraSubject = humanoid
			end

			if not getgenv().desync then
				humanoidRootPart2.CFrame = fn21(humanoidRootPart, 0, 5)
				cFrame = humanoidRootPart2.CFrame
			else
				cFrame = fn21(humanoidRootPart, 0, 5)
			end

			if sethiddenproperty then
				sethiddenproperty(humanoidRootPart2, "PhysicsRepRootPart", humanoidRootPart)
			end
		end)
	end

	local function fn23()
		local VirtualUser = game:GetService("VirtualUser")

		localPlayer.Idled:Connect(function()
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)
	end

	task.spawn(function()
		while true do
			local character = localPlayer.Character
			local attribute = character and character:GetAttribute("Character")
			character = character and character:FindFirstChild("Communicate")

if character and attribute ~= "Bald" then
    pcall(character.FireServer, character, { Goal = "Change Character", Character = "Bald" })
end

			task.wait(1)
		end
	end)

	task.spawn(function()
		local thrown = workspace:FindFirstChild("Thrown")

		if thrown then
			for _, child in pairs(thrown:GetChildren()) do
				if child.Name:lower():find("debris") or child.Name:lower() == "part" then
					task.spawn(pcall, _deleteNew, child)
				end
			end

			thrown.ChildAdded:Connect(function(child)
				if child.Name:lower():find("debris") or child.Name:lower() == "part" then
					task.spawn(pcall, _deleteNew, child)
				end
			end)
		end
	end)

	task.wait(1)
	fn20()
	fn22()
	fn23()
end

-- [PART 9: BACKGROUND LOOP FOR STATE SYNC]
task.spawn(function()
	while true do
		if getgenv().desync then
			local now = tick()

			repeat
				task.wait()
			until tick() - now >= 20 or not getgenv().desync

			getgenv().desync = nil
		end

		RunService.RenderStepped:Wait()
	end
end)

task.spawn(function()
	while task.wait(0.25) do
		local character = localPlayer.Character
		local communicate = character and character:FindFirstChild("Communicate")

		if communicate then
			pcall(communicate.FireServer, communicate, { Goal = "Emote Spin" })
		end
	end
end)

task.spawn(function()
	while true do
		local timeElapsedSeconds = tick() - serverJoinTick
		local reachedTimeLimit = timeElapsedSeconds >= 300

		if doServerHop and flag3 and (reachedTimeLimit or #Players:GetPlayers() <= 7 or n8 >= 7) and not flag6 and not flag8 then
			if reachedTimeLimit then
				print("[Project Eternal] Stayed in the server for 5 minutes -> Auto server hopping...")
			end
			doHopServer()
		end

		task.wait(1)
	end
end)

task.defer(function()
	task.wait(2)
	if getgenv().FarmState == true or getgenv().FarmState == "true" then
		flag3 = true
		if fn4 then
			fn4(true)
		end
		print("[Project Eternal] Restored FarmState = ON")
	end
	if getgenv().DoServerHop ~= nil then
		doServerHop = getgenv().DoServerHop
	end
end)