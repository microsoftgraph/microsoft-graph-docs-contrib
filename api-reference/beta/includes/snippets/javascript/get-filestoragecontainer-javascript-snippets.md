---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let fileStorageContainer = await client.api('/storage/fileStorage/containers/{containerId}')
	.version('beta')
	.get();

```