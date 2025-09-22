-- componets
local renderer = game:GetService("RunService")
local screenholder = renderer:IsStudio() and game.Players.LocalPlayer.PlayerGui or gethui()
local screen = nil

local feather_ui = {} do
	
	feather_ui.createrenderobject = function(class, properties)
		local instance = Instance.new(class)
		for k, v in pairs(properties) do
			if typeof(k) ~= 'string' then
				continue
			end

			instance[k] = v
		end
		return instance
	end
	
end

-- screengui's hold render objects pretty well.
screen = Instance.new("ScreenGui")
screen.Name = "impulse - screen"
screen.Parent = screenholder
screen.IgnoreGuiInset = true;
screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
--

-- container
local bg = feather_ui.createrenderobject("Frame", {
	Name = "bg",
	Position = UDim2.new(0.058, 0.000, 0.131, 0.000),
	Size = UDim2.new(0.000, 275.000, 0.000, 370.000),
	Parent = screen,
	BackgroundTransparency = 0.7,
	BackgroundColor3 = Color3.fromRGB(0, 0, 0),
	BorderSizePixel = 0,
	ZIndex = 1
})

local UIStroke = feather_ui.createrenderobject("UIStroke", {
	Parent = bg,
	Color = Color3.fromRGB(0, 0, 0),
	Thickness = 1,
	LineJoinMode = Enum.LineJoinMode.Bevel,
	Transparency = 0
})

-- these are all useless
local header = feather_ui.createrenderobject("Frame", {
	Name = "header",
	Position = UDim2.new(0.000, 0.000, -0.003, 0.000),
	Size = UDim2.new(0.000, 275.000, 0.000, 72.000),
	Parent = bg,
	BackgroundColor3 = Color3.fromRGB(0, 0, 0),
	BorderSizePixel = 0,
	ZIndex = 1
})

local picture = feather_ui.createrenderobject("ImageLabel", {
	Name = "picture",
	Position = UDim2.new(0.000, 0.000, 0.000, 0.000),
	Size = UDim2.new(0.000, 275.000, 0.000, 70.000),
	Parent = header,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	ImageColor3 = Color3.fromRGB(255, 255, 255),
	Image = "rbxassetid://91233056015282",
	BorderSizePixel = 0,
	ZIndex = 1
})

local title = feather_ui.createrenderobject("TextLabel", {
	Name = "title",
	Position = UDim2.new(0.000, 0.000, 0.195, 0.000),
	Size = UDim2.new(0.000, 275.000, 0.000, 15.000),
	Parent = bg,
	Font = Enum.Font.Oswald,
	Text = 'Feather',
	BackgroundTransparency = 0.7,  
	TextXAlignment = Enum.TextXAlignment.Center,
	TextYAlignment = Enum.TextYAlignment.Center,
	TextColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundColor3 = Color3.fromRGB(0, 0, 0),
	TextSize = 14,
	BorderSizePixel = 0,
	ZIndex = 1
})

local bar = feather_ui.createrenderobject("Frame", {
	Name = "bar",
	Position = UDim2.new(0.000, 0.000, 0.190, 0.000),
	Size = UDim2.new(0.000, 275.000, 0.000, 1.000),
	Parent = bg,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BorderSizePixel = 0,
	ZIndex = 1
})

local footermain = feather_ui.createrenderobject("Frame", {
	Name = "footermain",
	Position = UDim2.new(0.000, 0.000, 0.935, 0.000),
	Size = UDim2.new(0.000, 275.000, 0.000, 24.000),
	Parent = bg,
	BackgroundColor3 = Color3.fromRGB(0, 0, 0),
	BorderSizePixel = 0,
	ZIndex = 1
})

local featurenumber = feather_ui.createrenderobject("TextLabel", {
	Name = "featurenumber",
	Position = UDim2.new(0.000, 7.000, 0.000, 0.000),
	Size = UDim2.new(0.000, 275.000, 0.000, 24.000),
	Parent = footermain,
	BackgroundTransparency = 1,
	Font = Enum.Font.Oswald,
	Text = '1/15',
	TextXAlignment = Enum.TextXAlignment.Left,
	TextYAlignment = Enum.TextYAlignment.Center,
	TextColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	TextSize = 12,
	BorderSizePixel = 0,
	ZIndex = 1
})

local bar_1 = feather_ui.createrenderobject("Frame", {
	Name = "bar_1",
	Position = UDim2.new(0.000, 0.000, 0.000, -1.000),
	Size = UDim2.new(0.000, 275.000, 0.000, 1.000),
	Parent = footermain,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BorderSizePixel = 0,
	ZIndex = 1
})

local home = feather_ui.createrenderobject("Frame", {
	Name = "home",
	Position = UDim2.new(0, 0, 0.235, 0),
	Size = UDim2.new(0, 275, 0, 258),
	Parent = bg,
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	ZIndex = 1
})

