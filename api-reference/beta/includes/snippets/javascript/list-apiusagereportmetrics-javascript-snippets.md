---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let apiUsageReportMetrics = await client.api('/admin/reportSettings/sharePoint/apiUsageReportMetrics')
	.version('beta')
	.get();

```