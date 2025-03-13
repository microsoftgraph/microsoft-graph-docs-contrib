---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let peopleAdminSettings = await client.api('/admin/people')
	.version('beta')
	.get();

```