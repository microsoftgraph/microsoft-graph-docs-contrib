---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/identity/conditionalAccess/deletedItems/policies/59f2aa7a-4c49-4baa-932f-0300792e06c2/restore')
	.version('beta')
	.post();

```