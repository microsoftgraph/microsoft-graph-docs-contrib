---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let connections = await client.api('/networkAccess/logs/connections')
	.version('beta')
	.get();

```