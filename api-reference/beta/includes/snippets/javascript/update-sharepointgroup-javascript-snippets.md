---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sharePointGroup = {
  '@odata.type': '#microsoft.graph.sharePointGroup',
  title: 'This is the new group title',
  description: 'Updated group description'
};

await client.api('/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups/12')
	.version('beta')
	.update(sharePointGroup);

```