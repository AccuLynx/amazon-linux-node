FROM amazonlinux:2 AS build

ENV NODE_VERSION=12.15

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
RUN /bin/bash -c "source /root/.nvm/nvm.sh; nvm install ${NODE_VERSION}"

CMD /bin/bash -c "source /root/.nvm/nvm.sh; nvm use ${NODE_VERSION}"
