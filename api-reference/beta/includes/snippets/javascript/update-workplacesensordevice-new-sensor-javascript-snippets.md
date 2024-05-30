---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workplaceSensorDevice = {
    deviceId: 'contoso_9D6816',
    displayName: 'Contoso 9D6816 Device',
    description: 'Contoso 9D6816 Device',
    macAddress: '00:0A:95:9D:68:16',
    manufacturer: 'Contoso',
    ipV4Address: '192.168.1.100',
    ipV6Address: '2001:db8::ff00:42:8329',
    placeId: 'acfa3bc0-2b83-425b-8910-84a0250e9671',
    tags: [
        'Building A',
        'Floor 3',
        'Room 301',
        'Conference Room'
    ],
    sensors: [
        {
            sensorType: 'occupancy'
        },
        {
            sensorType: 'peopleCount'
        },
        {
            sensorType: 'inferredOccupancy'
        }
    ]
};

await client.api('/workplace/sensorDevices/ade7078f-4bf5-4239-bfde-95a7c4225df7')
	.version('beta')
	.update(workplaceSensorDevice);

```