---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let site = await client.api('/groups/2C712604-1370-44E7-A1F5-426573FDA80A/sites/root')
	.version('beta')
	.get();

```