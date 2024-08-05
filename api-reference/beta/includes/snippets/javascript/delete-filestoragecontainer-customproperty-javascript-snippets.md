---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const fileStorageContainerCustomPropertyDictionary = {
  clientUniqueId: null,
  color: null
};

await client.api('/storage/fileStorage/containers/{containerId}/customProperties')
	.version('beta')
	.update(fileStorageContainerCustomPropertyDictionary);

```