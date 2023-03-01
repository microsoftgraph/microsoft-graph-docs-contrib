---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.EdiscoveryCase
{
	DisplayName = "My Case 1 - Renamed",
	Description = "Updated description",
};
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].PatchAsync(requestBody);


```