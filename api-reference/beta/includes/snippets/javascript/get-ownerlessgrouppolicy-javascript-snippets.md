---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let ownerlessGroupPolicy = await client.api('/policies/ownerlessGroupPolicy')
	.version('beta')
	.get();

```