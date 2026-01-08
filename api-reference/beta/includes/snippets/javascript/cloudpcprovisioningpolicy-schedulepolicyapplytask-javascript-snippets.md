---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const schedulePolicyApplyTask = {
  reservePercentage: 50,
  cronScheduleExpression: '0 0 0 20 * *',
  startDateTime: '2025-03-12 00:00:00',
  endDateTime: null,
  timezone: 'cst'
};

await client.api('/deviceManagement/virtualEndpoint/provisioningPolicies/b0c2d35f-3385-46c8-a6f5-6c3dfad7708b/schedulePolicyApplyTask')
	.version('beta')
	.post(schedulePolicyApplyTask);

```