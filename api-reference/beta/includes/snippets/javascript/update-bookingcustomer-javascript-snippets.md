---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const bookingCustomer = {
    displayName: 'Adele',
    emailAddress: 'adele@relecloud.com'
};

await client.api('/bookingBusinesses/contosolunchdelivery@contoso.onmicrosoft.com/customers/8bb19078-0f45-4efb-b2c5-da78b860f73a')
	.version('beta')
	.update(bookingCustomer);

```