---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const fileStorageContainer = {
  displayName: 'Updated Name',
  description: 'Updated Description'
};

await client.api('/storage/fileStorage/containers/{containerId}')
	.version('beta')
	.update(fileStorageContainer);

```