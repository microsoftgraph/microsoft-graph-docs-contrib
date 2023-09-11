---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customAuthenticationExtensions = await client.api('/identity/customAuthenticationExtensions')
	.version('beta')
	.get();

```