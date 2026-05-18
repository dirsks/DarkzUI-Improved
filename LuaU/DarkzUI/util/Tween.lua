local Model={[1]=Game:GetService'TweenService'};
local Tween={};
function Tween:Tween(Object,Time,Props)
    local Tween=Model[1]:Create(
		Object,
		TweenInfo.new(
			Time,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.InOut
		),
		Properties
	);
	Tween:Play();
	return Tween;
end

return Tween