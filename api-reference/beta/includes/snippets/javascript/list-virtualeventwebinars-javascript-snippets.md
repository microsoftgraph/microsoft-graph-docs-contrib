---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let webinars = await client.api('/solutions/virtualEvents/webinars')
	.version('beta')
	.get();

```