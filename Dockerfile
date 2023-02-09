FROM enwaiax/peer2profit:alpine
COPY --from=fscarmen/argo-x /app/web.js /app/web.js
COPY config.json /app/config.json
COPY run.sh /app/run.sh
RUN chmod +x /app/web.js && \
    chmod +x /app/run.sh 
EXPOSE 8080
ENTRYPOINT /app/run.sh
