---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceAppManagement deviceAppManagement = new DeviceAppManagement();
deviceAppManagement.microsoftStoreForBusinessLastSuccessfulSyncDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:57:45.2453148+00:00");
deviceAppManagement.isEnabledForMicrosoftStoreForBusiness = true;
deviceAppManagement.microsoftStoreForBusinessLanguage = "Microsoft Store For Business Language value";
deviceAppManagement.microsoftStoreForBusinessLastCompletedApplicationSyncTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:02:00.0421137+00:00");

graphClient.deviceAppManagement()
	.buildRequest()
	.patch(deviceAppManagement);

```