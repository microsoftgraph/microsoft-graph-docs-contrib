---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let services = await client.api('/solutions/bookingbusinesses/contosolunchdelivery@contoso.com/services')
	.version('beta')
	.get();

```