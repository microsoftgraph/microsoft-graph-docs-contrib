---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.EdiscoveryReviewSetQuery
{
	DisplayName = "My Query 1",
	ContentQuery = "(Author=\"edison\")",
};
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].ReviewSets["{ediscoveryReviewSet-id}"].Queries.PostAsync(requestBody);


```