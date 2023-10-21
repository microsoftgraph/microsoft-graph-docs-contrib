---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const assign = Content-type: application/json
Content-length: 287

{
  assignments: [
    {
      '@odata.type': '#microsoft.graph.managedDeviceMobileAppConfigurationAssignment',
      id: '4df81c9c-1c9c-4df8-9c1c-f84d9c1cf84d',
      target: {
        '@odata.type': 'microsoft.graph.allLicensedUsersAssignmentTarget'
      }
    }
  ]
};

await client.api('/deviceAppManagement/mobileAppConfigurations/{managedDeviceMobileAppConfigurationId}/assign')
	.post(assign);

```