---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let adminForms = await client.api('/admin/forms')
	.version('beta')
	.get();

```