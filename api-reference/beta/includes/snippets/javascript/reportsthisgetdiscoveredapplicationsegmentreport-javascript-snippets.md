---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getDiscoveredApplicationSegmentReport = await client.api('/networkAccess/reports/getDiscoveredApplicationSegmentReport(startDateTime=2023-01-01T00:00:00Z,endDateTime=2023-01-31T23:59:59Z,userId=null)')
	.version('beta')
	.get();

```