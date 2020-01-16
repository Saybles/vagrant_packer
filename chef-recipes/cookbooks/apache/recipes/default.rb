apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end

package node['apache']['package']

service node['apache']['service'] do
  supports status: true, restart: true, reload: true
  action %i(enable start)
end