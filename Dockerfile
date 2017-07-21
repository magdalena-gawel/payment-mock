FROM java:8
EXPOSE 80
ADD /target/payment-mock-0.0.3-SNAPSHOT.jar payment-mock-0.0.3-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","payment-mock-0.0.3-SNAPSHOT.jar"]