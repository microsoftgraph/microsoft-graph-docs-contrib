---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/directory/templates/deviceTemplates/2d62b12a-0163-457d-9796-9602e9807e1/owners/00001111-aaaa-2222-bbbb-3333cccc4444/$ref')
	.version('beta')
	.delete();

```