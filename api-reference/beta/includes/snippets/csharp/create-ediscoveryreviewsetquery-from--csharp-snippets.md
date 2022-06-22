---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ediscoveryReviewSetQuery = new Microsoft.Graph.Security.EdiscoveryReviewSetQuery
{
	DisplayName = "My Query 1",
	ContentQuery = "(Author=\"edison\")"
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].ReviewSets["{security.ediscoveryReviewSet-id}"].Queries
	.Request()
	.AddAsync(ediscoveryReviewSetQuery);

```