---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/solutions/bookingbusinesses/contosolunchdelivery@contoso.com/unpublish')
	.version('beta')
	.post();

```