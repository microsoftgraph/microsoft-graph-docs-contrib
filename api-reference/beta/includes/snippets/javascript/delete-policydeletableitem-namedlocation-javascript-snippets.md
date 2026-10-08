---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/identity/conditionalAccess/deletedItems/namedLocations/b5b69bc9-3e36-4fa0-bc7f-f0e5fd3aebf1')
	.version('beta')
	.delete();

```