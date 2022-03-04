#Reload the systemd daemon 
execute 'reload daemon' do
    command 'sudo systemctl daemon-reload'
    not_if{File.exist?('/home/ubuntu/tomstartfile')}
    action :run
end

#Start the Tomcat service
execute 'start tomcat service' do
    command 'sudo systemctl start tomcat'
    not_if{File.exist?('/home/ubuntu/tomstartfile')}
    action :run
end

execute 'Tomcat automatically starts at boot:' do
    command 'sudo systemctl enable tomcat'
    action :run
end


execute 'restart the Tomcat service' do
    command 'sudo systemctl restart tomcat'
    action :run
    only_if{File.exist?('/home/ubuntu/tomstartfile')}
end

file '/home/ubuntu/tomstartfile' do
    content 'content'
    mode '0755'
    action :create
end





