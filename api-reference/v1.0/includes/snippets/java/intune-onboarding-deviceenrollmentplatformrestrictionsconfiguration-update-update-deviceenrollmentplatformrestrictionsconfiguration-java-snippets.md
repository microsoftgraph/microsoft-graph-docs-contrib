---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceEnrollmentPlatformRestrictionsConfiguration deviceEnrollmentConfiguration = new DeviceEnrollmentPlatformRestrictionsConfiguration();
deviceEnrollmentConfiguration.displayName = "Display Name value";
deviceEnrollmentConfiguration.description = "Description value";
deviceEnrollmentConfiguration.priority = 8;
deviceEnrollmentConfiguration.version = 7;
DeviceEnrollmentPlatformRestriction iosRestriction = new DeviceEnrollmentPlatformRestriction();
iosRestriction.platformBlocked = true;
iosRestriction.personalDeviceEnrollmentBlocked = true;
iosRestriction.osMinimumVersion = "Os Minimum Version value";
iosRestriction.osMaximumVersion = "Os Maximum Version value";
deviceEnrollmentConfiguration.iosRestriction = iosRestriction;
DeviceEnrollmentPlatformRestriction windowsRestriction = new DeviceEnrollmentPlatformRestriction();
windowsRestriction.platformBlocked = true;
windowsRestriction.personalDeviceEnrollmentBlocked = true;
windowsRestriction.osMinimumVersion = "Os Minimum Version value";
windowsRestriction.osMaximumVersion = "Os Maximum Version value";
deviceEnrollmentConfiguration.windowsRestriction = windowsRestriction;
DeviceEnrollmentPlatformRestriction windowsMobileRestriction = new DeviceEnrollmentPlatformRestriction();
windowsMobileRestriction.platformBlocked = true;
windowsMobileRestriction.personalDeviceEnrollmentBlocked = true;
windowsMobileRestriction.osMinimumVersion = "Os Minimum Version value";
windowsMobileRestriction.osMaximumVersion = "Os Maximum Version value";
deviceEnrollmentConfiguration.windowsMobileRestriction = windowsMobileRestriction;
DeviceEnrollmentPlatformRestriction androidRestriction = new DeviceEnrollmentPlatformRestriction();
androidRestriction.platformBlocked = true;
androidRestriction.personalDeviceEnrollmentBlocked = true;
androidRestriction.osMinimumVersion = "Os Minimum Version value";
androidRestriction.osMaximumVersion = "Os Maximum Version value";
deviceEnrollmentConfiguration.androidRestriction = androidRestriction;
DeviceEnrollmentPlatformRestriction macOSRestriction = new DeviceEnrollmentPlatformRestriction();
macOSRestriction.platformBlocked = true;
macOSRestriction.personalDeviceEnrollmentBlocked = true;
macOSRestriction.osMinimumVersion = "Os Minimum Version value";
macOSRestriction.osMaximumVersion = "Os Maximum Version value";
deviceEnrollmentConfiguration.macOSRestriction = macOSRestriction;

graphClient.deviceManagement().deviceEnrollmentConfigurations("{deviceEnrollmentConfigurationId}")
	.buildRequest()
	.patch(deviceEnrollmentConfiguration);

```