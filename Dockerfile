FROM alpine

# set a directory for the app
WORKDIR /actions

# copy all the files to the container
COPY target/actions-0.0.1.jar .

# install dependencies
RUN apk update
RUN apk add openjdk8

# run the command
CMD ["java", "-jar", "actions-0.0.1.jar"]
