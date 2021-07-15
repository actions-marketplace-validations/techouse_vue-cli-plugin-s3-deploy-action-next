FROM node:14

LABEL "com.github.actions.name"="vue cli plugin s3 deploy next action"
LABEL "com.github.actions.description"="A Github action for vue-cli-plugin-s3-deploy-next"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

LABEL version="1.0.0"
LABEL repository="https://github.com/techouse/vue-cli-plugin-s3-deploy-action-next"
LABEL maintainer="techouse"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
