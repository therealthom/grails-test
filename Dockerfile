FROM rhel7:latest

# ADD grails-1.3.7.zip /opt/

RUN yum -y update && \
    yum -y install nano unzip wget curl &&  \
    java -version

EXPOSE 9088
