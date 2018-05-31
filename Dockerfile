FROM rhel7:latest

# ADD grails-1.3.7.zip /opt/

RUN subscription-manager register --username=siisws --password=n0t13n3! && yum -y update && yum clean all

EXPOSE 9088
