---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getMetricsForConditionalAccessBlockedSignIn = await client.api('/reports/serviceActivity/getMetricsForConditionalAccessBlockedSignIn(inclusiveIntervalStartDateTime=2023-01-01T00:00:00Z,exclusiveIntervalEndDateTime=2023-01-01T00:20:00Z,aggregationIntervalInMinutes=10)')
	.version('beta')
	.get();

```