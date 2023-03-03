---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Subscription subscription = new Subscription();
subscription.changeType = "created";
subscription.notificationUrl = "https://webhook.azurewebsites.net/api/send/myNotifyClient";
subscription.resource = "users/622eaaff-0683-4862-9de4-f2ec83c2bd98/messages";
subscription.expirationDateTime = OffsetDateTimeSerializer.deserialize("2021-07-07T21:42:18.2257768+00:00");
subscription.clientState = "secretClientState";

graphClient.subscriptions()
	.buildRequest()
	.post(subscription);

```