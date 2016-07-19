export JHIPSTER_REGISTRY_URL=${JHIPSTER_REGISTRY_URL:-"https://admin:${JHIPSTER_PASSWORD}@spring-one-registry.herokuapp.com"}

status=$(curl --retry 3 --silent --head -w %{http_code} -L ${JHIPSTER_REGISTRY_URL} -o /dev/null)
if [ "$status" != "200" ]; then
    msg="Uh oh! The JHipster Registry is not available. You can learn how to create your own at: https://jhipster.github.io/heroku/"
    echo "$msg"
    ruby -rwebrick -e"s=WEBrick::HTTPServer.new(:BindAddress => \"0.0.0.0\", :Port => $PORT, :DocumentRoot => Dir.pwd); s.mount_proc('/'){|q,r| r.body='${msg}'}; s.start"
fi
