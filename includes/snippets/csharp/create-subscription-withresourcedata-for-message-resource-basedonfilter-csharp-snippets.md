---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Subscription
{
	ChangeType = "created",
	NotificationUrl = "https://webhook.azurewebsites.net/api/send/myNotifyClient",
	Resource = "me/mailfolders('Drafts')/messages?$select=Subject,bodyPreview&$filter=hasAttachments eq true AND importance eq 'High'",
	ExpirationDateTime = DateTimeOffset.Parse("2022-01-01T21:42:18.2257768+00:00"),
	ClientState = "secretClientValue",
	IncludeResourceData = true,
	EncryptionCertificate = "MIIDMzCCAhugAwIBAgIQE7D+++Dk1hKQBqWA==",
	EncryptionCertificateId = "testCertificateId",
};
var result = await graphClient.Subscriptions.PostAsync(requestBody);


```