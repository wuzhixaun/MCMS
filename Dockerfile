FROM adoptopenjdk/openjdk11
MAINTAINER jackWu <627521884@qq.com>

RUN echo '本地使用mvn clean package'

ADD ./target/ms-mcms.jar ms-mcms.jar

ENTRYPOINT ["java","-jar","/ms-mcms.jar","&"]