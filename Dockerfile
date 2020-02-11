FROM amazonlinux:2

RUN yum install -y tar gzip bzip2

RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash -

RUN yum install -y nodejs

RUN node --version
RUN npm --version
RUN tar --version
