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
  description: 'Updated Description',
  settings: {
    isOcrEnabled: false,
    itemDefaultSensitivityLabelId: '3d8789ae-7375-4ded-8eeb-d6bc226e42fb'
  }
};

await client.api('/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z')
	.version('beta')
	.update(fileStorageContainer);

```