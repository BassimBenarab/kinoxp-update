# ---- Build stage ----
FROM eclipse-temurin:25-jdk AS build
WORKDIR /app

# Cache Maven dependencies
COPY .mvn/ .mvn/
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline -B

# Copy source and build (skip tests — de kører i GitHub Actions)
COPY src ./src
RUN ./mvnw package -DskipTests -B

# ---- Runtime stage ----
FROM eclipse-temurin:25-jre
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]