---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceManagement = {
  '@odata.type': '#microsoft.graph.deviceManagement',
  settings: {
    '@odata.type': 'microsoft.graph.deviceManagementSettings',
    deviceComplianceCheckinThresholdDays: 4,
    isScheduledActionEnabled: true,
    secureByDefault: true
  },
  intuneAccountId: 'cf1549a1-49a1-cf15-a149-15cfa14915cf'
};

await client.api('/deviceManagement')
	.update(deviceManagement);

```