---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/identity/authenticationEventListeners/c7a1f2c5-3d36-4b3f-b75c-143af30a5246')
	.version('beta')
	.delete();

```