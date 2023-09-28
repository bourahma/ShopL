# Set Up JDK
FROM openjdk:17

#Volume
VOLUME /tmp

#Application JAR
ARG JAR_FILE=target/ShopLoc-BE-0.0.1-SNAPSHOT.jar

# Set the working directory
WORKDIR /app

# Copy the application JAR into the container
COPY ${JAR_FILE} /app/

EXPOSE 8000

# Specify the command to run your Spring Boot application
CMD ["java", "-jar", "ShopLoc-BE-0.0.1-SNAPSHOT.jar"]