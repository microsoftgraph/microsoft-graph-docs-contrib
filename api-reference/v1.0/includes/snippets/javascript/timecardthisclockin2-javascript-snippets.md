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
  onBehalfOfUserId: '3f29c8e7-7a41-4d8e-99d6-2b1f76c9421e'
};

await client.api('/teams/fd15cad8-80f6-484f-9666-3caf695fbf32/schedule/timeCards/clockin')
	.post(timeCard);

```