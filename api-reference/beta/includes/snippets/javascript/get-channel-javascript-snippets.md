---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let channel = await client.api('/teams/{id}/channels/{id}')
	.version('beta')
	.get();

```