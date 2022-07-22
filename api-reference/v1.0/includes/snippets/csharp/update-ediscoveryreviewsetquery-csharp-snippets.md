---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ediscoveryReviewSetQuery = new Microsoft.Graph.Security.EdiscoveryReviewSetQuery
{
	DisplayName = "My Query 1 (update)",
	ContentQuery = "(Author=\"edisons\")"
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].ReviewSets["{security.ediscoveryReviewSet-id}"].Queries["{security.ediscoveryReviewSetQuery-id}"]
	.Request()
	.UpdateAsync(ediscoveryReviewSetQuery);

```