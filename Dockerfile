FROM openjdk:8-jre-alpine

ARG CLOUD_FIRESTORE_EMULATOR_VERSION

# Install Firestore emulator.
RUN wget https://storage.googleapis.com/firebase-preview-drop/emulator/cloud-firestore-emulator-v${CLOUD_FIRESTORE_EMULATOR_VERSION}.jar --output-document /emulator.jar

ENV PORT=8080

CMD ["sh", "-c", "java -jar /emulator.jar --host 0.0.0.0 --port ${PORT}"]

EXPOSE ${PORT}
