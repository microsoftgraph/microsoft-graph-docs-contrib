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
  title: 'Sample Group',
  description: 'This is a sample description'
};

await client.api('/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups')
	.version('beta')
	.post(sharePointGroup);

```