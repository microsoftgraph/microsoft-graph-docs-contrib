---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceTemplates = await client.api('/directory/templates/deviceTemplates')
	.version('beta')
	.get();

```