---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const bookingCustomerBase = {
    '@odata.type': '#microsoft.graph.bookingCustomer',
    displayName: 'Adele',
    emailAddress: 'adele@relecloud.com'
};

await client.api('/solutions/bookingBusinesses/Contosolunchdelivery@contoso.onmicrosoft.com/customers/8bb19078-0f45-4efb-b2c5-da78b860f73a')
	.update(bookingCustomerBase);

```