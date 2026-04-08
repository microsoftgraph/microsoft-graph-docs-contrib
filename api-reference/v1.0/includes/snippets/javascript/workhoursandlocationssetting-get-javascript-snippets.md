---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workHoursAndLocationsSetting = await client.api('/me/settings/workHoursAndLocations')
	.get();

```