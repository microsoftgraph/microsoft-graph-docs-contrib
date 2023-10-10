---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let conditionalAccessSettings = await client.api('/networkAccess/settings/conditionalAccess')
	.version('beta')
	.get();

```