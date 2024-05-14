---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta workplace sensor-devices patch --workplace-sensor-device-id {workplaceSensorDevice-id} --body '{\
    "deviceId": "contoso_9D6816",\
    "displayName": "Contoso 9D6816 Device",\
    "description": "Contoso 9D6816 Device",\
    "macAddress": "00:0A:95:9D:68:16",\
    "manufacturer": "Contoso",\
    "ipV4Address": "192.168.1.100",\
    "ipV6Address": "2001:db8::ff00:42:8329",\
    "placeId": "acfa3bc0-2b83-425b-8910-84a0250e9671",\
    "tags": [\
        "Building A",\
        "Floor 3",\
        "Room 301",\
        "Conference Room"\
    ],\
    "sensors": [\
        {\
            "sensorType": "occupancy"\
        },\
        {\
            "sensorType": "peopleCount"\
        },\
        {\
            "sensorType": "inferredOccupancy"\
        }\
    ]\
}\
'

```