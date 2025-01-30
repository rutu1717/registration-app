# Use a lightweight base image
FROM openjdk:11-jre-slim

# Set working directory
WORKDIR /app

# Copy the JAR file (adjust the path/name according to your build)
COPY target/*.jar app.jar

# Expose the port your application runs on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]
