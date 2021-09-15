FROM openjdk:17-slim

ARG CLOUD_FIRESTORE_EMULATOR_VERSION

# Install Firestore emulator.
ADD https://storage.googleapis.com/firebase-preview-drop/emulator/cloud-firestore-emulator-v${CLOUD_FIRESTORE_EMULATOR_VERSION}.jar /emulator.jar

ENV PORT=8080

CMD ["sh", "-c", "java -server -jar /emulator.jar --host 0.0.0.0 --port ${PORT}"]

EXPOSE ${PORT}
