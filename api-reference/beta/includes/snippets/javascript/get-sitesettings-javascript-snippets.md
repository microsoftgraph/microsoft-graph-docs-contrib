---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let siteSettings = await client.api('/sites/03164a2b-a288-486a-993e-c41454113e2a/settings')
	.version('beta')
	.get();

```