---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EndUserNotificationCollectionPage endUserNotifications = graphClient.security().attackSimulation().endUserNotifications()
	.buildRequest()
	.get();

```