---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let onPremisesSyncBehavior = await client.api('/groups/673f83c9-7e84-4db8-9a63-b8a8c309fdad/onPremisesSyncBehavior')
	.version('beta')
	.get();

```