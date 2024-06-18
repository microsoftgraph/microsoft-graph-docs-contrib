---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Subscription subscription = new Subscription();
subscription.setChangeType("created,updated");
subscription.setNotificationUrl("https://webhook.azurewebsites.net/api/resourceNotifications");
subscription.setResource("/teams/{id}/channels/{id}/messages");
subscription.setIncludeResourceData(true);
subscription.setEncryptionCertificate("{base64encodedCertificate}");
subscription.setEncryptionCertificateId("{customId}");
OffsetDateTime expirationDateTime = OffsetDateTime.parse("2019-09-19T11:00:00.0000000Z");
subscription.setExpirationDateTime(expirationDateTime);
subscription.setClientState("{secretClientState}");
Subscription result = graphClient.subscriptions().post(subscription);


```