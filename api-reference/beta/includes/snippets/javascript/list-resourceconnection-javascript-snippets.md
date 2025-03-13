---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resourceConnections = await client.api('/admin/windows/updates/resourceConnections')
	.version('beta')
	.get();

```