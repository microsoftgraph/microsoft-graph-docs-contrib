---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/security/identities/sensors/d31dd827-92cd-4cd6-b269-c151a0eec55d')
	.version('beta')
	.delete();

```