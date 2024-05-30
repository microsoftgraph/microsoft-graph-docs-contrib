---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let calendarPermissions = await client.api('/users/{id}/calendar/calendarPermissions')
	.get();

```