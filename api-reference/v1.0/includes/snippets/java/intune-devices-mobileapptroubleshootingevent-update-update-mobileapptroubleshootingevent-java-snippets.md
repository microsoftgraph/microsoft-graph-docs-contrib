---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MobileAppTroubleshootingEvent mobileAppTroubleshootingEvent = new MobileAppTroubleshootingEvent();

graphClient.deviceManagement().mobileAppTroubleshootingEvents("{mobileAppTroubleshootingEventId}")
	.buildRequest()
	.patch(mobileAppTroubleshootingEvent);

```