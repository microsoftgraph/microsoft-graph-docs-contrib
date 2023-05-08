---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/beta/directoryObjects/{id}",
};
await graphClient.Applications["{application-id}"].Owners.Ref.PostAsync(requestBody);


```