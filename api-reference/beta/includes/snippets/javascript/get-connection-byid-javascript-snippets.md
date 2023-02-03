---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let externalConnection = await client.api('/external/connections/contosohr')
	.version('beta')
	.get();

```