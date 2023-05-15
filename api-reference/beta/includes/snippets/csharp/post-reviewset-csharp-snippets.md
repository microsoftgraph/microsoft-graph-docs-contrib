---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.ReviewSet
{
	DisplayName = "My Reviewset 3",
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].ReviewSets.PostAsync(requestBody);


```