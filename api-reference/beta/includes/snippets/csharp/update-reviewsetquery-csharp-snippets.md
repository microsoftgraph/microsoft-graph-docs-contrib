---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.ReviewSetQuery
{
	DisplayName = "My Query 1 - Renamed",
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].ReviewSets["{reviewSet-id}"].Queries["{reviewSetQuery-id}"].PatchAsync(requestBody);


```