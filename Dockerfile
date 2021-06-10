#FROM frolvlad/alpine-oraclejdk8
FROM frolvlad/alpine-java:jdk8-slim
VOLUME /tmp
ADD target/eurekaserver-1.0.jar eurekaserver.jar
EXPOSE 8761
ENTRYPOINT ["java","-jar","/eurekaserver.jar"]
