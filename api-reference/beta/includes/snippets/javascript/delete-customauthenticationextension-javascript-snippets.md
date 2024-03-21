---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/identity/customAuthenticationExtensions/5c82815a-ee61-4c9b-9f4b-914a708a0c68')
	.version('beta')
	.delete();

```