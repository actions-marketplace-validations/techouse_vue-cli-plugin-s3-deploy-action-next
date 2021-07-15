#!/bin/sh

set -e

# Validate AWS credentials exist

if [ -z "$AWS_ACCESS_KEY_ID" ]; then
  echo "Error: AWS_ACCESS_KEY_ID is not set"
  exit 1
fi

if [ -z "$AWS_SECRET_ACCESS_KEY" ]; then
  echo "Error: AWS_SECRET_ACCESS_KEY is not set"
  exit 1
fi

# Start deployment

npm i -g @vue/cli@^5.0.0-beta.2
npm i vue-cli-plugin-s3-deploy@^4.0.0-rc4
npm i

npm run build
npm run deploy
