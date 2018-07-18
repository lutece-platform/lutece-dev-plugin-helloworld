FROM alpine/git as clone
WORKDIR /app
RUN git clone https://github.com/lutece-platform/lutece-dev-plugin-helloworld.git lutece


FROM maven:3.5-jdk-8 as build
COPY --from=clone /app/lutece /app
WORKDIR /app/
RUN mvn lutece:exploded
COPY db.properties /app/target/lutece/WEB-INF/conf 


FROM tomcat
COPY --from=build /app/target/lutece /usr/local/tomcat/webapps/lutece
COPY docker-entrypoint.sh /
RUN  chmod 744 /docker-entrypoint.sh   && apt-get update && apt-get install --assume-yes --no-install-recommends \
        ant \
    && rm -rf /var/lib/apt/lists/* 

WORKDIR /usr/local/tomcat/webapps/lutece/WEB-INF/sql
EXPOSE 8080
ENTRYPOINT ["/docker-entrypoint.sh"]
