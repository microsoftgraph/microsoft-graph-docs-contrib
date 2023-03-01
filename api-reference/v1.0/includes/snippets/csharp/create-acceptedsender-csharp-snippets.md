---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/v1.0/users/alexd@contoso.com",
};
await graphClient.Groups["{group-id}"].AcceptedSenders.Ref.PostAsync(requestBody);


```