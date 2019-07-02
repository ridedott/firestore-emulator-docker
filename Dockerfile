FROM openjdk:8-jre-alpine

ENV FIRESTORE_DOWNLOAD_URL=https://storage.googleapis.com/firebase-preview-drop/emulator/cloud-firestore-emulator-v1.6.0.jar
ENV PORT=8080
# Install Firestore emulator.
RUN wget ${FIRESTORE_DOWNLOAD_URL} --output-document emulator.jar
RUN echo $PORT

CMD ["sh", "-c", "java -jar ./emulator.jar --host 0.0.0.0 --port ${PORT}"]

EXPOSE $PORT
