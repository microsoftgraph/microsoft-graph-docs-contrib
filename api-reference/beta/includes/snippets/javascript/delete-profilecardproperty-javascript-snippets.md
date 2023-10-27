---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/admin/people/profileCardProperties/fax')
	.version('beta')
	.delete();

```