local scroll_bar = feather_ui.createrenderobject("Frame", {
	Name = "scroll_bar",
	Position = UDim2.new(-0.080, 0.000, 0.235, 0.000),
	Size = UDim2.new(0.000, 10.000, 0.000, 260.000),
	Parent = bg,
	BackgroundTransparency = 0.4000000059604645,
	BackgroundColor3 = Color3.fromRGB(67, 71, 79),
	BorderSizePixel = 0,
	ZIndex = 1
})

local UIStroke = feather_ui.createrenderobject("UIStroke", {
	Parent = scroll_bar,
	Color = Color3.fromRGB(0, 0, 0),
	Thickness = 1,
	LineJoinMode = Enum.LineJoinMode.Bevel,
	Transparency = 0
})

selected_side = feather_ui.createrenderobject("Frame", {
	Name = "Frame",
	Position = UDim2.new(0.000, 0.000, 0.000, 0.000),
	Size = UDim2.new(0.000, 10.000, 0.000, 24.000),
	Parent = scroll_bar,
	BackgroundTransparency = 0.6000000238418579,
	BackgroundColor3 = Color3.fromRGB(75, 209, 216),
	BorderSizePixel = 0,
	ZIndex = 1
})


local kitty = feather_ui.createrenderobject("ImageLabel", {
	Name = "kitty",
	Position = UDim2.new(0.478, 0.000, 0.250, 0.000),
	Size = UDim2.new(0.000, 12.000, 0.000, 12.000),
	Parent = footermain,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	ImageColor3 = Color3.fromRGB(255, 255, 255),
	Image = "rbxassetid://134925093443612",
	BorderSizePixel = 0,
	ZIndex = 1
})

local selected = feather_ui.createrenderobject("Frame", {
	Name = "selected",
	Position = UDim2.new(0.000, 0.000, 0.000, 0.000),
	Size = UDim2.new(0.000, 275.000, 0.000, 24.000),
	Parent = screen,
	BackgroundTransparency = 0.6000000238418579,
	BackgroundColor3 = Color3.fromRGB(75, 209, 216),
	BorderSizePixel = 0,
	ZIndex = -1
})

--local overlay = feather_ui.createrenderobject("Frame", {
--	Name = "overlay",
--	Position = UDim2.new(0.000, 0.000, 0.000, 0.000),
--	Size = UDim2.new(0.000, 660.000, 0.000, 457.000),
--	Parent = screen,
--	BackgroundTransparency = 0.800000011920929,
--	BackgroundColor3 = Color3.fromRGB(100, 100, 100),
--	BorderSizePixel= 0,
--	ZIndex = 1,
--	Visible = false 
--})

--local text = feather_ui.createrenderobject("TextLabel", {
--	Name = "text",
--	Position = UDim2.new(0.348, 0.000, 0.444, 0.000),
--	Size = UDim2.new(0.000, 200.000, 0.000, 50.000),
--	Parent = overlay,
--	BackgroundTransparency = 1,
--	Font = Enum.Font.Oswald,
--	Text = 'press any button....',
--	TextXAlignment = Enum.TextXAlignment.Center,
--	TextYAlignment = Enum.TextYAlignment.Center,
--	TextColor3 = Color3.fromRGB(255, 255, 255),
--	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
--	TextSize = 20,
--	BorderSizePixel = 0,
--	ZIndex = 1
--})

-- no longer useless

-- our real code
-- folders

local ui = {
	flags = {},
	index = 1,
	tabs = {},
	previous = {},
	activetab = nil,
	active = true
}

local function text(what, color)
	local colors = {
		["red"] = "ff0000",
		["blue"] = "09189c",
		["white"] = "ffffff",
		["green"] = "15ba2c",
		["pink"] = "f6b8f9"
	}

	color = colors[color]
	if not color then
		color = "ffffff"
	end

	return "<font color=".. '"'.."#" ..color..'"'..">"..what.."</font>"
end

