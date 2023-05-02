---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const calendar = {
  name: 'Marketing calendar'
};

await client.api('/me/calendarGroups/AAMkADYAAAR9NR5AAA=/calendars')
	.version('beta')
	.post(calendar);

```