# Dice a Docker: “Usa un sistema operativo base (Alpine Linux) che ha già Java 17 installato.” con FROM imposto la base dell'immagine
FROM eclipse-temurin:17.0.10_7-jdk

# Imposta la directory di lavoro
WORKDIR /app

#Esegui comando mvn
RUN mvn clean package -DskipTests

# Copia il file .jar dal tuo computer dentro la cartella /app del container e lo rinomina app.jar.
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Comando per avviare l'app
ENTRYPOINT ["java", "-jar", "app.jar"]
