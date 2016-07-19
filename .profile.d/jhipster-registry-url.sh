export JHIPSTER_REGISTRY_URL=${JHIPSTER_REGISTRY_URL:-"https://admin:${JHIPSTER_PASSWORD}@spring-one-registry.herokuapp.com"}

status=$(curl --retry 3 --silent --head -w %{http_code} -L ${JHIPSTER_REGISTRY_URL} -o /dev/null)
if [ "$status" != "200" ]; then
    echo "
Uh oh! The JHipster Registry is not available.
You can learn how to create your own at:
https://jhipster.github.io/heroku/
"
fi
