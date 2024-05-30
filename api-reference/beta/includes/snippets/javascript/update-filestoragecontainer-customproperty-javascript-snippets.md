---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const fileStorageContainerCustomPropertyDictionary = {
  clientUniqueId: {
    value: 'c5d88310-1fc7-49be-80ca-e7d7a11e638b'
  },
  color: {
    value: 'green'
  }
};

await client.api('/storage/fileStorage/containers/{containerId}/customProperties')
	.version('beta')
	.update(fileStorageContainerCustomPropertyDictionary);

```