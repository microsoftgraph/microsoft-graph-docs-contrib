---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.ServicePrincipals.Item.MicrosoftGraphRemovePassword.RemovePasswordPostRequestBody
{
	KeyId = Guid.Parse("f0b0b335-1d71-4883-8f98-567911bfdca6"),
};
await graphClient.ServicePrincipals["servicePrincipal-id"].MicrosoftGraphRemovePassword.PostAsync(requestBody);


```