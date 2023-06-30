---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceComplianceActionItem = {
  '@odata.type': '#microsoft.graph.deviceComplianceActionItem',
  gracePeriodHours: 0,
  actionType: 'notification',
  notificationTemplateId: 'Notification Template Id value',
  notificationMessageCCList: [
    'Notification Message CCList value'
  ]
};

await client.api('/deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/scheduledActionsForRule/{deviceComplianceScheduledActionForRuleId}/scheduledActionConfigurations')
	.post(deviceComplianceActionItem);

```