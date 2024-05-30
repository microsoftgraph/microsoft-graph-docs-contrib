---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleDefinitions = await client.api('/roleManagement/exchange/roleDefinitions')
	.version('beta')
	.get();

```