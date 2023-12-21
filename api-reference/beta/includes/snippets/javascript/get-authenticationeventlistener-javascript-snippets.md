---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customAuthenticationExtension = await client.api('/identity/customAuthenticationExtensions/6fc5012e-7665-43d6-9708-4370863f4e6e')
	.version('beta')
	.get();

```