---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AndroidManagedAppRegistration managedAppRegistration = new AndroidManagedAppRegistration();
managedAppRegistration.setOdataType("#microsoft.graph.androidManagedAppRegistration");
OffsetDateTime lastSyncDateTime = OffsetDateTime.parse("2017-01-01T00:02:49.3205976-08:00");
managedAppRegistration.setLastSyncDateTime(lastSyncDateTime);
managedAppRegistration.setApplicationVersion("Application Version value");
managedAppRegistration.setManagementSdkVersion("Management Sdk Version value");
managedAppRegistration.setPlatformVersion("Platform Version value");
managedAppRegistration.setDeviceType("Device Type value");
managedAppRegistration.setDeviceTag("Device Tag value");
managedAppRegistration.setDeviceName("Device Name value");
LinkedList<ManagedAppFlaggedReason> flaggedReasons = new LinkedList<ManagedAppFlaggedReason>();
flaggedReasons.add(ManagedAppFlaggedReason.RootedDevice);
managedAppRegistration.setFlaggedReasons(flaggedReasons);
managedAppRegistration.setUserId("User Id value");
AndroidMobileAppIdentifier appIdentifier = new AndroidMobileAppIdentifier();
appIdentifier.setOdataType("microsoft.graph.androidMobileAppIdentifier");
appIdentifier.setPackageId("Package Id value");
managedAppRegistration.setAppIdentifier(appIdentifier);
managedAppRegistration.setVersion("Version value");
ManagedAppRegistration result = graphClient.deviceAppManagement().managedAppRegistrations().post(managedAppRegistration);


```