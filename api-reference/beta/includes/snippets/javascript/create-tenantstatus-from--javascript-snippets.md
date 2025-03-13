---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/networkAccess/microsoft.graph.networkaccess.onboard')
	.version('beta')
	.post();

```