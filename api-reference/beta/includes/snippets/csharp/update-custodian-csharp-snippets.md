---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.Custodian
{
	ApplyHoldToSources = false,
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].Custodians["{custodian-id}"].PatchAsync(requestBody);


```