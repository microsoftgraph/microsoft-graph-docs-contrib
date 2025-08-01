---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const columnDefinition = {
  required: true,
  hidden: false
};

await client.api('/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/columns/11dfef35-e2f7-4f17-82b0-6fba34445103')
	.version('beta')
	.update(columnDefinition);

```