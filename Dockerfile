FROM openjdk:17-jdk-slim

WORKDIR /app

# Install curl to download files
RUN apt-get update && apt-get install -y curl

# Download latest Lavalink.jar from official releases
RUN curl -L https://github.com/freyacodes/Lavalink/releases/latest/download/Lavalink.jar -o Lavalink.jar

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
