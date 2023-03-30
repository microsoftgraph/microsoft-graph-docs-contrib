---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let businessScenarios = await client.api('/solutions/businessScenarios')
	.version('beta')
	.get();

```