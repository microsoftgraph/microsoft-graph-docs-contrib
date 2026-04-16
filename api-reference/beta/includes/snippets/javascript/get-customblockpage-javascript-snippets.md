---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customBlockPage = await client.api('/networkAccess/settings/customBlockPage')
	.version('beta')
	.get();

```