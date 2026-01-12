---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let progressEvents = await client.api('/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/migrationJobs/7b04bfdd-5f8c-4bd9-97faa166a7922c61/progressEvents')
	.version('beta')
	.get();

```