---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppLogCollectionRequestCollectionPage appLogCollectionRequests = graphClient.deviceManagement().mobileAppTroubleshootingEvents("{mobileAppTroubleshootingEventId}").appLogCollectionRequests()
	.buildRequest()
	.get();

```