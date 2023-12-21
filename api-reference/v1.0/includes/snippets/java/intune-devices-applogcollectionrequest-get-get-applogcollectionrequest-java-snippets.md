---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppLogCollectionRequest appLogCollectionRequest = graphClient.deviceManagement().mobileAppTroubleshootingEvents("{mobileAppTroubleshootingEventId}").appLogCollectionRequests("{appLogCollectionRequestId}")
	.buildRequest()
	.get();

```