---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const timeOffRequest = {
  senderMessage: 'Need a break',
  timeOffReasonId: 'TOR_08c42f26-9b83-492c-bf52-f3609eb083e3',
  senderUserId: '3f2504e0-4f89-11d3-9a0c-0305e82c3301',
  startDateTime: '2025-05-26T07:00:00Z',
  endDateTime: '2025-05-27T07:00:00Z'
};

await client.api('/teams/{teamId}/schedule/timeOffRequests')
	.post(timeOffRequest);

```