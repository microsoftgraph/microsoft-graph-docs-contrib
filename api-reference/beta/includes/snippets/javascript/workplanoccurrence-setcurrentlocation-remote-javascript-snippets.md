---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const setCurrentLocation = {
  updateScope: 'currentSegment',
  workLocationType: 'remote'
};

await client.api('/me/settings/workHoursAndLocations/occurrences/setCurrentLocation')
	.version('beta')
	.post(setCurrentLocation);

```