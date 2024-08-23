---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const ingestTelemetry = {
    telemetry: [
        {
            deviceId: 'contoso_9D6816',
            sensorId: 'occupancy_1',
            sensorType: 'occupancy',
            boolValue: false,
            timestamp: '2021-03-31T09:36:05.144Z'
        },
        {
            deviceId: 'contoso_9D6816',
            sensorId: 'occupancy_2',
            sensorType: 'occupancy',
            boolValue: false,
            timestamp: '2021-03-31T09:36:05.144Z'
        }
    ]
};

await client.api('/workplace/sensorDevices/ingestTelemetry')
	.version('beta')
	.post(ingestTelemetry);

```