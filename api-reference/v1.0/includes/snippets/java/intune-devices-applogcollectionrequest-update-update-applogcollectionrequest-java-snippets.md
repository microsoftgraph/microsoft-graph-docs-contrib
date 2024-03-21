---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AppLogCollectionRequest appLogCollectionRequest = new AppLogCollectionRequest();
appLogCollectionRequest.setOdataType("#microsoft.graph.appLogCollectionRequest");
appLogCollectionRequest.setStatus(AppLogUploadState.Completed);
appLogCollectionRequest.setErrorMessage("Error Message value");
LinkedList<String> customLogFolders = new LinkedList<String>();
customLogFolders.add("Custom Log Folders value");
appLogCollectionRequest.setCustomLogFolders(customLogFolders);
OffsetDateTime completedDateTime = OffsetDateTime.parse("2016-12-31T23:58:52.3534526-08:00");
appLogCollectionRequest.setCompletedDateTime(completedDateTime);
AppLogCollectionRequest result = graphClient.deviceManagement().mobileAppTroubleshootingEvents().byMobileAppTroubleshootingEventId("{mobileAppTroubleshootingEvent-id}").appLogCollectionRequests().byAppLogCollectionRequestId("{appLogCollectionRequest-id}").patch(appLogCollectionRequest);


```