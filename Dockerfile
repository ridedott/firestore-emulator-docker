FROM openjdk:8-jre-alpine

ENV FIRESTORE_DOWNLOAD_URL=https://storage.googleapis.com/firebase-preview-drop/emulator/cloud-firestore-emulator-v1.8.0.jar

# Install Firestore emulator.
RUN wget ${FIRESTORE_DOWNLOAD_URL} --output-document emulator.jar

ENV PORT=8080

CMD ["sh", "-c", "java -jar ./emulator.jar --host 0.0.0.0 --port ${PORT}"]

EXPOSE ${PORT}
