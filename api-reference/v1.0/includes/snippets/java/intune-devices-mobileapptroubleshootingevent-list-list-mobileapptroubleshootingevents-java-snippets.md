---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MobileAppTroubleshootingEventCollectionPage mobileAppTroubleshootingEvents = graphClient.deviceManagement().mobileAppTroubleshootingEvents()
	.buildRequest()
	.get();

```