---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cancel = {
  cancellationMessage: 'Your appointment has been successfully cancelled. Please call us again.'
};

await client.api('/solutions/bookingBusinesses/Contosolunchdelivery@contoso.onmicrosoft.com/appointments/AAMkADKoAAA=/cancel')
	.post(cancel);

```