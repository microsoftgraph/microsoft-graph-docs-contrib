---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const bookingAppointment = {
    '@odata.type':'#microsoft.graph.bookingAppointment',
    customers: [
        {
            '@odata.type': '#microsoft.graph.bookingCustomerInformation',
            customerId: 'cd56bb19-c348-42c6-af5c-09818c87fb8c',
            name: 'John Doe',
            emailAddress: 'john.doe@example.com',
            phone: '313-555-5555'
        },
        {
            '@odata.type': '#microsoft.graph.bookingCustomerInformation',
            customerId: '72f148fa-9a86-4c59-b277-f5089d9ea0e7',
            name: 'Jane Smith',
            emailAddress: 'jane.smith@example.com',
            phone: '248-555-5678'
        }
    ]
};

await client.api('/solutions/bookingBusinesses/Contosolunchdelivery@contoso.com/appointments/AAMkADKoAAA=')
	.update(bookingAppointment);

```