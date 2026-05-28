---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcPools = await client.api('/me/cloudPcPools')
	.version('beta')
	.get();

```