---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getKnownIssuesByTimeRange = await client.api('/admin/windows/updates/products/1/GetKnownIssuesByTimeRange(daysInPast=70,includeAllActive=false)')
	.version('beta')
	.get();

```