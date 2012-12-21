
define :firewall_include, :enable => true, :source => nil, :variables => {}, :cookbook => nil, :priority => 70 do
  template_file = params[:source] ? params[:source] : "#{params[:name]}.erb"

  template "/etc/ferm/ferm.d/#{params[:priority]}-#{params[:name]}" do
    cookbook  params[:cookbook] if params[:cookbooks]
    variables params[:variables]
    source    template_file

    owner "root"
    group "root"
    mode  "0664"

    notifies :restart, "service[ferm]"

    if params[:enable]
      action :create
    else
      action :delete
    end
  end

end

