---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let connection = await client.api('/networkAccess/logs/connections/6e3f9793-04a3-9473-f647-29adc069debb')
	.version('beta')
	.get();

```