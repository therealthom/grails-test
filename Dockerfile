FROM rhel7:latest

ADD jdk-7u80-linux-x64.rpm /opt/
ADD grails-1.3.7.zip /opt/

CMD yum -y update &&
    yum -y install nano unzip wget curl wget &&
    rpm -ivh jdk-7u80-linux-x64.rpm &&
    java -version

EXPOSE 9088
