---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let calendar = await client.api('/me/calendars/delta')
	.version('beta')
	.get();

```