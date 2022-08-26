FROM gradle:jdk17

WORKDIR /hello-app

COPY . .
RUN gradle build

EXPOSE 8080

CMD java -jar build/libs/hello-app-0.0.1-SNAPSHOT.jar