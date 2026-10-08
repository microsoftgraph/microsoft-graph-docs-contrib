---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sensorMigration = await client.api('/security/identities/sensorMigration')
	.version('beta')
	.get();

```