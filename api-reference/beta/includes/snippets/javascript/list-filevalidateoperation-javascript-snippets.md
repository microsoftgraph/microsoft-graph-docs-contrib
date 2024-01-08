---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let operations = await client.api('/external/industryData/operations')
	.version('beta')
	.get();

```