---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const setCurrentLocation = {
  updateScope: 'currentDay',
  workLocationType: 'office',
  placeId: '12345678-1234-1234-1234-123456789012'
};

await client.api('/me/settings/workHoursAndLocations/occurrences/setCurrentLocation')
	.version('beta')
	.post(setCurrentLocation);

```