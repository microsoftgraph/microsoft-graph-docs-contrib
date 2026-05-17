---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let occurrencesView = await client.api('/me/settings/workHoursAndLocations/occurrencesView(startDateTime='2025-12-01T00:00:00Z',endDateTime='2025-12-01T23:59:59Z')')
	.version('beta')
	.get();

```