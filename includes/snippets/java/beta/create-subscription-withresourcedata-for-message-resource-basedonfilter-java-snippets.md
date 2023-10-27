---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Subscription subscription = new Subscription();
subscription.changeType = "created";
subscription.notificationUrl = "https://webhook.azurewebsites.net/api/send/myNotifyClient";
subscription.resource = "me/mailfolders('Drafts')/messages?$select=Subject,bodyPreview&$filter=hasAttachments eq true AND importance eq 'High'";
subscription.expirationDateTime = OffsetDateTimeSerializer.deserialize("2022-01-01T21:42:18.2257768+00:00");
subscription.clientState = "secretClientValue";
subscription.includeResourceData = true;
subscription.encryptionCertificate = "MIIDMzCCAhugAwIBAgIQE7D+++Dk1hKQBqWA==";
subscription.encryptionCertificateId = "testCertificateId";

graphClient.subscriptions()
	.buildRequest()
	.post(subscription);

```