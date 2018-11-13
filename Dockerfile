FROM openjdk:8
ADD target/mongo-demo.jar mongo-demo.jar
EXPOSE 9000
ENTRYPOINT ["java", "-Dspring.profiles.active=docker", "-jar", "mongo-demo.jar"]

#------------------------------------------------

#docker build -f Dockerfile -t mongo-demo .

#-f --file
#-t --tag -> tag=version


# spring port 8080 -> 9000
# mongo on localhost??
# spring profiles for separate run of docker container configs and development configs