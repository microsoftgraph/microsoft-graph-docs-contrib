---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const timeOff = {
  userId: 'aa162a04-bec6-4b81-ba99-96caa7b2b24d',
  sharedTimeOff: {
    timeOffReasonId: 'TOR_29a5ba96-c7ef-4e76-bec6-055323746314',
    startDateTime: '2024-10-10T19:00:00Z',
    endDateTime: '2024-10-10T20:00:00Z',
    theme: 'blue'
  },
  draftTimeOff: null
};

await client.api('/teams/{teamId}/schedule/timesOff/{timeOffId}')
	.put(timeOff);

```