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
    isOcrEnabled: true,
    itemMajorVersionLimit: 50,
    isItemVersioningEnabled: true,
    itemDefaultSensitivityLabelId: '3d8789ae-7375-4ded-8eeb-d6bc226e42fb'
  }
};

await client.api('/storage/fileStorage/containers')
	.version('beta')
	.post(fileStorageContainer);

```