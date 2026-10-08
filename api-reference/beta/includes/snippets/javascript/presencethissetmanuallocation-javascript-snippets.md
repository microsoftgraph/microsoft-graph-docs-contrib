---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const setManualLocation = {
  workLocationType: 'office',
  placeId: 'eb706f15-137e-4722-b4d1-b601481d9251'
};

await client.api('/me/presence/setManualLocation')
	.version('beta')
	.post(setManualLocation);

```