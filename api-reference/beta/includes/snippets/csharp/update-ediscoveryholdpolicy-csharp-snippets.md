---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.EdiscoveryHoldPolicy
{
	Description = "updated description",
};
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].LegalHolds["{ediscoveryHoldPolicy-id}"].PatchAsync(requestBody);


```