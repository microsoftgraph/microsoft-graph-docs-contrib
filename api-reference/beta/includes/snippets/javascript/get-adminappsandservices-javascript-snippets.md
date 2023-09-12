---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let adminAppsAndServices = await client.api('/admin/appsAndServices')
	.version('beta')
	.get();

```