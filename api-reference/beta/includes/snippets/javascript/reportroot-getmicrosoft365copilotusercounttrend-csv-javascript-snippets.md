---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let stream = await client.api('/reports/getMicrosoft365CopilotUserCountTrend(period='D7')')
	.version('beta')
	.get();

```