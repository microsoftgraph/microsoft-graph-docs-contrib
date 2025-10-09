---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/identity/conditionalAccess/deletedItems/namedLocations/1a4c0633-332f-4691-a27a-fd8334938a62/restore')
	.version('beta')
	.post();

```