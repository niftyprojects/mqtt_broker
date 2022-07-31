Simple mosquitto MQTT broker Docker image

You probably don't want to expose this to the internet at large as there is no authentication at present.

## Building

```bash
git clone https://github.com/niftyprojects/mqtt_broker.git
cd mqtt_broker
docker build -t mosquitto:latest .
```

## Running
```bash
docker run --name mosquitto -it --rm -p 1883:1883 mosquitto
```
