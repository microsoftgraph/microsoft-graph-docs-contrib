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
  localAdminEnabled: true,
  restorePointSetting: {
    frequencyType: 'sixteenHours',
    userRestoreEnabled: true
  }
};

await client.api('/deviceManagement/virtualEndpoint/userSettings')
	.post(cloudPcUserSetting);

```