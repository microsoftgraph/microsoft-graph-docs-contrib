---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let privateAccessSensor = await client.api('/onPremisesPublishingProfiles/privateAccess/sensors/{privateAccessSensorId}')
	.version('beta')
	.get();

```