FROM openjdk:11-jre-slim

COPY ./soapui/*.tar.gz /opt/

RUN cd /opt && tar -xvf /opt/*.tar.gz && rm /opt/*.tar.gz && mv * SoapUI

ENTRYPOINT ["/opt/SoapUI/bin/mockservicerunner.sh"]

RUN adduser --uid 1000 --disabled-password soapui

WORKDIR /home/soapui

USER soapui

