---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const managedDeviceOverview = {
  '@odata.type': '#microsoft.graph.managedDeviceOverview',
  enrolledDeviceCount: 3,
  mdmEnrolledCount: 0,
  dualEnrolledDeviceCount: 7,
  deviceOperatingSystemSummary: {
    '@odata.type': 'microsoft.graph.deviceOperatingSystemSummary',
    androidCount: 12,
    iosCount: 8,
    macOSCount: 10,
    windowsMobileCount: 2,
    windowsCount: 12,
    unknownCount: 12,
    androidDedicatedCount: 5,
    androidDeviceAdminCount: 7,
    androidFullyManagedCount: 8,
    androidWorkProfileCount: 7,
    androidCorporateWorkProfileCount: 0,
    configMgrDeviceCount: 4
  },
  deviceExchangeAccessStateSummary: {
    '@odata.type': 'microsoft.graph.deviceExchangeAccessStateSummary',
    allowedDeviceCount: 2,
    blockedDeviceCount: 2,
    quarantinedDeviceCount: 6,
    unknownDeviceCount: 2,
    unavailableDeviceCount: 6
  }
};

await client.api('/deviceManagement/managedDeviceOverview')
	.update(managedDeviceOverview);

```