---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let services = await client.api('/bookingBusinesses/contosolunchdelivery@contoso.onmicrosoft.com/services')
	.version('beta')
	.get();

```