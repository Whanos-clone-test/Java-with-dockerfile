FROM whanos-java

# Unsing bash shell
SHELL ["/bin/bash", "-c"]

# Set the working directory
WORKDIR /app

# Copy the app
COPY ./app/ ./app/

# Build the app
RUN mvn package -f app/pom.xml

# Move the jar file to the root directory
RUN mv app/target/app.jar .

# Run the app
CMD java -jar app.jar

# docker build -t java-standalone -f images/java/Dockerfile.standalone App_example_sta/java-hello-world/.
# docker run -it --rm java-standalone