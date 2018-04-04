FROM maven:latest

COPY . .

RUN mvn package

CMD touch file-create

CMD java -jar ./target/java-fullstack-1.0-SNAPSHOT.jar
