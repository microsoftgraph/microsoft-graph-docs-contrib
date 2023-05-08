---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/v1.0/users/{userId}",
};
await graphClient.Print.Shares["{printerShare-id}"].AllowedUsers.Ref.PostAsync(requestBody);


```