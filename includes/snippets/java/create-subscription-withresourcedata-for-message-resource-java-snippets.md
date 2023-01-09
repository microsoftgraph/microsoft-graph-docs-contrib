---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Subscription subscription = new Subscription();
subscription.changeType = "created";
subscription.notificationUrl = "https://webhook.azurewebsites.net/api/send/myNotifyClient";
subscription.resource = "users/622eaaff-0683-4862-9de4-f2ec83c2bd98/messages?$select=Subject,bodyPreview,importance,receivedDateTime,from";
subscription.expirationDateTime = OffsetDateTimeSerializer.deserialize("2022-01-01T21:42:18.2257768+00:00");
subscription.clientState = "secretClientValue";
subscription.includeResourceData = true;
subscription.encryptionCertificate = "MIIDMzCCAhugAwIBAgIQE7D+++Dk1hKQBqWA==";
subscription.encryptionCertificateId = "testCertificateId";

graphClient.subscriptions()
	.buildRequest()
	.post(subscription);

```