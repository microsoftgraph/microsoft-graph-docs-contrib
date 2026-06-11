---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const apiUsageReportEnablementStatus = {
  metric: 'EgressReport'
};

await client.api('/admin/reportSettings/sharePoint/enableApiUsageReport')
	.version('beta')
	.post(apiUsageReportEnablementStatus);

```