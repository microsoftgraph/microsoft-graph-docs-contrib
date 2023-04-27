---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let bookingAppointment = await client.api('/bookingBusinesses/contosolunchdelivery@contoso.onmicrosoft.com/appointments/AAMkADKnAAA=')
	.version('beta')
	.get();

```