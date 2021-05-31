# Stage: Build container
FROM openjdk AS rest_app_be

COPY . /tmp/

WORKDIR /tmp/

RUN ./mvnw clean verify

############################################
# Stage: Application Image Build Starts here
FROM openjdk:8-jre-alpine

#copy jar file from builder
COPY --from=rest_app_be /tmp/target/react-and-spring-data-rest-*.jar /project/

EXPOSE 8080

CMD java -jar /project/react-and-spring-data-rest-*.jar
