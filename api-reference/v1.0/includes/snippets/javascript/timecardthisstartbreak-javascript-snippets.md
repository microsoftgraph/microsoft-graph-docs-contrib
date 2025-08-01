---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const timeCard = {
  isAtApprovedLocation: true,
  notes: {
    content: 'Starting break late to make up for late clockin',
    contentType: 'text'
  }
};

await client.api('/teams/871dbd5c-3a6a-4392-bfe1-042452793a50/schedule/timeCards/TCK_29ad0a09-b97a-49a2-9490-141cb7602540/startbreak')
	.post(timeCard);

```