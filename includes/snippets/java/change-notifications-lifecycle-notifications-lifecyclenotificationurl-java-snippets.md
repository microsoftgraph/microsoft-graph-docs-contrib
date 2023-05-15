---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Subscription subscription = new Subscription();
subscription.changeType = "created,updated";
subscription.notificationUrl = "https://webhook.azurewebsites.net/api/resourceNotifications";
subscription.lifecycleNotificationUrl = "https://webhook.azurewebsites.net/api/lifecycleNotifications";
subscription.resource = "/users/{id}/messages";
subscription.expirationDateTime = OffsetDateTimeSerializer.deserialize("2020-03-20T11:00:00Z");
subscription.clientState = "<secretClientState>";

graphClient.subscriptions()
	.buildRequest()
	.post(subscription);

```