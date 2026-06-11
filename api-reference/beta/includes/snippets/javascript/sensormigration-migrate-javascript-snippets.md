---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const migrateSensorsResult = {
  sensorIds: [
    'fdce0c43-15e8-e322-7656-aff297505af5',
    'a1b2c3d4-e5f6-7890-abcd-ef1234567890'
  ]
};

await client.api('/security/identities/sensorMigration/migrate')
	.version('beta')
	.post(migrateSensorsResult);

```