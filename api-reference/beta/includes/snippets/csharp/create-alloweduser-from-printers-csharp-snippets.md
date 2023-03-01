---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/beta/users/{id}",
};
await graphClient.Print.Shares["{printerShare-id}"].AllowedUsers.Ref.PostAsync(requestBody);


```