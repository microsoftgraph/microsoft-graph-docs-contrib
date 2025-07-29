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
  state: 'clockedOut',
  notes: {
    contentType: 'text',
    content: 'Modified clockOut time'
  },
  lastModifiedBy: {
    application: null,
    device: null,
    user: {
      id: 'd56f3e8a-2b0f-42b1-88b9-e2dbd12a34d2',
      displayName: 'Alice Bradford'
    }
  },
  clockInEvent: {
    dateTime: '2025-01-07T21:00:00Z',
    isAtApprovedLocation: true,
    notes: {
      contentType: 'text',
      content: 'Started late due to traffic in CA 237'
    }
  },
  clockOutEvent: {
    dateTime: '2025-01-07T21:35:00Z',
    isAtApprovedLocation: true,
    notes: null
  }
};

await client.api('/teams/871dbd5c-3a6a-4392-bfe1-042452793a50/schedule/timeCards/TCK_29ad0a09-b97a-49a2-9490-141cb7602540')
	.put(timeCard);

```