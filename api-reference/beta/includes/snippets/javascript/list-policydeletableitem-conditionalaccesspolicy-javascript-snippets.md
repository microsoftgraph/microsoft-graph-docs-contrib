---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let policies = await client.api('/identity/conditionalAccess/deletedItems/policies')
	.version('beta')
	.get();

```