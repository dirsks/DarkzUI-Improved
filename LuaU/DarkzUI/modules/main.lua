--[[
    MADE BY @dircs
    At Discord!

    Open-Sourced DARKZ ui Library

    Copyright Font: Source Sans PRO Bold

]]

--[[

    NOTICE:
    --Using AI to change the code or to change owner's names will result in DMCA

	Early that was possible but the code is open source, so do anything you want

]]

--[[if LOADED and not _G.DEBUG then
	warn("script is already running", 0)
	return
end

pcall(function() getgenv().LOADED = true end)
if not game:IsLoaded() then game.Loaded:Wait() end]]

if not game:IsLoaded() then
	game.Loaded:Wait()
	print('Script loaded, please wait until the game loads')
end

--HINT: 1: Workspace; 2: CoreGui; 3: Debris, 4: Players
local Model={[1]=Game:GetService'Workspace',[2]=Game:GetService'StarterGui',[3]=Game:GetService'Debris',[4]=Game:GetService'Players',[5]=Game:GetService('TweenService')};
--local Enemies=Model[1]['Enemies'];
--local NPCS=Model[1]['NPCs']

local DarkzLibrary={}
-- Instances that we will not use now

local InstanceContexts={
	ScreenGui2=Instance.new'ScreenGui';
	ScreenGui=Instance.new'ScreenGui';
	Main=Instance.new'Frame';
	Toggle=Instance.new'ImageButton';--Toggle
	UIStroke=Instance.new'UIStroke';
	UICorner=Instance.new'UICorner';
	UIAspectRatioConstraint=Instance.new'UIAspectRatioConstraint';--End of toggle
	__Main1=Instance.new'Frame';
	UIDragDetector=Instance.new'UIDragDetector'; --DragSys
	--UIDragDetector1=Instance.new'UIDragDetector';
	__Title=Instance.new'Frame';
	UICorner=Instance.new'UICorner';
	TitleText=Instance.new'TextLabel';-- This
	CornerCover=Instance.new'Frame';
	__TabFrame=Instance.new'Frame';
	CornerCover1=Instance.new'Frame';
	UICorner1=Instance.new'UICorner';
	UICorner2=Instance.new'UICorner';
	CornerCover2=Instance.new'Frame';
	Scroll=Instance.new'ScrollingFrame';
	UIGridLayout=Instance.new'UIGridLayout';
	__ContentFrame=Instance.new'Frame';
	__Decor=Instance.new'Frame';
	ImageLabel=Instance.new'ImageLabel';
	UIAspectRatioConstraint=Instance.new'UIAspectRatioConstraint';
	ImageLabel1=Instance.new'ImageLabel';
};
--The property of all contexts in InstanceContexts. TO parent something, you should do: Parent=InstanceContexts['OBJECT_NAME'] be like.
local Contexts={
	TabMenu=Instance.new'Frame'; --Tab Container
		Frame=Instance.new'Frame';
		UICorner2=Instance.new'UICorner';
		TextLabel=Instance.new'TextLabel';
		TextButton=Instance.new'TextButton';
		UICorner3=Instance.new'UICorner';

	NotificationMain=Instance.new'Frame'; --Notification Container
		__Container=Instance.new'Frame';
		NotificationNoButtons=Instance.new'Frame';
		UICornerNotifiuf8uf7=Instance.new'UICorner';
		TextLabell2=Instance.new'TextLabel';--label
		Textsss=Instance.new'TextLabel';--lable
		NotificationButtons=Instance.new'Frame';
		UICorner4=Instance.new'UICorner';
		Okay=Instance.new'TextButton';
		No=Instance.new'TextButton';
		Yes=Instance.new'TextButton';
		TextLabelNotify1=Instance.new'TextLabel';--label
		TextLabelNotify2=Instance.new'TextLabel';--label
};
local PropertyInstances={
	--00Notification Containr-
	NotificationMain={
		Name='NotificationMain',
		BackgroundTransparency=1,
		Position=UDim2.new(0,0,0,0),
		Size=UDim2.new(1.001, 0,1.001, 0)
	};
	__Container={
		Parent=Contexts['NotificationMain'],
		Name='__Container',
		BackgroundColor3=Color3.fromRGB(0,0,0),
		BackgroundTransparency=1,
		BorderSizePixel=0,
		Position=UDim2.new(0.999, 0,0.588, 0),
		Size=UDim2.new(0.143, 0,0.172, 0)
	};
	NotificationNoButtons={
		Parent=Contexts['__Container'],
		Name='NotificationNoButtons',
		BorderSizePixel=0,
		BackgroundColor3=Color3.fromRGB(32,32,32),
		BackgroundTransparency=0.1,
		Position=UDim2.new(0, 0,0.131, 0),
		Size=UDim2.new(1, 0,0.73, 0)
	};
	UICornerNotifiuf8uf7={Parent=Contexts['NotificationNoButtons']};
	TextLabell2={
		Parent=Contexts['NotificationButtons'],
		Name='Title',
		BackgroundTransparency=1,
		TextColor3=Color3.fromRGB(255,255,255),
		TextScaled=true;
		Font=Enum.Font.SourceSansBold,
		TextStrokeTransparency=0.4,
		Position=UDim2.new(0,0,0,0),
		Size=UDim2.new(1, 0,0.29, 0)
	};
	TextLabelNotify1={
		Parent=Contexts['NotificationButtons'],
		Name='Text',
		BackgroundTransparency=1,
		TextColor3=Color3.fromRGB(255,255,255),
		TextScaled=true;
		Font=Enum.Font.SourceSans,
		RichText=true,
		TextStrokeTransparency=0.4,
		Position=UDim2.new(0, 0,0.29, 0),
		Size=UDim2.new(1, 0,0.71, 0)
	};
	NotificationButtons={
		Parent=Contexts['__Container'],
		Name='NotificationButtons',
		BackgroundColor3=Color3.fromRGB(32,32,32),
		BackgroundTransparency=0.1,
		Position=UDim2.new(0, 0,0, 0),
		Size=UDim2.new(1, 0,1, 0)
	};
	TextLabelNotify2={
		Parent=Contexts['NotificationNoButtons'],
		Name='Title',
		BackgroundTransparency=1,
		TextColor3=Color3.fromRGB(255,255,255),
		TextScaled=true;
		Font=Enum.Font.SourceSansBold,
		TextStrokeTransparency=0.4,
		Position=UDim2.new(0,0,0,0),
		Size=UDim2.new(1, 0,0.212, 0)
	};
	Textsss={
		Parent=Contexts['NotificationNoButtons'],
		Name='Text',
		BackgroundTransparency=1,
		TextColor3=Color3.fromRGB(255,255,255),
		TextScaled=true;
		RichText=true,
		Font=Enum.Font.SourceSans,
		TextStrokeTransparency=0.4,
		Position=UDim2.new(0, 0,0.21, 0),
		Size=UDim2.new(1, 0,0.518, 0)
	};
	UICorner4={Parent=Contexts['NotificationButtons']};
	Okay={
		Parent=Contexts['NotificationButtons'],
		Name='Okay',
		Text='Okay',
		Style=Enum.ButtonStyle.RobloxRoundButton,
		Font=Enum.Font.SourceSansBold,
		TextColor3=Color3.fromRGB(255,255,255),
		Position=UDim2.new(0, 0,0.701, 0),
		Size=UDim2.new(1, 0,0.299, 0)
	};
	No={
		Parent=Contexts['NotificationButtons'],
		Name='No',
		Text='No',
		ZIndex=2,
		Style=Enum.ButtonStyle.RobloxRoundButton,
		Font=Enum.Font.SourceSansBold,
		TextColor3=Color3.fromRGB(255,255,255),
		Position=UDim2.new(0.54, 0,0.701, 0),
		Size=UDim2.new(0.46, 0,0.299, 0)
	};
	Yes={
		Parent=Contexts['NotificationButtons'],
		Name='Yes',
		Text='Yes',
		ZIndex=2,
		Style=Enum.ButtonStyle.RobloxRoundButton,
		Font=Enum.Font.SourceSansBold,
		TextColor3=Color3.fromRGB(255,255,255),
		Position=UDim2.new(0, 0,0.701, 0),
		Size=UDim2.new(0.5, 0,0.299, 0)
	};
	--Notification Container Ends--
	
	
	Main={
		Name='Main',
		BackgroundTransparency=1,
		BorderSizePixel=0,
		Position=UDim2.new(0, 0,0, 0),
		Size=UDim2.new(1, 1,1, 1)
	};
	Toggle={
		Parent=InstanceContexts['Main'],
		Name='Toggle',
		Image='rbxassetid://74475102332358',
		Position=UDim2.new(0, 0,0, 0),
		Size=UDim2.new(0, 70,0, 90)
	};
	UIStroke={
		Parent=InstanceContexts['Toggle'],
		ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
		Thickness=2,
	};
	UICorner={
		Parent=InstanceContexts['Toggle']
	};
	UIAspectRatioConstraint={
		Parent=InstanceContexts['Toggle'],
		AspectRatio=1,
		AspectType=Enum.AspectType.FitWithinMaxSize,
		DominantAxis=Enum.DominantAxis.Width
	};
	__Main1={
		Parent=InstanceContexts['Main'],
		Name='__Main1',
		BorderSizePixel=0,
		Draggable=true,
		BackgroundColor3=Color3.fromRGB(32, 32, 32),
		Position=UDim2.new(0, 342,0, 240),
		Size=UDim2.new(0, 512,0, 312)
	};
	UIDragDetector={
		Parent=InstanceContexts['__Main1']
	};
	__Title={
		Parent=InstanceContexts['__Main1'],
		Name='__Title',
		BorderSizePixel=0,
		BackgroundColor3=Color3.fromRGB(50, 50, 50),
		Position=UDim2.new(0, 0,0, -30),
		Size=UDim2.new(0, 512,0, 30)
	};
	TitleText={
		Parent=InstanceContexts['__Title'],
		Name='TitleText',
		ZIndex=5,
		Font=Enum.Font.SourceSansBold,
		TextXAlignment=Enum.TextXAlignment.Left,
		TextScaled=true,
		BackgroundTransparency=1,
		TextColor3=Color3.fromRGB(255, 255, 255),
		TextStrokeColor3=Color3.fromRGB(0, 0, 0),
		TextStrokeTransparency=0,
		BorderSizePixel=0,
		Position=UDim2.new(0, 0,0, 0),
		Size=UDim2.new(0, 512,0, 41)
	};
	__TabFrame={
		Parent=InstanceContexts['__Main1'],
		Name='__TabFrame',
		BorderSizePixel=0,
		BackgroundColor3=Color3.fromRGB(15, 15, 15),
		Position=UDim2.new(0, 0,0.035, 0),
		Size=UDim2.new(0, 101,0, 301)
	};
	CornerCover1={
		Parent=InstanceContexts['__TabFrame'],
		Name='CornerCover1',
		BorderSizePixel=0,
		BackgroundColor3=Color3.fromRGB(15, 15, 15),
		Position=UDim2.new(0, 0,-0.001, 0),
		Size=UDim2.new(0, 101,0, 21)
	};
	CornerCover2={
		Parent=InstanceContexts['__TabFrame'],
		Name='CornerCover2',
		BorderSizePixel=0,
		BackgroundColor3=Color3.fromRGB(15,15,15),
		Position=UDim2.new(0.465, 0,0.929, 0),
		Size=UDim2.new(0, 54,0, 21)
	};
	CornerCover={
		Parent=InstanceContexts['__Title'],
		Name='ConrerCover',
		BorderSizePixel=0,
		BackgroundColor3=Color3.fromRGB(50, 50, 50),
		Position=UDim2.new(0, 0,0, 19),
		Size=UDim2.new(0, 512,0, 22)
	};
	UICorner={
		Parent=InstanceContexts['__TabFrame']
	};
	UICorner1={
		Parent=InstanceContexts['__Title']
	};
	UICorner2={
		Parent=InstanceContexts['__Main1']
	};
	
	Scroll={
		Parent=InstanceContexts['__TabFrame'],
		Name='Scroll',
		BorderSizePixel=1,
		BorderColor3=Color3.fromRGB(27, 42, 53),
		ScrollBarThickness=5,
		BackgroundTransparency=1,
		Position=UDim2.new(0, 0,0.02, 0),
		Size=UDim2.new(0, 101,0, 294)
	};
	UIGridLayout={
		Parent=InstanceContexts['Scroll'],
		CellPadding=UDim2.new(0, 5,0, 0),
		CellSize=UDim2.new(0, 100,0, 50)
	};
	__ContentFrame={
		Parent=InstanceContexts['__Main1'],
		Name='__ContentFrame',
		BorderSizePixel=0,
		BackgroundTransparency=1,
		Position=UDim2.new(0.197, 0,0.035, 0),
		Size=UDim2.new(0, 400,0, 300)
	};
	__Decor={
		Parent=InstanceContexts['__Main1'],
		Name='__Decor',
		ClipsDescendants=true,
		BorderSizePixel=0,
		BackgroundTransparency=1,
		Position=UDim2.new(0.002, 0,0.035, 0),
		Size=UDim2.new(0, 511,0, 301)
	};
	ImageLabel={ --Right Corner Red Image
		Parent=InstanceContexts['__Decor'],
		Name='ImageLabel',
		BorderSizePixel=0,
		Image='rbxassetid://72369033405617',
		ImageColor3=Color3.fromRGB(85, 0, 127),
		ImageTransparency=0.96,
		BackgroundTransparency=1,
		Position=UDim2.new(0.589, 0,0.383, 0),
		Size=UDim2.new(0, 513,0, 435)
	};
	ImageLabel1={ -- Red Forms
		Parent=InstanceContexts['__Decor'],
		Name='ImageLabel',
		BorderSizePixel=0,
		Image='rbxassetid://88409692799170',
		ImageColor3=Color3.fromRGB(170, 0, 0),
		ImageTransparency=0.9,
		BackgroundTransparency=1,
		Position=UDim2.new(0, 0,0.542, 0),
		Size=UDim2.new(0, 114,0, 137)
	};

};


