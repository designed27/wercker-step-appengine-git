# Appengine Deploy for Wercker

[![wercker status](https://app.wercker.com/status/77786388a2867b4350c8a076e3441e24/m "wercker status")](https://app.wercker.com/project/bykey/77786388a2867b4350c8a076e3441e24)

Deploys a package from wercker to Appengine via git push interface. See https://developers.google.com/appengine/docs/push-to-deploy for instructions to setup Appengine to enable push-to-deploy.

You must set your keys in the wercker deploy variable page.

## Options

* 'netrc_login' (required) The email you use to log into appengine.
* 'netrc_pass' (required) The auth token to connect to code.google.com.
* 'repo_url' (required) The Google hosted repo to push to.

## Example

    - appengine-git:
        netrc_login: $NETRC_LOGIN
        netrc_pass: $NETRC_PASS
        repo_url: $REPO_URL
