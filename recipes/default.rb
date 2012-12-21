package "ferm"

directory "/etc/ferm/ferm.d" do
  owner "root"
  group "root"
  mode  "0755"

  recursive true
end

template "/etc/ferm/ferm.conf" do
  source "ferm.conf.erb"

  owner "root"
  group "root"
  mode  "0644"

  notifies :restart, "service[ferm]"
end

service "ferm" do
  supports :reload => true, :restart => true
  action :enable
end

