FROM java

WORKDIR /app

COPY target/gs-rest-service-0.1.0.jar  /app

EXPOSE 8080

CMD java -jar gs-rest-service-0.1.0.jar
