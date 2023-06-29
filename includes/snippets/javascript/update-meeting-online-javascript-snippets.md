---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const event = {
  isOnlineMeeting: true,
  onlineMeetingProvider: 'teamsForBusiness'
};

await client.api('/me/events/AAMkADAGu0AABIGYDaAAA=')
	.update(event);

```