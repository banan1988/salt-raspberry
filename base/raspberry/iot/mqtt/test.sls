mqtt-howto:
  test.show_notification:
    - text: |
        In 1st window (console/putty) start listening on topic: mosquitto_sub -d -t mqtt_test_topic
        In 2nd window (console/putty) send message to topic: mosquitto_pub -d -t mqtt_test_topic -m "Hello mqtt"
        In 1st window (console/putty) you should see the message
