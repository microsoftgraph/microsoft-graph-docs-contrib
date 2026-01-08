---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/identity/conditionalAccess/deletedItems/policies/4fa582af-f900-495c-9772-ccf34d5a95fc')
	.version('beta')
	.delete();

```