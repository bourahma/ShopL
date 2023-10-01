FROM openjdk:17

VOLUME /tmp

ARG JAR_FILE=target/ShopLoc-BE-0.0.1-SNAPSHOT.jar

WORKDIR /app

COPY ${JAR_FILE} /app/

CMD ["java", "-jar", "ShopLoc-BE-0.0.1-SNAPSHOT.jar"]

EXPOSE 8000