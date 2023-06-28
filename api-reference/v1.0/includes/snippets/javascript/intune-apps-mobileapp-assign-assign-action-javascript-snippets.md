---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const assign = Content-type: application/json
Content-length: 449

{
  mobileAppAssignments: [
    {
      '@odata.type': '#microsoft.graph.mobileAppAssignment',
      id: '591620b7-20b7-5916-b720-1659b7201659',
      intent: 'required',
      target: {
        '@odata.type': 'microsoft.graph.allLicensedUsersAssignmentTarget'
      },
      settings: {
        '@odata.type': 'microsoft.graph.windowsUniversalAppXAppAssignmentSettings',
        useDeviceContext: true
      }
    }
  ]
};

await client.api('/deviceAppManagement/mobileApps/{mobileAppId}/assign')
	.post(assign);

```