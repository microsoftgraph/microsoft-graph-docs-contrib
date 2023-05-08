---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DirectoryNamespace.Recommendations.Item.Postpone.PostponePostRequestBody
{
	PostponeUntilDateTime = DateTimeOffset.Parse("2023-02-01T02:53:00Z"),
};
var result = await graphClient.Directory.Recommendations["{recommendation-id}"].Postpone.PostAsync(requestBody);


```