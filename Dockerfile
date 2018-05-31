FROM rhel7:latest

# ADD grails-1.3.7.zip /opt/

RUN subscription-manager register --username=siisws --password=n0t13n3! && \
    subscription-manager attach --pool=8a85f98c5f7d4e9d015f80fed6b41e36 && \
    yum-config-manager --enable rhel-7-server-optional-rpms && \
    yum -y update && \
    yum -y install unzip java-1.7.0-openjdk

EXPOSE 8080
