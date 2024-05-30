---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const managedDeviceMobileAppConfigurationUserSummary = {
  '@odata.type': '#microsoft.graph.managedDeviceMobileAppConfigurationUserSummary',
  pendingCount: 12,
  notApplicableCount: 2,
  successCount: 12,
  errorCount: 10,
  failedCount: 11,
  lastUpdateDateTime: '2016-12-31T23:58:21.6459442-08:00',
  configurationVersion: 4
};

await client.api('/deviceAppManagement/mobileAppConfigurations/{managedDeviceMobileAppConfigurationId}/userStatusSummary')
	.update(managedDeviceMobileAppConfigurationUserSummary);

```