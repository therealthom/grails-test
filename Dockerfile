FROM rhel7:latest

COPY .profile /opt
COPY resources/grails-1.3.7.zip /opt

RUN subscription-manager register --username=siisws --password=n0t13n3! && \
    subscription-manager attach --pool=8a85f98c5f7d4e9d015f80fed6b41e36 && \
    yum-config-manager --enable rhel-7-server-optional-rpms && \
    yum -y update && \
    yum -y install unzip java-1.7.0-openjdk && \
    unzip /opt/grails-1.3.7.zip -d /opt && \
    rm -rf /opt/grails-1.3.7.zip

COPY /resources/run.sh /opt/run.sh
CMD [ "/bin/bash", "/opt/run.sh" ]

RUN grails

EXPOSE 8080
