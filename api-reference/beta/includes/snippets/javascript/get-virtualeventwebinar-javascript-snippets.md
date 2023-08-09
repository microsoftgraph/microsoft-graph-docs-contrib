---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let virtualEventWebinar = await client.api('/solutions/virtualEvents/webinars/{webinarId}')
	.version('beta')
	.get();

```