---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let swapShiftsChangeRequests = await client.api('/teams/00d4ce58-658a-4d53-a0ad-99aa318bed28/schedule/swapShiftsChangeRequests')
	.version('beta')
	.get();

```