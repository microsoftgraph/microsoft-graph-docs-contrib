---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const managedMobileApp = {
  '@odata.type': '#microsoft.graph.managedMobileApp',
  mobileAppIdentifier: {
    '@odata.type': 'microsoft.graph.androidMobileAppIdentifier',
    packageId: 'Package Id value'
  },
  version: 'Version value'
};

await client.api('/deviceAppManagement/iosManagedAppProtections/{iosManagedAppProtectionId}/apps')
	.post(managedMobileApp);

```