FROM openjdk:21-jdk
LABEL maintainer="ismailrzouki7@gmail.com"

ARG PROFILE=${ACTIVE_PROFILE}
ENV SPRING_PROFILES_ACTIVE=${PROFILE}
COPY target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]