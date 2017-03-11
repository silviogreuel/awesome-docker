for image in elasticsearch logstash kibana; do echo $image; done
for image in elasticsearch logstash kibana; do docker pull $image; done