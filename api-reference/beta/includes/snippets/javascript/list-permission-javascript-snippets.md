---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let permissions = await client.api('/storage/fileStorage/containers/{containerId}/permissions')
	.version('beta')
	.get();

```