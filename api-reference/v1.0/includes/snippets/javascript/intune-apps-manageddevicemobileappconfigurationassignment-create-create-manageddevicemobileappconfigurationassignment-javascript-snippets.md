---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const managedDeviceMobileAppConfigurationAssignment = {
  '@odata.type': '#microsoft.graph.managedDeviceMobileAppConfigurationAssignment',
  target: {
    '@odata.type': 'microsoft.graph.allLicensedUsersAssignmentTarget'
  }
};

await client.api('/deviceAppManagement/mobileAppConfigurations/{managedDeviceMobileAppConfigurationId}/assignments')
	.post(managedDeviceMobileAppConfigurationAssignment);

```