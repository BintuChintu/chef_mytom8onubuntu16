remote_file '/opt/tomcat/webapps/mahaLogin.war' do
    source 'https://maha9988.s3.us-east-2.amazonaws.com/mahaLogin.war'
    mode '0755'
    action :create
end
