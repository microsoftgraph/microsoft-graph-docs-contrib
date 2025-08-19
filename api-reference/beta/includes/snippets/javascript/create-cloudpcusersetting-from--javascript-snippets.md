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
  selfServiceEnabled: false,
  localAdminEnabled: true,
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
  restorePointSetting: {
    frequencyInHours: 16,
    frequencyType: 'sixteenHours',
    userRestoreEnabled: true
  }
};

await client.api('/deviceManagement/virtualEndpoint/userSettings')
	.version('beta')
	.post(cloudPcUserSetting);

```