---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let policies = await client.api('/networkaccess/filteringProfiles/9020f79d-71f6-4650-83a9-6b532479578f/policies')
	.version('beta')
	.get();

```