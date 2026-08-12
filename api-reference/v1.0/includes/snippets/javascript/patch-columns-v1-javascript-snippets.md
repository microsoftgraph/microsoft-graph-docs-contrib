---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const columns = {
  '@context': '#$delta',
  value: [
    {
      id: 'aec21c58-7f1f-4875-b438-d47ef622306c',
      isSearchable: false
    },
    {
      id: 'aec21c58-7f1f-4875-b438-d47df622306c',
      isSearchable: false
    },
    {
      name: 'booleanColumn1234',
      boolean: {}
    },
    {
      name: 'booleanColumn33',
      boolean: {}
    }
  ]
};

await client.api('/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/columns')
	.update(columns);

```