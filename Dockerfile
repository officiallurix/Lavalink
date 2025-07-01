FROM openjdk:17-jdk-slim

WORKDIR /app

COPY . /app

RUN ./gradlew build

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