local Toggle=InstanceContexts['Toggle']
local MainFrame=InstanceContexts['__Main1']

Toggle.MouseButton1Click:connect(function()
	MainFrame.Visible=not MainFrame.Visible
end)


-- FUNCTIONS
--[[
DarkzLibrary:Notify({
	Title='',
	Container='',
	Buttons=false,
	Okay=false
})

]]
local DisableNotifih=function(T)
	T.Visible=false
end;
--Notify yummy
function DarkzLibrary:Notify(SETTINGS)
	if not(SETTINGS.Title and SETTINGS.Container)then return end;
	local NotificMain=Contexts['NotificationMain'];
	local Container=Contexts['__Container'];
	local Buttons=Contexts['NotificationButtons'];
	local NoButtons=Contexts['NotificationNoButtons'];
	NotificMain.Parent=InstanceContexts.ScreenGui2;
	InstanceContexts.ScreenGui2.Parent=Model[4].LocalPlayer.PlayerGui;
	NotificMain.Visible=true;
	Container.Visible=true;
	local Active={Position=UDim2.new(0.856,0,0.588,0)};
	local Hidden={Position=UDim2.new(0.999,0,0.588,0)};
	local N1=Model[5]:Create(Container,TweenInfo.new(0.15,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),Active);
	local Ml=Model[5]:Create(Container,TweenInfo.new(0.15,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),Hidden);
	Buttons.Visible=false;
	NoButtons.Visible=false;
	if SETTINGS.Buttons==true then
		Buttons.Visible=true;
		Buttons.Title.Text=SETTINGS.Title;
		Buttons.Text.Text=SETTINGS.Container;
		Buttons.Okay.Visible=false;
		Buttons.No.MouseButton1Click:Once(function()
			Ml:Play();
		end);Buttons.Yes.MouseButton1Click:Once(function()
			Ml:Play();
		end);
		
		
	elseif SETTINGS.Buttons==false then
		NoButtons.Visible=true;
		NoButtons.Title.Text=SETTINGS.Title;
		NoButtons.Text.Text=SETTINGS.Container;
		wait(5)
		Ml:Play()
		Ml.Completed:Once(function()NotificMain.Visible=false;end);
	elseif SETTINGS.Okay==true then
		Buttons.Visible=true;
		Buttons.No.Visible=false
		Buttons.Yes.Visible=false;
		Buttons.Okay.Visible=true
	end
