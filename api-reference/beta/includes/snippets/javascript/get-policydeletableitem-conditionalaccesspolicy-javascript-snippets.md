---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let conditionalAccessPolicy = await client.api('/identity/conditionalAccess/deletedItems/policies/1a71ea59-9583-4f16-9de4-47ecb42adfc6')
	.version('beta')
	.get();

```