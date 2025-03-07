---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let federatedTokenValidationPolicy = await client.api('/policies/federatedTokenValidationPolicy')
	.version('beta')
	.get();

```