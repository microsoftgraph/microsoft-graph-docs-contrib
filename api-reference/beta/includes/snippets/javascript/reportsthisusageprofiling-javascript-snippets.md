---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let usageProfiling = await client.api('/networkAccess/reports/usageProfiling(startDateTime=2023-03-01T00:00:00Z,endDateTime=2023-03-31T23:59:59Z,aggregatedBy='transactions',discoveredApplicationSegmentId=null)')
	.version('beta')
	.get();

```