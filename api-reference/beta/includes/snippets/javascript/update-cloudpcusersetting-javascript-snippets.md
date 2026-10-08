---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcUserSetting = {
  '@odata.type': '#microsoft.graph.cloudPcUserSetting',
  displayName: 'Example',
  selfServiceEnabled: true,
  restorePointSetting: {
    frequencyInHours: 16,
    frequencyType: 'sixteenHours',
    userRestoreEnabled: true
  },
  crossRegionDisasterRecoverySetting: {
    crossRegionDisasterRecoveryEnabled: false,
    maintainCrossRegionRestorePointEnabled: true,
    disasterRecoveryNetworkSetting: {
      regionName: 'westus',
      regionGroup: 'usEast'
    },
    disasterRecoveryType: 'premium',
    userInitiatedDisasterRecoveryAllowed: true
  },
  provisioningSourceType: 'image',
  localAdminEnabled: false,
  resetEnabled: true
};

await client.api('/deviceManagement/virtualEndpoint/userSettings/b0c2d35f-3385-46c8-a6f5-6c3dfad7ffff')
	.version('beta')
	.update(cloudPcUserSetting);

```