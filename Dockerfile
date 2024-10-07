# Base image
FROM eclipse-temurin:21-jre

#set the working directory
WORKDIR /app

#copy the executable into the working directory
COPY java-ios-1.0-SNAPSHOT.jar /app/java-ios-1.0-SNAPSHOT.jar

#Set the command to run when launching the container
ENTRYPOINT ["java", "-jar", "java-ios-1.0-SNAPSHOT.jar"]

#Set the default command that will follow the entrypoint
CMD ["--help"]
