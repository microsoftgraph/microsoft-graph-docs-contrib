---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/solutions/bookingbusinesses/contosolunchdelivery@contoso.com/publish')
	.version('beta')
	.post();

```