# Appengine Deploy for Wercker

[![wercker status](https://app.wercker.com/status/0f5b6b3419674e7d17bd0c27c364f18d/m "wercker status")](https://app.wercker.com/project/bykey/0f5b6b3419674e7d17bd0c27c364f18d)

Deploys a package from wercker to Appengine via git push interface. See https://developers.google.com/appengine/docs/push-to-deploy for instructions to setup Appengine to enable push-to-deploy.

You must set your keys in the wercker deploy variable page.

## Options

* 'netrc_login' (required) The email you use to log into appengine.
* 'netrc_pass' (required) The auth token to connect to code.google.com.
* 'repo_url' (required) The Google hosted repo to push to.

## Example

    - appengine-git-deploy:
        netrc_login: $NETRC_LOGIN
        netrc_pass: $NETRC_PASS
        repo_url: $REPO_URL
