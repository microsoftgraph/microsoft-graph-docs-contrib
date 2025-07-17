---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceTemplate = await client.api('/directory/templates/deviceTemplates/00f1e7a4-de6d-4070-84df-8aab629c4d1e')
	.version('beta')
	.get();

```