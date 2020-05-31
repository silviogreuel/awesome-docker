FROM confluentinc/cp-server-connect:latest

RUN confluent-hub install debezium/debezium-connector-sqlserver:1.1.0 --no-prompt
RUN confluent-hub install jcustenborder/kafka-connect-redis:0.0.2.11 --no-prompt

RUN mkdir -p /usr/share/confluent-hub-components/custom
COPY *.jar /usr/share/confluent-hub-components/custom/
