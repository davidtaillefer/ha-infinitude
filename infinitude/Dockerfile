FROM nebulous/infinitude:latest

COPY MQTT.pm /infinitude/lib/Infinitude/MQTT.pm

COPY run.sh /run.sh

RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]