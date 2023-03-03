---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customers = await client.api('/bookingBusinesses/contosolunchdelivery@contoso.onmicrosoft.com/customers')
	.version('beta')
	.get();

```