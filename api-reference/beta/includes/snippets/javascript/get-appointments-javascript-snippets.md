---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let appointments = await client.api('/solutions/bookingbusinesses/contosolunchdelivery@contoso.com/appointments')
	.version('beta')
	.get();

```