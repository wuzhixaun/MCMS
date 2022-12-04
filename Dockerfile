FROM adoptopenjdk/openjdk8
MAINTAINER jackWu <627521884@qq.com>

RUN mkdir -p /mcms

WORKDIR /mcms

EXPOSE 8080

ADD ./target/s-mcms.jar ./app.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]
