---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Subscription subscription = new Subscription();
subscription.setChangeType("created,updated");
subscription.setNotificationUrl("https://webhook.azurewebsites.net/api/resourceNotifications");
subscription.setLifecycleNotificationUrl("https://webhook.azurewebsites.net/api/lifecycleNotifications");
subscription.setResource("/users/{id}/messages");
OffsetDateTime expirationDateTime = OffsetDateTime.parse("2020-03-20T11:00:00.0000000Z");
subscription.setExpirationDateTime(expirationDateTime);
subscription.setClientState("<secretClientState>");
Subscription result = graphClient.subscriptions().post(subscription);


```