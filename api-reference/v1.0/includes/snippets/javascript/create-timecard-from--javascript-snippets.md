---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const timeCard = {
  userId: 'd56f3e8a-2b0f-42b1-88b9-e2dbd12a34d2',
  clockInEvent: {
    dateTime: '2025-01-07T21:00:00.000Z',
    isAtApprovedLocation: true,
    notes: {
      content: 'Started late due to traffic in CA 237',
      contentType: 'text'
    }
  },
  clockOutEvent: {
    dateTime: '2025-01-07T21:30:00.000Z',
    isAtApprovedLocation: true
  }
};

await client.api('/teams/871dbd5c-3a6a-4392-bfe1-042452793a50/schedule/timeCards')
	.post(timeCard);

```