---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let fileStorageContainerCustomPropertyDictionary = await client.api('/storage/fileStorage/containers/{containerId}/customProperties/')
	.version('beta')
	.get();

```