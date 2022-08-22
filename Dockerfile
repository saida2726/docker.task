# This is docker file
From centos:7
RUN yum install elinks telnet curl wget unzip -y && \
	# below code installs terraform and packer
	curl -O https://releases.hashicorp.com/terraform/1.0.0/terraform_1.0.0_linux_amd64.zip && \
	unzip terraform_1.0.0_linux_amd64.zip && \
	mv terraform /usr/bin/ && \
	mv /usr/sbin/packer  /tmp && \
	yum install -y yum-utils && \
    yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo && \
	yum -y install packer



