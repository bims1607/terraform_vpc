FROM centos:latest 

RUN yum update -y

RUN yum install -y yum-utils && yum -y install unzip

RUN yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo

RUN yum -y install terraform

RUN yum -y install ncurses 

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

RUN unzip awscliv2.zip

RUN ./aws/install

RUN yum -y install vim

CMD ["sleep","infinity"]