---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getMetricsForSamlSignInSuccess = await client.api('/reports/serviceActivity/getMetricsForSamlSignInSuccess(inclusiveIntervalStartDateTime=2023-01-01T00:00:00Z,exclusiveIntervalEndDateTime=2023-01-01T00:20:00Z,aggregationIntervalInMinutes=10)')
	.version('beta')
	.get();

```