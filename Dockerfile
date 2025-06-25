FROM eclipse-temurin:17-jdk-alpine

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

ENV APP_HOME=/usr/src/app

WORKDIR $APP_HOME

COPY app/*.jar /usr/src/app/app.jar

USER appuser

CMD ["java", "-jar", "app.jar"]
