---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const scheduleActionsForRules = Content-type: application/json
Content-length: 242

{
  deviceComplianceScheduledActionForRules: [
    {
      '@odata.type': '#microsoft.graph.deviceComplianceScheduledActionForRule',
      id: 'f0075d5e-5d5e-f007-5e5d-07f05e5d07f0',
      ruleName: 'Rule Name value'
    }
  ]
};

await client.api('/deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/scheduleActionsForRules')
	.post(scheduleActionsForRules);

```