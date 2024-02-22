---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mobileAppAssignment = {
  '@odata.type': '#microsoft.graph.mobileAppAssignment',
  intent: 'required',
  target: {
    '@odata.type': 'microsoft.graph.allLicensedUsersAssignmentTarget'
  },
  settings: {
    '@odata.type': 'microsoft.graph.windowsUniversalAppXAppAssignmentSettings',
    useDeviceContext: true
  }
};

await client.api('/deviceAppManagement/mobileApps/{mobileAppId}/assignments')
	.post(mobileAppAssignment);

```