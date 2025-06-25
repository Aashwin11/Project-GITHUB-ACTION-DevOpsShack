FROM eclipse-temurin:17-jdk-alpine

EXPOSE 8080

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

ENV APP_HOME=/usr/src/app


WORKDIR $APP_HOME

COPY app/*.jar $APP_HOME/

USER appuser

CMD ["java", "-jar", "app.jar"]
