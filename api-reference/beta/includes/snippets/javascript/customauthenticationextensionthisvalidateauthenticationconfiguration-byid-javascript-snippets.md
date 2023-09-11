---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/identity/customAuthenticationExtensions/9f39f3bb-457c-4a2a-8099-0e480e7ea142/validateAuthenticationConfiguration')
	.version('beta')
	.post();

```