---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceEnrollmentPlatformRestrictionsConfiguration deviceEnrollmentConfiguration = new DeviceEnrollmentPlatformRestrictionsConfiguration();
deviceEnrollmentConfiguration.setOdataType("#microsoft.graph.deviceEnrollmentPlatformRestrictionsConfiguration");
deviceEnrollmentConfiguration.setDisplayName("Display Name value");
deviceEnrollmentConfiguration.setDescription("Description value");
deviceEnrollmentConfiguration.setPriority(8);
deviceEnrollmentConfiguration.setVersion(7);
DeviceEnrollmentPlatformRestriction iosRestriction = new DeviceEnrollmentPlatformRestriction();
iosRestriction.setOdataType("microsoft.graph.deviceEnrollmentPlatformRestriction");
iosRestriction.setPlatformBlocked(true);
iosRestriction.setPersonalDeviceEnrollmentBlocked(true);
iosRestriction.setOsMinimumVersion("Os Minimum Version value");
iosRestriction.setOsMaximumVersion("Os Maximum Version value");
deviceEnrollmentConfiguration.setIosRestriction(iosRestriction);
DeviceEnrollmentPlatformRestriction windowsRestriction = new DeviceEnrollmentPlatformRestriction();
windowsRestriction.setOdataType("microsoft.graph.deviceEnrollmentPlatformRestriction");
windowsRestriction.setPlatformBlocked(true);
windowsRestriction.setPersonalDeviceEnrollmentBlocked(true);
windowsRestriction.setOsMinimumVersion("Os Minimum Version value");
windowsRestriction.setOsMaximumVersion("Os Maximum Version value");
deviceEnrollmentConfiguration.setWindowsRestriction(windowsRestriction);
DeviceEnrollmentPlatformRestriction windowsMobileRestriction = new DeviceEnrollmentPlatformRestriction();
windowsMobileRestriction.setOdataType("microsoft.graph.deviceEnrollmentPlatformRestriction");
windowsMobileRestriction.setPlatformBlocked(true);
windowsMobileRestriction.setPersonalDeviceEnrollmentBlocked(true);
windowsMobileRestriction.setOsMinimumVersion("Os Minimum Version value");
windowsMobileRestriction.setOsMaximumVersion("Os Maximum Version value");
deviceEnrollmentConfiguration.setWindowsMobileRestriction(windowsMobileRestriction);
DeviceEnrollmentPlatformRestriction androidRestriction = new DeviceEnrollmentPlatformRestriction();
androidRestriction.setOdataType("microsoft.graph.deviceEnrollmentPlatformRestriction");
androidRestriction.setPlatformBlocked(true);
androidRestriction.setPersonalDeviceEnrollmentBlocked(true);
androidRestriction.setOsMinimumVersion("Os Minimum Version value");
androidRestriction.setOsMaximumVersion("Os Maximum Version value");
deviceEnrollmentConfiguration.setAndroidRestriction(androidRestriction);
DeviceEnrollmentPlatformRestriction macOSRestriction = new DeviceEnrollmentPlatformRestriction();
macOSRestriction.setOdataType("microsoft.graph.deviceEnrollmentPlatformRestriction");
macOSRestriction.setPlatformBlocked(true);
macOSRestriction.setPersonalDeviceEnrollmentBlocked(true);
macOSRestriction.setOsMinimumVersion("Os Minimum Version value");
macOSRestriction.setOsMaximumVersion("Os Maximum Version value");
deviceEnrollmentConfiguration.setMacOSRestriction(macOSRestriction);
DeviceEnrollmentConfiguration result = graphClient.deviceManagement().deviceEnrollmentConfigurations().byDeviceEnrollmentConfigurationId("{deviceEnrollmentConfiguration-id}").patch(deviceEnrollmentConfiguration);


```