---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const staffAvailabilityItem = {
    staffIds: [
        '311a5454-08b2-4560-ba1c-f715e938cb79'
    ],
    startDateTime: {
        dateTime: '2022-01-25T00:00:00',
        timeZone: 'India Standard Time'
    },
    endDateTime: {
        dateTime: '2022-01-26T17:00:00',
        timeZone: 'Pacific Standard Time'
    }
};

await client.api('/bookingBusinesses/contosolunchdelivery@contoso.onmicrosoft.com/getStaffAvailability')
	.version('beta')
	.post(staffAvailabilityItem);

```