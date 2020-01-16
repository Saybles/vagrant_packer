execute 'tomcat' do
  command '/usr/bin/wget http://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.30/bin/apache-tomcat-9.0.30.tar.gz'
  action :run
end

execute 'tomcat_install' do
  command 'tar xvfz apache-tomcat-9.0.30.tar.gz -C /home/vagrant'
  action :run
end

execute 'tomcat_run' do
  command '/home/vagrant/apache-tomcat-9.0.30/bin/startup.sh'
  action :run
end