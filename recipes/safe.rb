packages = %w{
	molly-guard
	safe-rm
}

packages.each do |pkg|
	package pkg do
		action :upgrade
	end
end
