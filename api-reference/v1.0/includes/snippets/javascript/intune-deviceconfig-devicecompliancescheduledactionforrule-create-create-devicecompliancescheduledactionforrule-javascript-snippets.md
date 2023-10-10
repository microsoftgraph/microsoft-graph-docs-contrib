---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceComplianceScheduledActionForRule = {
  '@odata.type': '#microsoft.graph.deviceComplianceScheduledActionForRule',
  ruleName: 'Rule Name value'
};

await client.api('/deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/scheduledActionsForRule')
	.post(deviceComplianceScheduledActionForRule);

```