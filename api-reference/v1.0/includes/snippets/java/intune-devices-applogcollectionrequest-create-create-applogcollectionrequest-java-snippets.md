---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppLogCollectionRequest appLogCollectionRequest = new AppLogCollectionRequest();
appLogCollectionRequest.status = AppLogUploadState.COMPLETED;
appLogCollectionRequest.errorMessage = "Error Message value";
LinkedList<String> customLogFoldersList = new LinkedList<String>();
customLogFoldersList.add("Custom Log Folders value");
appLogCollectionRequest.customLogFolders = customLogFoldersList;
appLogCollectionRequest.completedDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:52.3534526+00:00");

graphClient.deviceManagement().mobileAppTroubleshootingEvents("{mobileAppTroubleshootingEventId}").appLogCollectionRequests()
	.buildRequest()
	.post(appLogCollectionRequest);

```