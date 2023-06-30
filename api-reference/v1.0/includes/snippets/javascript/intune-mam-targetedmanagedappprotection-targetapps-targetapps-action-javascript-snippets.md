---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const targetApps = Content-type: application/json
Content-length: 378

{
  apps: [
    {
      '@odata.type': '#microsoft.graph.managedMobileApp',
      mobileAppIdentifier: {
        '@odata.type': 'microsoft.graph.androidMobileAppIdentifier',
        packageId: 'Package Id value'
      },
      id: '0a129715-9715-0a12-1597-120a1597120a',
      version: 'Version value'
    }
  ],
  appGroupType: 'allCoreMicrosoftApps'
};

await client.api('/deviceAppManagement/managedAppPolicies/{managedAppPolicyId}/targetApps')
	.post(targetApps);

```