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
    value: 'c5d88310-1fc7-49be-80ca-e7d7a11e638b',
    isSearchable: true
  }
};

await client.api('/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/customProperties')
	.version('beta')
	.update(fileStorageContainerCustomPropertyDictionary);

```