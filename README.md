# vue-cli-plugin-s3-deploy-action-next
A fork of the Github action [jackdcasey/vue-cli-plugin-s3-deploy-action](https://github.com/jackdcasey/vue-cli-plugin-s3-deploy-action) modified to work with Vue CLI v5 ☁️

# In development!

## An example Github Action
```yaml
name: Upload Vue App to S3

on:
  push:
    branches:
    - master

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@v2
    - name: Deploy
      uses: techouse/vue-cli-plugin-s3-deploy-action-next@master
      env:
        AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
        AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
```
