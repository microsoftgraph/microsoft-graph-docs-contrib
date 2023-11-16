---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDeviceOverview managedDeviceOverview = new ManagedDeviceOverview();
managedDeviceOverview.enrolledDeviceCount = 3;
managedDeviceOverview.mdmEnrolledCount = 0;
managedDeviceOverview.dualEnrolledDeviceCount = 7;
DeviceOperatingSystemSummary deviceOperatingSystemSummary = new DeviceOperatingSystemSummary();
deviceOperatingSystemSummary.androidCount = 12;
deviceOperatingSystemSummary.iosCount = 8;
deviceOperatingSystemSummary.macOSCount = 10;
deviceOperatingSystemSummary.windowsMobileCount = 2;
deviceOperatingSystemSummary.windowsCount = 12;
deviceOperatingSystemSummary.unknownCount = 12;
deviceOperatingSystemSummary.androidDedicatedCount = 5;
deviceOperatingSystemSummary.androidDeviceAdminCount = 7;
deviceOperatingSystemSummary.androidFullyManagedCount = 8;
deviceOperatingSystemSummary.androidWorkProfileCount = 7;
deviceOperatingSystemSummary.androidCorporateWorkProfileCount = 0;
deviceOperatingSystemSummary.configMgrDeviceCount = 4;
managedDeviceOverview.deviceOperatingSystemSummary = deviceOperatingSystemSummary;
DeviceExchangeAccessStateSummary deviceExchangeAccessStateSummary = new DeviceExchangeAccessStateSummary();
deviceExchangeAccessStateSummary.allowedDeviceCount = 2;
deviceExchangeAccessStateSummary.blockedDeviceCount = 2;
deviceExchangeAccessStateSummary.quarantinedDeviceCount = 6;
deviceExchangeAccessStateSummary.unknownDeviceCount = 2;
deviceExchangeAccessStateSummary.unavailableDeviceCount = 6;
managedDeviceOverview.deviceExchangeAccessStateSummary = deviceExchangeAccessStateSummary;

graphClient.deviceManagement().managedDeviceOverview()
	.buildRequest()
	.patch(managedDeviceOverview);

```