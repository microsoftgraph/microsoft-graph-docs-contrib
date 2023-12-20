---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let policies = await client.api('/networkaccess/filteringProfiles/78858adc-db32-435e-96f6-dd887511bb20/policies/')
	.version('beta')
	.get();

```