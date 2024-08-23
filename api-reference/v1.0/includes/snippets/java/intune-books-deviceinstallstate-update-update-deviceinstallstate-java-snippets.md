---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceInstallState deviceInstallState = new DeviceInstallState();
deviceInstallState.setOdataType("#microsoft.graph.deviceInstallState");
deviceInstallState.setDeviceName("Device Name value");
deviceInstallState.setDeviceId("Device Id value");
OffsetDateTime lastSyncDateTime = OffsetDateTime.parse("2017-01-01T00:02:49.3205976-08:00");
deviceInstallState.setLastSyncDateTime(lastSyncDateTime);
deviceInstallState.setInstallState(InstallState.Installed);
deviceInstallState.setErrorCode("Error Code value");
deviceInstallState.setOsVersion("Os Version value");
deviceInstallState.setOsDescription("Os Description value");
deviceInstallState.setUserName("User Name value");
DeviceInstallState result = graphClient.deviceAppManagement().managedEBooks().byManagedEBookId("{managedEBook-id}").deviceStates().byDeviceInstallStateId("{deviceInstallState-id}").patch(deviceInstallState);


```