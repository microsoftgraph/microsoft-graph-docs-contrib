---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sponsors = await client.api('/users/{usersId}/sponsors')
	.version('beta')
	.get();

```