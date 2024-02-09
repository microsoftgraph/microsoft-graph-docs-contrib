---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Subscription subscription = new Subscription();
subscription.setChangeType("created,updated");
subscription.setNotificationUrl("https://webhook.azurewebsites.net/notificationClient");
subscription.setLifecycleNotificationUrl("https://webhook.azurewebsites.net/api/lifecycleNotifications");
subscription.setResource("/me/mailfolders('inbox')/messages");
OffsetDateTime expirationDateTime = OffsetDateTime.parse("2016-03-20T11:00:00.0000000Z");
subscription.setExpirationDateTime(expirationDateTime);
subscription.setClientState("SecretClientState");
Subscription result = graphClient.subscriptions().post(subscription);


```