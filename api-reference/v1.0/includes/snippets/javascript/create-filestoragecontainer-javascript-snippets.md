---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const fileStorageContainer = {
  displayName: 'My Application Storage Container',
  description: 'Description of My Application Storage Container',
  containerTypeId: '91710488-5756-407f-9046-fbe5f0b4de73',
  settings: {
    isOcrEnabled: true
  }
};

await client.api('/storage/fileStorage/containers')
	.post(fileStorageContainer);

```