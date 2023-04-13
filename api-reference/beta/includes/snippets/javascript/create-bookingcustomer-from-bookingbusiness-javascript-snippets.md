---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const bookingCustomer = {
    displayName: 'Joni Sherman',
    emailAddress: 'jonis@relecloud.com',
    addresses: [
        {
            postOfficeBox: '',
            street: '4567 Main Street',
            city: 'Buffalo',
            state: 'NY',
            countryOrRegion: 'USA',
            postalCode: '98052',
            type: 'home'
        },
        {
            postOfficeBox: '',
            street: '4570 Main Street',
            city: 'Buffalo',
            state: 'NY',
            countryOrRegion: 'USA',
            postalCode: '98054',
            type: 'business'
        }
    ],
    phones: [
        {
            number: '206-555-0100',
            type: 'home'
        },
        {
            number: '206-555-0200',
            type: 'business'
        }
     ]
};

await client.api('/bookingBusinesses/contosolunchdelivery@contoso.onmicrosoft.com/customers')
	.version('beta')
	.post(bookingCustomer);

```