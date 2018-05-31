FROM rhel7:latest

#ADD grails-1.3.7.zip /opt/

CMD yum -y update &&
    yum -y install nano unzip wget curl wget &&
    java -version

EXPOSE 9088
