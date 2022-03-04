#tomcat group ownership over the entire installation directory:
execute 'Give the tomcat group ownership' do
    command 'sudo chgrp -R tomcat /opt/tomcat'
    action :run
end

#give the tomcat group read and execute access to the conf directory
execute 'give the tomcat group read access to the conf directory' do
    #conf folder location correctly we need give
    command 'sudo chmod -R g+r /opt/tomcat/conf'
    action :run
end
execute 'give the tomcat group execute access to the conf directory' do
    #conf folder location correctly we need give
    command 'sudo chmod g+x /opt/tomcat/conf'
    action :run
end

#tomcat user the owner of the webapps, work, temp, and logs directories:
execute 'Make the tomcat user the owner of the webapps' do
    command 'sudo chown -R tomcat /opt/tomcat/webapps/'
    action :run
end
execute 'Make the tomcat user the owner of the work' do
    command 'sudo chown -R tomcat /opt/tomcat/work/'
    action :run
end
execute 'Make the tomcat user the owner of the temp' do
    command 'sudo chown -R tomcat /opt/tomcat/temp/'
    action :run
end
execute 'Make the tomcat user the owner of the logs' do
    command 'sudo chown -R tomcat /opt/tomcat/logs/'
    action :run
end


