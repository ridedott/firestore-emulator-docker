FROM openjdk:8-alpine

ENV FIRESTORE_DOWNLOAD_URL=https://storage.googleapis.com/firebase-preview-drop/emulator/cloud-firestore-emulator-v1.3.0.jar

# Install Firestore emulator.
RUN wget ${FIRESTORE_DOWNLOAD_URL} --output-document emulator.jar

CMD ["java", "-jar", "./emulator.jar", "--host", "0.0.0.0", "--port", "8080"]

EXPOSE 8080
