# Étape 1 : Utiliser une image de base
FROM openjdk:17-jdk-slim

# Étape 2 : Configurer l'environnement de travail
WORKDIR /apps

# Argument to pass the jar file name
ARG JAR_FILE=target/*.jar

# Copy your jar file to the container
COPY ${JAR_FILE} apps.jar
# Étape 4 : Exposer le port utilisé par l'application
EXPOSE 8082

# Étape 5 : Commande de démarrage
ENTRYPOINT ["java", "-jar", "apps.jar"]
