---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamwork = await client.api('/teamwork')
	.version('beta')
	.get();

```