package "unattended-upgrades"

execute "set debconf" do
  command 'echo "set unattended-upgrades/enable_auto_updates true" | debconf-communicate'
end

execute "depg-reconfigure" do
  command "dpkg-reconfigure -p critical unattended-upgrades"
end
