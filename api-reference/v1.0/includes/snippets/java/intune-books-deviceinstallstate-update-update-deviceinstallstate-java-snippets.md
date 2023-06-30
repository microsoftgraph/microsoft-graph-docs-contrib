---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceInstallState deviceInstallState = new DeviceInstallState();
deviceInstallState.deviceName = "Device Name value";
deviceInstallState.deviceId = "Device Id value";
deviceInstallState.lastSyncDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:02:49.3205976+00:00");
deviceInstallState.installState = InstallState.INSTALLED;
deviceInstallState.errorCode = "Error Code value";
deviceInstallState.osVersion = "Os Version value";
deviceInstallState.osDescription = "Os Description value";
deviceInstallState.userName = "User Name value";

graphClient.deviceAppManagement().managedEBooks("{managedEBookId}").deviceStates("{deviceInstallStateId}")
	.buildRequest()
	.patch(deviceInstallState);

```