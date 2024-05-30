---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const managedAppPolicyDeploymentSummary = {
  '@odata.type': '#microsoft.graph.managedAppPolicyDeploymentSummary',
  displayName: 'Display Name value',
  configurationDeployedUserCount: 14,
  lastRefreshTime: '2017-01-01T00:01:30.1240368-08:00',
  configurationDeploymentSummaryPerApp: [
    {
      '@odata.type': 'microsoft.graph.managedAppPolicyDeploymentSummaryPerApp',
      mobileAppIdentifier: {
        '@odata.type': 'microsoft.graph.androidMobileAppIdentifier',
        packageId: 'Package Id value'
      },
      configurationAppliedUserCount: 13
    }
  ],
  version: 'Version value'
};

await client.api('/deviceAppManagement/iosManagedAppProtections/{iosManagedAppProtectionId}/deploymentSummary')
	.update(managedAppPolicyDeploymentSummary);

```