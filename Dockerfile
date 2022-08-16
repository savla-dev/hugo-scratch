#
# infra-docs for savla-dev
#

ARG ALPINE_VERSION
FROM node:alpine${ALPINE_VERSION}

MAINTAINER krustowski <krusty@savla.dev>

ARG APP_ROOT
ARG DOCKER_INTERNAL_PORT

ENV APP_ROOT ${APP_ROOT}
ENV DOCKER_INTERNAL_PORT ${DOCKER_INTERNAL_PORT}

RUN npm install -g harp

WORKDIR ${APP_ROOT}
USER node
EXPOSE ${DOCKER_INTERNAL_PORT}

CMD ["harp", "."]
