FROM adoptopenjdk/openjdk11:alpine

RUN mkdir /odl
WORKDIR /odl

RUN apk update && apk add git maven && \
    mkdir ~/.m2 && wget -q -O - https://raw.githubusercontent.com/opendaylight/odlparent/master/settings.xml > ~/.m2/settings.xml && \
    git clone -b stable/magnesium https://git.opendaylight.org/gerrit/transportpce && \
    cd transportpce && mvn clean install -DskipTests=true && \
    apk del git maven && \
    rm -rf /var/cache/apk/* ~/.m2

EXPOSE 8181 6633 8101

CMD ./transportpce/karaf/target/assembly/bin/karaf
