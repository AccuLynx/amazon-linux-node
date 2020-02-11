FROM amazonlinux:2

ENV NODE_VERSION=12.15
ENV NVM_DIR /usr/local/nvm

RUN yum install -y tar gzip

RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash \
    && source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default
