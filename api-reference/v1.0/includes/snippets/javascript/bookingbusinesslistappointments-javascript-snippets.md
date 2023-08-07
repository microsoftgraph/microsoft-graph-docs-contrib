---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let appointments = await client.api('/solutions/bookingBusinesses/Contosolunchdelivery@contoso.onmicrosoft.com/appointments')
	.get();

```