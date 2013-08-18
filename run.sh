if [ ! -n "$WERCKER_APPENGINE_GIT_NETRC_LOGIN" ]; then
    error 'Please specify login property'
    exit 1
fi

if [ ! -n "$WERCKER_APPENGINE_GIT_NETRC_PASS" ]; then
    error 'Please specify auth token property'
    exit 1
fi

if [ ! -n "$WERCKER_APPENGINE_GIT_REPO_URL" ]; then
    error 'Please specify repo url property'
    exit 1
fi

echo -e "machine code.google.com " > ~/.netrc
echo -e "login $WERCKER_APPENGINE_GIT_NETRC_LOGIN " >> ~/.netrc
echo -e "password $WERCKER_APPENGINE_GIT_NETRC_PASS" >> ~/.netrc

git remote add appengine $WERCKER_APPENGINE_GIT_REPO_URL
git push appengine master
