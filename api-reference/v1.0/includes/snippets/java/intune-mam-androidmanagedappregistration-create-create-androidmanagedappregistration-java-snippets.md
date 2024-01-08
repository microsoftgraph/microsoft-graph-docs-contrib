---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AndroidManagedAppRegistration managedAppRegistration = new AndroidManagedAppRegistration();
managedAppRegistration.lastSyncDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:02:49.3205976+00:00");
managedAppRegistration.applicationVersion = "Application Version value";
managedAppRegistration.managementSdkVersion = "Management Sdk Version value";
managedAppRegistration.platformVersion = "Platform Version value";
managedAppRegistration.deviceType = "Device Type value";
managedAppRegistration.deviceTag = "Device Tag value";
managedAppRegistration.deviceName = "Device Name value";
LinkedList<ManagedAppFlaggedReason> flaggedReasonsList = new LinkedList<ManagedAppFlaggedReason>();
flaggedReasonsList.add(ManagedAppFlaggedReason.ROOTED_DEVICE);
managedAppRegistration.flaggedReasons = flaggedReasonsList;
managedAppRegistration.userId = "User Id value";
AndroidMobileAppIdentifier appIdentifier = new AndroidMobileAppIdentifier();
appIdentifier.packageId = "Package Id value";
managedAppRegistration.appIdentifier = appIdentifier;
managedAppRegistration.version = "Version value";

graphClient.deviceAppManagement().managedAppRegistrations()
	.buildRequest()
	.post(managedAppRegistration);

```