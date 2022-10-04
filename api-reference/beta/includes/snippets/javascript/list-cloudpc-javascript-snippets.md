---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPCs = await client.api('/me/cloudPCs')
	.version('beta')
	.get();

```