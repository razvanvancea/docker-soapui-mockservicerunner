https://hub.docker.com/r/rvancea/soapui-mockservicerunner

Docker image with SoapUI-5.5.0 and OpenJDK-11.

Prerequisite: 
- Docker is installed on the local machine

1. Create a new folder
```html
cd ~ && mkdir -p soapui
```
2. Move the SoapUI .xml project file in the "~/soapui" path
3. RUN the following command
```html
docker run --rm -p 8080:8080 -v ~/soapui:/home/soapui rvancea/soapui-mockservicerunner:latest -a "/" -p "8080" /home/soapui/my-project.xml
```
Notes regarding 3rd step:
- replace 'my-project.xml' with the actual name of your project
- feel free to change the 8080 port with another value but make sure that you replace all the 3 ports

Congrats, the setup is complete! Now feel free to test out the mocked services on http://localhost:8080

Official Doc: https://www.soapui.org/docs/test-automation/running-from-command-line/soap-mock/
