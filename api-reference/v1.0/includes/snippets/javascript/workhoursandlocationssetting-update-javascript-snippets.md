---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workHoursAndLocationsSetting = {
  maxSharedWorkLocationDetails: 'approximate'
};

await client.api('/me/settings/workHoursAndLocations')
	.update(workHoursAndLocationsSetting);

```