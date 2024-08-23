---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Subscription subscription = new Subscription();
subscription.setChangeType("created");
subscription.setNotificationUrl("https://webhook.azurewebsites.net/api/send/myNotifyClient");
subscription.setResource("me/mailFolders('Inbox')/messages");
OffsetDateTime expirationDateTime = OffsetDateTime.parse("2016-11-20T18:23:45.9356913Z");
subscription.setExpirationDateTime(expirationDateTime);
subscription.setClientState("secretClientValue");
subscription.setLatestSupportedTlsVersion("v1_2");
Subscription result = graphClient.subscriptions().post(subscription);


```