---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let categoryTemplate = await client.api('/security/labels/categories/{categoryTemplateId}')
	.version('beta')
	.get();

```