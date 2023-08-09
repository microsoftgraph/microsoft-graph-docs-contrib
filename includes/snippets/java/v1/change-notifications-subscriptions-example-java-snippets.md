---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Subscription subscription = new Subscription();
subscription.changeType = "created,updated";
subscription.notificationUrl = "https://webhook.azurewebsites.net/notificationClient";
subscription.lifecycleNotificationUrl = "https://webhook.azurewebsites.net/api/lifecycleNotifications";
subscription.resource = "/me/mailfolders('inbox')/messages";
subscription.expirationDateTime = OffsetDateTimeSerializer.deserialize("2016-03-20T11:00:00Z");
subscription.clientState = "SecretClientState";

graphClient.subscriptions()
	.buildRequest()
	.post(subscription);

```