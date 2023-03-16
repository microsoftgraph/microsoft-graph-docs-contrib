---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DirectoryNamespace.Recommendations.Item.Dismiss.DismissPostRequestBody
{
	DismissReason = "Recommendations is not relevant for my organization because...",
};
var result = await graphClient.Directory.Recommendations["{recommendation-id}"].Dismiss.PostAsync(requestBody);


```