N1:Play()
	--N1:Play();
	--N1.Completed:Once(function()
	--	wait(5);
	--	Ml:Play();
	--	Ml.Completed:Once(function()
	--NotificMain.Visible=false;
	--	end);
	--end);
end

--


function DarkzLibrary:MakeWindow(SETTINGS) -- DarkzLib:MakeWindow({Image,Name...})
	if typeof(SETTINGS)=='table'then-- This needs a table. If you put, for example: Darkz:MakeWindow('make this window'), or something else, it wont work.
		InstanceContexts.Main.Parent=InstanceContexts.ScreenGui;
		InstanceContexts.ScreenGui.Parent=Model[4].LocalPlayer.PlayerGui;
		if SETTINGS.Image then
			Toggle.Image=SETTINGS.Image;
		end
		if SETTINGS.Name then
			InstanceContexts['TitleText'].Text='   '..SETTINGS.Name
		end
		if SETTINGS.Discord then
			local DiscordName=SETTINGS.DiscordName or 'Discord'
			DarkzLibrary:Notify({
				Title='💎 Join Discord!',
				Container=SETTINGS.Discord,
				Buttons=false,
				Okay=false,
			})
		end
	end
end




function DarkzLibrary:Init()
	for Name,Properties in next,PropertyInstances do
		local Object=InstanceContexts[Name];
		if Object then
			for Property,Value in next,Properties do
				Object[Property]=Value;
			end;
		end;
	end
	for Name,Properties in next,PropertyInstances do
		local Object=Contexts[Name];
		if Object then
			for Property,Value in next,Properties do
				Object[Property]=Value;
			end;
		end;
	end
end



return DarkzLibrary








