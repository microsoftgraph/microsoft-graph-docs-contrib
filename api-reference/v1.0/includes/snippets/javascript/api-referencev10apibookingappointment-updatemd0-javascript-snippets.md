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
    endDateTime: {
        '@odata.type':'#microsoft.graph.dateTimeTimeZone',
        dateTime: '2018-05-06T12:30:00.0000000+00:00',
        timeZone: 'UTC'
    },
    startDateTime: {
        '@odata.type':'#microsoft.graph.dateTimeTimeZone',
        dateTime: '2018-05-06T12:00:00.0000000+00:00',
        timeZone: 'UTC'
    }
};

await client.api('/solutions/bookingBusinesses/Contosolunchdelivery@contoso.onmicrosoft.com/appointments/AAMkADKnAAA=')
	.update(bookingAppointment);

```