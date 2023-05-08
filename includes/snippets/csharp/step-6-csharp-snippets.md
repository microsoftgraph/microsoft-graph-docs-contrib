---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Subscription
{
	ChangeType = "created,updated,deleted",
	NotificationUrl = "https://webhook.azurewebsites.net/api/send/myNotifyClient",
	Resource = "/users/87d349ed-44d7-43e1-9a83-5f2406dee5bd/chats/getAllMessages?model=B",
	ExpirationDateTime = DateTimeOffset.Parse("2023-01-10T18:56:49.112603+00:00"),
	ClientState = "ClientSecret",
	IncludeResourceData = true,
	EncryptionCertificate = "MMMM/sMMMsssMsMMMsMMsMMMs4sMMsM4ssMsMsMMMss4ssMMMssss...s4sMMMMsM444ssM4MMsssMMMMsM4MMM4sMsM4MMsM44MMM4ssss4Ms4sMM4MMMMM4MMs+ss4MsMssMss4s==",
	EncryptionCertificateId = "44M4444M4444M4M44MM4444MM4444MMMM44MM4M4",
};
var result = await graphClient.Subscriptions.PostAsync(requestBody);


```