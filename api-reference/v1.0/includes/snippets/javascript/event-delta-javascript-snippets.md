---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let delta = await client.api('/me/calendarView/delta?startdatetime={start_datetime}&enddatetime={end_datetime}')
	.header('Prefer','odata.maxpagesize=2')
	.get();

```