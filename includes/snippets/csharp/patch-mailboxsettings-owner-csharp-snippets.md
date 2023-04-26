---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MailboxSettings
{
	DelegateMeetingMessageDeliveryOptions = DelegateMeetingMessageDeliveryOptions.SendToDelegateAndPrincipal,
};
var result = await graphClient.Users["{user-id}"].MailboxSettings.PatchAsync(requestBody);


```