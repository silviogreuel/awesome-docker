for image in telegraf influxdb chronograf kapacitor; do echo $image; done
for image in telegraf influxdb chronograf kapacitor; do docker pull $image; done