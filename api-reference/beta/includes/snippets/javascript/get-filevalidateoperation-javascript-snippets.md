---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let longRunningOperation = await client.api('/external/industryData/operations/581b2ef8-dda2-4a3e-bb62-df13fd4a5808')
	.version('beta')
	.get();

```