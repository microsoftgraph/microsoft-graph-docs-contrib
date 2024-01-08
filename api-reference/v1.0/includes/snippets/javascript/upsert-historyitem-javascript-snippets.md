---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const activityHistoryItem = {
    startedDateTime: '2015-02-11T20:54:04.3457274+00:00',
    userTimezone: 'Africa/Casablanca',
    lastActiveDateTime: '2015-02-11T20:54:04.3457274+00:00'
};

await client.api('/me/activities/{activity-id}/historyItems/{item-id}')
	.put(activityHistoryItem);

```