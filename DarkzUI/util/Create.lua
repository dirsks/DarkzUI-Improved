local Utils={};

function Utils:Create(Class,Properties)
	local Object=Instance.new(Class);
	for Property,Value in next,Properties do
		Object[Property]=Value;
	end;
	
	return Object;
end;

return Utils;