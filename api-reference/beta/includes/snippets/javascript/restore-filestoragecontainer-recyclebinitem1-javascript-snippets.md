---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const recycleBinItem = {
  ids: ['5d625d33-338c-4a77-a98a-3e287116440c', '73133853-48f2-4956-bc4a-03f8d1675042']
};

await client.api('/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/recycleBin/items/restore')
	.post(recycleBinItem);

```