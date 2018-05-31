FROM rhel7:latest

COPY resources/environment /opt
COPY resources/grails-1.3.7.zip /opt

RUN subscription-manager register --username=siisws --password=n0t13n3! && \
    subscription-manager attach --pool=8a85f98c5f7d4e9d015f80fed6b41e36 && \
    yum-config-manager --enable rhel-7-server-optional-rpms && \
    yum -y update && \
    yum -y install unzip java-1.7.0-openjdk && \
    unzip /opt/grails-1.3.7.zip -d /opt && \
    rm -rf /opt/grails-1.3.7.zip

RUN /bin/bash -c 'source /opt/environment; echo $GRAILS_HOME'

RUN /bin/bash -c '$GRAILS_HOME/bin/grails'

EXPOSE 8080

RUN /bin/bash -c "while true; do echo test; sleep 5; done"
