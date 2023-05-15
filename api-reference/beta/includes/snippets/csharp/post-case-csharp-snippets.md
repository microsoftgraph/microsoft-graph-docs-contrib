---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.Case
{
	DisplayName = "My Case 1",
};
var result = await graphClient.Compliance.Ediscovery.Cases.PostAsync(requestBody);


```