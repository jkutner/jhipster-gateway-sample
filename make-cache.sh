mvn -Pprod -DskipTests -Duser.home=$(pwd) -Dmaven.repo.local=$(pwd)/.m2/repository clean package
tar zcf jhipster-cache-primer.tgz .m2 node_modules
