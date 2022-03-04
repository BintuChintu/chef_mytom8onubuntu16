#downloading tomcat file
remote_file '/home/ubuntu/apache-tomcat-8.5.5.tar.gz' do
    source 'https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.5/bin/apache-tomcat-8.5.5.tar.gz'
    mode '0755'
    action :create
end

#creating directory and exctracting the .tar file
directory '/opt/tomcat' do
    mode '0755'
    action :create
end
#By using execute resource directly we can execute the linux commands
#once execute the resource we cannot execute the resource again.
#we need to take care of idempotent.By using condition we can achive.
#not_if{File.exist?('')}
#only_if{File.exist?('')}
execute 'extract tar file' do
    command 'sudo tar xzvf /home/ubuntu/apache-tomcat-8.5.5.tar.gz -C /opt/tomcat --strip-components=1'
    action :run
    #Checking idempotent
    not_if{File.exist?('/opt/tomcat/LICENSE')}
end





