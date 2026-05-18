function Utils:shownnots(Container)
	return Utils:Tween(
		Container,
		0.15,
		{
			Position=UDim2.new(
				0.856,
				0,
				0.588,
				0
			)
		}
	);
end;
function Utils:hidenots(Container)
	return Utils:Tween(
		Container,
		0.15,
		{
			Position=UDim2.new(
				0.999,
				0,
				0.588,
				0
			)
		}
	);
end;