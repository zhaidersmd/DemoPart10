FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY target/*.jar app.jar

ENTRYPOINT ["java", "-cp", "app.jar", "com.labcorp.Main"]
