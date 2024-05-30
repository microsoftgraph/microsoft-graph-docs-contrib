---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceAppManagement deviceAppManagement = new DeviceAppManagement();
deviceAppManagement.setOdataType("#microsoft.graph.deviceAppManagement");
OffsetDateTime microsoftStoreForBusinessLastSuccessfulSyncDateTime = OffsetDateTime.parse("2016-12-31T23:57:45.2453148-08:00");
deviceAppManagement.setMicrosoftStoreForBusinessLastSuccessfulSyncDateTime(microsoftStoreForBusinessLastSuccessfulSyncDateTime);
deviceAppManagement.setIsEnabledForMicrosoftStoreForBusiness(true);
deviceAppManagement.setMicrosoftStoreForBusinessLanguage("Microsoft Store For Business Language value");
OffsetDateTime microsoftStoreForBusinessLastCompletedApplicationSyncTime = OffsetDateTime.parse("2017-01-01T00:02:00.0421137-08:00");
deviceAppManagement.setMicrosoftStoreForBusinessLastCompletedApplicationSyncTime(microsoftStoreForBusinessLastCompletedApplicationSyncTime);
DeviceAppManagement result = graphClient.deviceAppManagement().patch(deviceAppManagement);


```