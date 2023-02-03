---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let templates = await client.api('/identity/conditionalAccess/templates')
	.version('beta')
	.get();

```