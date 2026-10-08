---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const zone = {
  displayName: 'Updated Production Zone',
  description: 'Updated description for production environments'
};

await client.api('/security/zones/05cfec937c214892a14448562ef4bf4a')
	.version('beta')
	.update(zone);

```