FROM rhel7:latest

# ADD grails-1.3.7.zip /opt/

RUN yum -y update && yum clean all

EXPOSE 9088
