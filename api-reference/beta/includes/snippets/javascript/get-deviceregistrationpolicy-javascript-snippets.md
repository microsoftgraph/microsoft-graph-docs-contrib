---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceRegistrationPolicy = await client.api('/policies/deviceRegistrationPolicy')
	.version('beta')
	.get();

```