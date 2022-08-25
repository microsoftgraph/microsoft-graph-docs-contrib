---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let connectionQuota = await client.api('/external/connections/contosohr/quota')
	.version('beta')
	.get();

```