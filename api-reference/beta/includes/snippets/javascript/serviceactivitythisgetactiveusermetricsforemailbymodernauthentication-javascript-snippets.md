---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getActiveUserMetricsForEmailByModernAuthentication = await client.api('/reports/serviceActivity/getActiveUserMetricsForEmailByModernAuthentication(inclusiveIntervalStartDateTime=2024-10-02T10:30:00Z,exclusiveIntervalEndDateTime=2024-10-02T10:59:59Z,aggregationIntervalInMinutes=10)')
	.version('beta')
	.get();

```