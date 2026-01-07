---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let photoUpdateSettings = await client.api('/admin/people/photoUpdateSettings')
	.version('beta')
	.get();

```