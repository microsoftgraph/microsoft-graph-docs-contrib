---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const apiUsageReportEnablementStatus = {
  metric: 'egressReport'
};

await client.api('/admin/reportSettings/sharePoint/disableApiUsageReport')
	.version('beta')
	.post(apiUsageReportEnablementStatus);

```