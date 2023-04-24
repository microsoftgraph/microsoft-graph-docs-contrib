---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/v1.0/groups/{groupId}",
};
await graphClient.Print.Shares["{printerShare-id}"].AllowedGroups.Ref.PostAsync(requestBody);


```