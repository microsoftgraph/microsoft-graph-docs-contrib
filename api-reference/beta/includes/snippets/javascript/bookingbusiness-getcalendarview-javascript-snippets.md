---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let calendarView = await client.api('/bookingBusinesses/Contosolunchdelivery@M0000000000.onmicrosoft.com/calendarView?start=2018-04-30T00:00:00Z&end=2018-05-10T00:00:00Z')
	.version('beta')
	.get();

```