---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authenticationEventListeners = await client.api('/identity/authenticationEventListeners')
	.version('beta')
	.get();

```