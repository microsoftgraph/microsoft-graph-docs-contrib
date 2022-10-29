---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamworkDeviceActivity = await client.api('/teamwork/devices/1ae3fe60-fe60-1ae3-60fe-e31a60fee31a/activity')
	.version('beta')
	.get();

```