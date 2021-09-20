docker run --rm -p 8080:8080 -v $PWD/soapui:/home/soapui/project rvancea/soapui-mockservicerunner:latest -a "/" -p "8080" /home/soapui/project/my-soapui-project.xml