function ui:create_tab(name, params)
	local tab = {
		flag = params and params.flag or "stupid flag",
		name = name or "player",
		position = UDim2.new(0,0,#ui.tabs > 0 and (0.095*#ui.tabs) or 0, 0),
		componets = {},
		ignoredcomponets = {},
		type = "tab",
		damp = 0
	}
	
	tab.frame = feather_ui.createrenderobject("Frame", {
		Name = tab.flag.."_folder", -- this is useless btw
		Position = tab.position,
		Size = UDim2.new(0.000, 275.000, 0.000, 24.000),
		Parent = home,
		BackgroundTransparency = 1,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0,
		ZIndex = 5
	})
	
	local title = feather_ui.createrenderobject("TextLabel", {
		Name = "tab_title",
		Position = UDim2.new(0.030, 1.000, -0.08, 0.000),
		Size = UDim2.new(0.000, 275.000, 0.000, 24.000),
		Parent = tab.frame,
		BackgroundTransparency = 1,
		Font = Enum.Font.Oswald,
		Text = tab.name,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Center,
		RichText = true,
		TextColor3 = Color3.fromRGB(200, 200, 200),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 17,
		BorderSizePixel = 0,
		ZIndex = 1
	})
	
	tab.arrow = feather_ui.createrenderobject("TextLabel", {
		Name = "TextLabel",
		Position = UDim2.new(0.863, 0.000, -0.13, 0.000),
		Size = UDim2.new(0.000, 24.000, 0.000, 24.000),
		Parent = tab.frame,
		BackgroundTransparency = 1,
		Font = Enum.Font.Oswald,
		Text = '>',
		TextXAlignment = Enum.TextXAlignment.Center,
		TextYAlignment = Enum.TextYAlignment.Center,
		TextColor3 = Color3.fromRGB(177, 178, 179),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 24,
		BorderSizePixel = 0,
		ZIndex = 1
	})
	
	tab.objectsholder = feather_ui.createrenderobject("Frame", {
		Name = tab.flag,
		Position = UDim2.new(0, 0, 0.235, 0),
		Size = UDim2.new(0, 275, 0, 258),
		Parent = bg,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = 1,
		Visible = false
	})
	
	-- sections
	function tab:add_section(name, params, dev)
		local section = {
			name = name or text("[ ", "blue").. text("Gun Mods", "white") .. text(" ]", "blue"),
			color = params and params.color or Color3.fromRGB(0, 165,255),
			position = UDim2.new(0.316,0,#tab.ignoredcomponets > 0 and (0.095*#tab.ignoredcomponets)+0.033 or 0, 0),
			type = "section",
		}
		section.position = dev and UDim2.new(0.316,0,#dev.ignoredcomponets > 0 and (0.095*#dev.ignoredcomponets)+0.033 or 0, 0) or section.position
		if dev == nil then
			tab.damp += 0.033
		else
			dev.damp += 0.033
		end
		section.label = feather_ui.createrenderobject("TextLabel", {
			Name = "TextLabel",
			Position = section.position,
			Size = UDim2.new(0.000, 100.000, 0.000, 18.000),
			Parent = dev == nil and tab.objectsholder or dev.objectsholder,
			BackgroundTransparency = 1,
			Font = Enum.Font.Oswald,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			RichText = true,
			--TextColor3 = section.color,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 20,
			BorderSizePixel = 0,
			ZIndex = 1,
			Text = section.name,
		})
		
		function section:rename(what)
			section.name = what -- idk fun customizable
			section.label.Text = what
			return;
		end
		
		--tab.componets[#tab.componets+1] = section
		if dev then
			dev.ignoredcomponets[#dev.ignoredcomponets+1] = "section"
		else
			tab.ignoredcomponets[#tab.ignoredcomponets+1] = "section"
		end
		return section;
	end
	
	-- sliders
	function tab:add_slider(name, params, dev)
		
		local slider = {
			name = name or "ragebot fov",
			callback = params and params.callback or print;
			flag = params and params.flag or "flag123",
			min = params and params.min or 0,
			max = params and params.max or 26,
			float = params and params.float or 1,
			value = params and params.default or params and params.min or 50,
			type = "slider",
			suffix = params and params.suffix or "",
			position = UDim2.new(0,0,#tab.ignoredcomponets > 0 and (0.095*#tab.ignoredcomponets)+tab.damp or 0, 0)
		}
		
		slider.position = dev and UDim2.new(0,0,#dev.ignoredcomponets > 0 and (0.095*#dev.ignoredcomponets)+dev.damp or 0, 0) or slider.position

		slider.holder = feather_ui.createrenderobject("Frame", {
			Name = "holder",
			Position = slider.position,
			Size = UDim2.new(0.000, 250.000, 0.000, 24.000),
			Parent = dev == nil and tab.objectsholder or dev.objectsholder,
			BackgroundTransparency = 1,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BorderSizePixel = 0,
			ZIndex = 1
		})

		slider.title = feather_ui.createrenderobject("TextLabel", {
			Name = "feature",
			Position = UDim2.new(0.030, 1.000, 0.000, 0.000),
			Size = UDim2.new(0.000, 275.000, 0.000, 24.000),
			Parent = slider.holder,
			BackgroundTransparency = 1,
			Font = Enum.Font.Oswald,
			Text = slider.name,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			RichText = true,
			TextColor3 = Color3.fromRGB(200, 200, 200),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 17,
			BorderSizePixel = 0,
			ZIndex = 1
		})
					
		local base = feather_ui.createrenderobject("Frame", {
			Name = "base",
			Position = UDim2.new(0.500, 0.000, 0.500, 0.000),
			Size = UDim2.new(0, 100, 0.000, 1.000),
			Parent = slider.holder,
			BackgroundColor3 = Color3.fromRGB(177, 178, 179),
			BorderSizePixel = 0,
			ZIndex = 1
		})

		local UIStroke = feather_ui.createrenderobject("UIStroke", {
			Parent = base,
			Color = Color3.fromRGB(0, 0, 0),
			Thickness = 1,
			LineJoinMode = Enum.LineJoinMode.Round,
			Transparency = 0
		})

		local knob = feather_ui.createrenderobject("Frame", {
			Name = "knob",
			Position = UDim2.new(0.000, 0.000, 0.000, 0.000),
			Size = UDim2.new(0.000, 8.000, 0.000, 1.000),
			Parent = base,
			BackgroundColor3 = Color3.fromRGB(69, 126, 134),
			BorderSizePixel = 0,
			ZIndex = 1
		})

		local UICorner = feather_ui.createrenderobject("UICorner", {
			Parent = knob,
			CornerRadius = UDim.new(0, 10000)
		})

		slider.number = feather_ui.createrenderobject("TextLabel", {
			Name = "TextLabel",
			Position = UDim2.new(1.060, 0.000, -12.000, 0.000),
			Size = UDim2.new(0.000, 25.000, 0.000, 25.000),
			Parent = base,
			BackgroundTransparency = 1,
			Font = Enum.Font.Oswald,
			Text = slider.value,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextColor3 = Color3.fromRGB(176, 177, 178),
			BackgroundColor3 = Color3.fromRGB(176, 177, 178),
			TextSize = 14,
			BorderSizePixel = 0,
			ZIndex = 1
		})
		
		function slider:set(number)
			self.value = math.clamp(number, self.min, self.max)
			--
			game:GetService("TweenService"):Create(knob, TweenInfo.new(.2), {Position = UDim2.new((self.value - self.min) / (self.max - self.min)/1.09, 0, 0, 0)}):Play()
			--knob.Position = UDim2.new((self.value - self.min) / (self.max - self.min)/1.09, 0, 0, 0)
			slider.number.Text = string.format(self.float == 1 and "%.0f" or ("%.0" .. tostring(self.float) .. "f"), self.value)
			slider.number.Text = slider.number.Text .. self.suffix
			--
			self.callback(self.value)
			ui.flags[self.flag] = self.value
			
		end
		
		slider:set(slider.value)
		if dev then
			dev.ignoredcomponets[#dev.ignoredcomponets+1] = "toggle" 
			dev.componets[#dev.componets+1] = slider
		else
			tab.ignoredcomponets[#tab.ignoredcomponets+1] = "toggle" 
			tab.componets[#tab.componets+1] = slider
		end

		return slider
	end
	
	-- keypicker
	function tab:add_keypicker(name, params, dev)
		local objecthandler = dev and dev.objectsholder or nil
		local keypicker = {
			name = name or "KeyPicker",
			flag = params and params.flag or "keypicker key",
			callback = params and params.callback or print,
			default = params and params.default or "F",
			position = UDim2.new(0,0,#tab.ignoredcomponets > 0 and (0.095*#tab.ignoredcomponets)+tab.damp or 0, 0),
			type = "keypicker"
		}
		keypicker.position = dev and UDim2.new(0,0,#dev.ignoredcomponets > 0 and (0.095*#dev.ignoredcomponets)+dev.damp or 0, 0) or keypicker.position
		
		keypicker.holder = feather_ui.createrenderobject("Frame", {
			Name = "holder",
			Position = keypicker.position,
			Size = UDim2.new(0.000, 250.000, 0.000, 24.000),
			Parent = dev == nil and tab.objectsholder or dev.objectsholder,
			BackgroundTransparency = 1,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BorderSizePixel = 0,
			ZIndex = 1
		})

		keypicker.title = feather_ui.createrenderobject("TextLabel", {
			Name = "feature",
			Position = UDim2.new(0.030, 1.000, 0.000, 0.000),
			Size = UDim2.new(0.000, 275.000, 0.000, 24.000),
			Parent = keypicker.holder,
			BackgroundTransparency = 1,
			Font = Enum.Font.Oswald,
			Text = keypicker.name,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			RichText = true,
			TextColor3 = Color3.fromRGB(200, 200, 200),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 17,
			BorderSizePixel = 0,
			ZIndex = 1
		})

		
		local line = feather_ui.createrenderobject("Frame", {
			Name = "line",
			Position = UDim2.new(.98, 0.000, 0.71, 0.000),
			Size = UDim2.new(0.000, 15.000, 0.000, 1.000),
			Parent = keypicker.holder,
			BackgroundColor3 = Color3.fromRGB(200, 200, 200),
			BorderSizePixel = 0,
			ZIndex = 1
		})
		
		-- 0.863, 0.000, 0.275, 0.000
		-- 0.016, 0,     0.3,   0

		local UIStroke = feather_ui.createrenderobject("UIStroke", {
			Parent = line,
			Color = Color3.fromRGB(0, 0, 0),
			Thickness = 1,
			LineJoinMode = Enum.LineJoinMode.Round,
			Transparency = 0
		})

		keypicker.key = feather_ui.createrenderobject("TextLabel", {
			Name = "key",
			Position = UDim2.new(1, 0.000, 0.375, 0.000),
			Size = UDim2.new(0.000, 7.000, 0.000, 1.000),
			Parent = keypicker.holder,
			BackgroundTransparency = 1,
			Font = Enum.Font.Oswald,
			Text = 'K',
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextColor3 = Color3.fromRGB(200, 200, 200),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 14,
			BorderSizePixel = 0,
			ZIndex = 1,
			TextStrokeTransparency = 0
		})
		
		function keypicker:set(key1)
			print(key1)
			if tostring(key1) == "Enum.UserInputType.Keyboard" then
				return;
			end
			key1= tostring(key1)
			if key1:find("MouseMovement") then return end;
			
			key1= key1:gsub("Enum.KeyCode.", "")
			key1= key1:gsub("Enum.UserInputType.", "")
			
			ui.flags[keypicker.flag] = key1
			keypicker.callback(key1)
			
			if key1== "MouseButton1" then
				key1= "MB1"
			elseif key1== "MouseButton2" then
				key1= "MB2"
			elseif key1== "MouseButton3" then
				key1= "MB3"
			end
			
			keypicker.key.Text = key1
		end
		
		
		if dev then
			dev.ignoredcomponets[#dev.ignoredcomponets+1] = "keypicker" 
			dev.componets[#dev.componets+1] = keypicker
		else
			tab.ignoredcomponets[#tab.ignoredcomponets+1] = "keypicker" 
			tab.componets[#tab.componets+1] = keypicker
		end
		
		keypicker:set("Enum.KeyCode.E")
		return keypicker
	end
	
	-- switches / toggles
	
	function tab:add_switch(name, params, dev)
		local objecthandler = dev and dev.objectsholder or nil
		local toggle = {
			name = name or "desync",
			flag = params and params.flag or "stupid desync flag",
			callback = params and params.callback or print,
			default = params and params.default ~= nil and params.default or false,
			position = UDim2.new(0,0,#tab.ignoredcomponets > 0 and (0.095*#tab.ignoredcomponets)+tab.damp or 0, 0),
			type = "toggle",
			hasselecter = false
		}
		toggle.position = dev and UDim2.new(0,0,#dev.ignoredcomponets > 0 and (0.095*#dev.ignoredcomponets)+dev.damp or 0, 0) or toggle.position
		
		toggle.holder = feather_ui.createrenderobject("Frame", {
			Name = "holder",
			Position = toggle.position,
			Size = UDim2.new(0.000, 275.000, 0.000, 24.000),
			Parent = objecthandler == nil and tab.objectsholder or objecthandler,
			BackgroundTransparency = 1,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BorderSizePixel = 0,
			ZIndex = 50
		})
		
		local title = feather_ui.createrenderobject("TextLabel", {
			Name = toggle.flag,
			Position = UDim2.new(0.030, 1.000, 0.000, 0.000),
			Size = UDim2.new(0.000, 275.000, 0.000, 24.000),
			BackgroundTransparency = 1,
			Font = Enum.Font.Oswald,
			Parent = toggle.holder,
			Text = toggle.name,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			RichText = true,
			TextColor3 = Color3.fromRGB(200, 200, 200),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 17,
			BorderSizePixel = 0,
			ZIndex = 1
		})
		
		local slider_base = feather_ui.createrenderobject("Frame", {
			Name = "base",
			Position = UDim2.new(0.863, 0.000, 0.275, 0.000),
			Size = UDim2.new(0.000, 30.000, 0.000, 10.000),
			Parent = toggle.holder,
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 2,
			ZIndex = 1
		})

		local UICorner = feather_ui.createrenderobject("UICorner", {
			Parent = slider_base,
			CornerRadius = UDim.new(0, 100)
		})

		local knob = feather_ui.createrenderobject("Frame", {
			Name = "knob",
			Position = UDim2.new(0.050, 0.000, 0.073, 0.000),
			Size = UDim2.new(0.000, 15.000, 0.000, 8.000),
			Parent = slider_base,
			BackgroundColor3 = Color3.fromRGB(255, 0, 0),
			BorderSizePixel = 0,
			ZIndex = 1
		})

		local UICorner_1 = feather_ui.createrenderobject("UICorner", {
			Parent = knob,
			CornerRadius = UDim.new(10, 1000)
		})
		local tweenservice = game:GetService("TweenService")
		
		function toggle:selecter(params)
			local selecter = {
				flag = params and params.flag or "luhser",
				options = params and params.options or {"multi", "launcher", "explosive"},
				current = params and params.default or 1,
				callback = params and params.callback or print,
				type = "selector"
			}
			toggle.hasselecter = true
			local left = feather_ui.createrenderobject("TextLabel", {
				Name = "left",
				Position = UDim2.new(0.500, 0.000, 0.2, 0.000),
				Size = UDim2.new(0.000, 12.000, 0.000, 12.000),
				Parent = toggle.holder,
				BackgroundTransparency = 1,
				Font = Enum.Font.Oswald,
				Text = '<',
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextColor3 = Color3.fromRGB(177, 178, 179),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 24,
				BorderSizePixel = 0,
				ZIndex = 1,
				TextStrokeTransparency = 0
			})

			local right = feather_ui.createrenderobject("TextLabel", {
				Name = "right",
				Position = UDim2.new(0.750, 0.000, 0.2, 0.000),
				Size = UDim2.new(0.000, 12.000, 0.000, 12.000),
				Parent = toggle.holder,
				BackgroundTransparency = 1,
				Font = Enum.Font.Oswald,
				Text = '>',
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextColor3 = Color3.fromRGB(177, 178, 179),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 24,
				BorderSizePixel = 0,
				ZIndex = 1,
				TextStrokeTransparency = 0,
			})

			selecter.chosen = feather_ui.createrenderobject("TextLabel", {
				Name = "middle",
				Position = UDim2.new(0.570, 0.000, 0.28, 0.000),
				Size = UDim2.new(0.000, 35.000, 0.000, 12.000),
				TextScaled = false,
				Parent = toggle.holder,
				BackgroundTransparency = 1,
				Font = Enum.Font.Oswald,
				Text = selecter.options[selecter.current],
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextColor3 = Color3.fromRGB(177, 178, 179),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 16,
				BorderSizePixel = 0,
				ZIndex = 1,
				TextStrokeTransparency = 0
			})

			function selecter:next()
				if selecter.current < #selecter.options then
					selecter.current = selecter.current + 1
					
				else
					selecter.current = 1
				end
				
				local msg = selecter.options[selecter.current]
				if msg then
					selecter.chosen.Text = msg;
					ui.flags[selecter.flag] = msg;
					selecter.callback(msg);
				end
			end
			
			function selecter:previous()
				if selecter.current > 1 then
					selecter.current = selecter.current - 1
				else
					selecter.current = #selecter.options
				end
				
				local msg = selecter.options[selecter.current]
				if msg then
					selecter.chosen.Text = msg
					ui.flags[selecter.flag] = msg;
					selecter.callback(msg);
				end
				
			end
			toggle.selecter = selecter
			return selecter
		end
		
		function toggle:switch(s) -- functional switch, not visible switch
			if s == nil then
				toggle.callback(not toggle.default)
				ui.flags[toggle.flag] = not toggle.default
				toggle.default = not toggle.default
				
				if toggle.default then
					local info = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
					local tween = tweenservice:Create(knob, info, {Position = UDim2.new(1, -16,0.073, 0)})
					tween:Play()
					tween.Completed:Connect(function()
						knob.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
					end)
				else
					local info = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
					local tween = tweenservice:Create(knob, info, {Position = UDim2.new(0.05, 0,0.073, 0)})
					
					tween:Play()
					tween.Completed:Connect(function()
						knob.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
					end)
				end
			else
				
				if s then
					local info = TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
					local tween = tweenservice:Create(knob, info, {Position = UDim2.new(1, -16,0.073, 0)})
					tween:Play()
					tween.Completed:Connect(function()
						knob.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
					end)
				else
					local info = TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
					local tween = tweenservice:Create(knob, info, {Position = UDim2.new(0.05, 0,0.073, 0)})

					tween:Play()
					tween.Completed:Connect(function()
						knob.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
					end)
				end
		
				toggle.callback(s)
				ui.flags[toggle.flag] = s
				toggle.default = s
			end
		end
		
		toggle:switch(toggle.default)
		if dev then
			dev.ignoredcomponets[#dev.ignoredcomponets+1] = "toggle" 
			dev.componets[#dev.componets+1] = toggle
		else
			tab.ignoredcomponets[#tab.ignoredcomponets+1] = "toggle" 
			tab.componets[#tab.componets+1] = toggle
		end
		
	
		return toggle
	end
	local index = 0
	function tab:add_folder(name, params, dev)
		local folder = {
			flag = params and params.flag or "flag",
			name = name or "fartbutt "..tostring(index),
			type = "folder",
			position = UDim2.new(0,0,#tab.ignoredcomponets > 0 and (0.095*#tab.ignoredcomponets)+tab.damp or 0, 0),
			ignoredcomponets = {},
			componets = {},
			padding = 0

		}
		
		index+=1
		folder.position = dev and UDim2.new(0,0,#dev.ignoredcomponets > 0 and (0.095*#dev.ignoredcomponets)+dev.damp or 0, 0) or folder.position

		folder.holder = feather_ui.createrenderobject("Frame", {
			Name = folder.flag.."_folder",
			Position = folder.position,
			Size = UDim2.new(0.000, 275.000, 0.000, 24.000),
			Parent = dev == nil and tab.objectsholder or dev.objectsholder,
			BackgroundTransparency = 1,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BorderSizePixel = 0,
			ZIndex = 5
		})

		local title = feather_ui.createrenderobject("TextLabel", {
			Name = "folder_title",
			Position = UDim2.new(0.030, 1.000, -0.08, 0.000),
			Size = UDim2.new(0.000, 275.000, 0.000, 24.000),
			Parent = folder.holder,
			BackgroundTransparency = 1,
			Font = Enum.Font.Oswald,
			Text = folder.name,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			RichText = true,
			TextColor3 = Color3.fromRGB(200, 200, 200),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 17,
			BorderSizePixel = 0,
			ZIndex = 1
		})

		folder.arrow = feather_ui.createrenderobject("TextLabel", {
			Name = "TextLabel",
			Position = UDim2.new(0.863, 0.000, -0.13, 0.000),
			Size = UDim2.new(0.000, 24.000, 0.000, 24.000),
			Parent = folder.holder,
			BackgroundTransparency = 1,
			Font = Enum.Font.Oswald,
			Text = '>',
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextColor3 = Color3.fromRGB(177, 178, 179),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 24,
			BorderSizePixel = 0,
			ZIndex = 1
		})

		folder.objectsholder = feather_ui.createrenderobject("Frame", {
			Name = folder.flag,
			Position = UDim2.new(0, 0, 0.235, 0),
			Size = UDim2.new(0, 275, 0, 258),
			Parent = bg,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ZIndex = 1,
			Visible = false
		})
		
		local developer_params = {
			objectsholder = folder.objectsholder,
			ignoredcomponets = folder.ignoredcomponets,
			componets = folder.componets,
			damp = folder.padding
		}
		function folder:add_switch(name, params) -- im a genius!
			return tab:add_switch(name, params, developer_params)
		end
		function folder:add_slider(name, params)
			return tab:add_slider(name, params, developer_params)
		end
		function folder:add_keypicker(name, params)
			return tab:add_keypicker(name, params, developer_params)
		end
		function folder:add_section(name, params)
			return tab:add_section(name, params, developer_params)
		end
		function folder:add_folder(name, params)
			return tab:add_folder(name, params, developer_params)
		end
		
		if dev then
			dev.componets[#dev.componets+1] = folder
			dev.ignoredcomponets[#dev.ignoredcomponets] = "folder"
		else
			tab.componets[#tab.componets+1] = folder
			tab.ignoredcomponets[#tab.ignoredcomponets+1] = "folder"
		end
		return folder
	end
	ui.tabs[#ui.tabs+1] = tab
	return tab
end

-- fix the selected box in the corner
task.spawn(function()
	repeat task.wait() until #ui.tabs > 0
	selected.Parent = ui.tabs[1].frame
	
	while task.wait() do
		if ui.active then
			screen.Enabled = true
		else
			screen.Enabled = false
		end
	end
end)

local function update_foot()
	local one = ui.index
	local two = ui.activetab == nil and #ui.tabs or #ui.activetab.componets
	
	featurenumber.Text = one.."/"..two
end

update_foot()

local fakeselected = selected:Clone()
fakeselected.Visible = false

local fake_side = selected_side:Clone();
fake_side.Visible = false;
fake_side.Parent = selected_side.Parent

local function move_selected(tab, newindex)
	if tab == nil then
		local movetab = ui.tabs[newindex]
		if movetab then
			if selected.Parent == movetab.frame then return end
			local oldpos = selected_side.Position
			selected_side.Position = UDim2.new(0,0,movetab.frame.Position.Y.Scale,0)
			
			selected_side.Visible = false;
			fake_side.Visible = true;
			fake_side.Position = oldpos;
			
			selected.Parent = movetab.frame

			selected.Visible = false;
			fakeselected.Visible = true
			
			fakeselected.Parent = movetab.frame.Parent
			
			game:GetService("TweenService"):Create(fake_side, TweenInfo.new(0.2), {Position = selected_side.Position}):Play()
			local ts = game:GetService("TweenService"):Create(fakeselected, TweenInfo.new(0.2), {Position = movetab.frame.Position})
			ts.Completed:Connect(function()
				fakeselected.Visible = false
				selected.Visible = true
				
				selected_side.Visible = true
				fake_side.Visible = false
			end)
			
			ts:Play()
			ui.index = newindex
		end
	else

		if tab and tab.componets then

			local object = tab.componets[newindex]
			if object then
				ui.index = newindex
				if selected.Parent == object.holder then return end
				selected.Parent = object.holder
				local oldpos = selected_side.Position;
				selected_side.Position = UDim2.new(0,0,object.holder.Position.Y.Scale,0)
				selected_side.Visible = false;
				fake_side.Visible = true;
				fake_side.Position = oldpos;
				selected.Visible = false;
				fakeselected.Visible = true
				fakeselected.Parent = object.holder.Parent
				game:GetService("TweenService"):Create(fake_side, TweenInfo.new(0.2), {Position = selected_side.Position}):Play()
				local ts = game:GetService("TweenService"):Create(fakeselected, TweenInfo.new(0.2), {Position = object.holder.Position})
				ts.Completed:Connect(function()
					fakeselected.Visible = false
					selected.Visible = true
					selected_side.Visible = true
					fake_side.Visible = false
				end)
				game:GetService("TweenService"):Create(fake_side, TweenInfo.new(0.2), {Position = selected_side.Position}):Play()
				ts:Play()
			end
		end
	end
end

-- allow us to interact
local captured,ready = nil, nil;
local uis = game:GetService("UserInputService").InputBegan:Connect(function(input, gpe)
	if input.KeyCode == Enum.KeyCode.Up then
		if ready then return end;
		ui.index = ui.index - 1
		ui.index = math.clamp(ui.index, 1, ui.activetab ~= nil and #ui.activetab.componets or #ui.tabs)
		move_selected(ui.activetab, ui.index)
		update_foot()
		task.spawn(function()
			task.wait(0.25)
			local uis = game:GetService("UserInputService")
			if uis:IsKeyDown(Enum.KeyCode.Up) then
				while uis:IsKeyDown(Enum.KeyCode.Up) do
					ui.index = ui.index - 1
					ui.index = math.clamp(ui.index, 1, ui.activetab ~= nil and #ui.activetab.componets or #ui.tabs)
					move_selected(ui.activetab, ui.index)
					update_foot()
					task.wait(0.15)
				end
			end
		end)
		return
	end
	if input.KeyCode == Enum.KeyCode.LeftBracket then
		ui.active = not ui.active
		return
	end
	if input.KeyCode == Enum.KeyCode.Down then
		if ready then return end;
		ui.index = ui.index + 1
		ui.index = math.clamp(ui.index, 1, ui.activetab ~= nil and #ui.activetab.componets or #ui.tabs)
		move_selected(ui.activetab, ui.index)
		update_foot()
		task.spawn(function()
			task.wait(0.25)
			local uis = game:GetService("UserInputService")
			if uis:IsKeyDown(Enum.KeyCode.Down) then
				while uis:IsKeyDown(Enum.KeyCode.Down) do
					ui.index = ui.index + 1
					ui.index = math.clamp(ui.index, 1, ui.activetab ~= nil and #ui.activetab.componets or #ui.tabs)
					move_selected(ui.activetab, ui.index)
					update_foot()
					task.wait(0.15)
				end
			end
		end)
		return
	end
	
	if input.KeyCode == Enum.KeyCode.Left then
		if ui.activetab == nil then
			return warn"No active tab"
		end
		local componet = ui.activetab.componets[ui.index]
		if componet then
			if componet.type == "toggle" and componet.hasselecter then
				componet.selecter:previous()
				return;
			end
			if componet.type == "slider" then
				componet:set(componet.value-1)
				task.spawn(function()
					task.wait(0.25)
					local uis = game:GetService("UserInputService")
					if not uis:IsKeyDown(Enum.KeyCode.Left) then return end;
					while uis:IsKeyDown(Enum.KeyCode.Left) do
						componet:set(componet.value-1)
						task.wait(0.15)
					end
				end)
			end
			if componet.type == "toggle" then
				componet:switch(false)
			end
		end
		return;
	end
	
	if input.KeyCode == Enum.KeyCode.Right then
		if ui.activetab == nil then -- idk maybe ill make diff pages? who knows
			return warn"No active tab"
		end
		
		local componet = ui.activetab.componets[ui.index]
		if componet then
			if componet.type == "toggle" and componet.hasselecter then
				componet.selecter:next()
			end
			
			if componet.type == "slider" then
				componet:set(componet.value+1)
				
				task.spawn(function()
					task.wait(0.25)
					local uis = game:GetService("UserInputService")
					if not uis:IsKeyDown(Enum.KeyCode.Right) then return end;
					while uis:IsKeyDown(Enum.KeyCode.Right) do
						componet:set(componet.value+1)
						task.wait(0.15)
					end
				end)
			end
		end
		
		return;
	end
	
	
	if input.KeyCode == Enum.KeyCode.Return then
		if ui.activetab == nil then -- we are selecting a primary tab
			local tab = ui.tabs[ui.index]
			if tab then
				ui.previous[#ui.previous+1] = {ui.index, 1} -- entering a new tab, lets add it
				
				ui.activetab = tab;
				ui.index = 1;
				move_selected(ui.activetab, ui.index)
				home.Visible = false;
				title.Text = tab.name
				tab.objectsholder.Visible = true;
				
				selected.Parent = tab.componets[ui.index].holder
			end
		else
			local componet = ui.activetab.componets[ui.index]
			if componet then
				if componet.type == "toggle" then
					componet:switch()
				end
				
				if componet.type == "folder" then
					ui.previous[#ui.previous+1] = {ui.index, ui.activetab}
					
					ui.activetab.objectsholder.Visible = false;
					local newtab = ui.activetab.componets[ui.index]
					if newtab then
						ui.activetab = newtab;
						newtab.objectsholder.Visible = true
	
						ui.index = 1;
						move_selected(ui.activetab, ui.index)
						title.Text = newtab.name
					end
				end
				
				if componet.type == "keypicker" then
					ready = true;
					
					componet.key.Text = "..."
					repeat wait() until not ready;
					if captured and captured.KeyCode then
						componet:set(captured.KeyCode)
					end
					if captured and captured.UserInputType then
						componet:set(captured.UserInputType)
					end
					captured = nil;
					return;
				end
			end
		end
		update_foot()
		return;
	end
	
	if input.KeyCode == Enum.KeyCode.Backspace then
		if ui.activetab == nil then ui.active = false return end
		ui.activetab.objectsholder.Visible = false;
		
		local newtab = #ui.previous
		local data = ui.previous[newtab]
		local index, tab = data[1], data[2]
		if tab == 1 then
			home.Visible = true;
			ui.activetab = nil
			move_selected(nil, index)
			ui.index = index
			title.Text = "Melancholy"
		else
			tab.objectsholder.Visible = true
			move_selected(tab, index)
			ui.activetab = tab
			ui.index = index
			title.Text = tab.name
		end
		
		ui.previous[#ui.previous] = nil
		update_foot()
		return
	end
	
	if ready and captured == nil then
		
		if input and input.KeyCode and input.KeyCode ~= Enum.KeyCode.Unknown then
			captured = input
		end
		if input and input.UserInputType then
			captured = input
		end
		ready = false;
	end
end)

return ui;
