---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tagsToAdd = new List<Microsoft.Graph.Security.EdiscoveryReviewTag>()
{
	new Microsoft.Graph.Security.EdiscoveryReviewTag
	{
		Id = "d3d99dc704a74801b792b3e1e722aa0d"
	}
};

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].ReviewSets["{security.ediscoveryReviewSet-id}"].Queries["{security.ediscoveryReviewSetQuery-id}"]
	.ApplyTags(tagsToAdd,null)
	.Request()
	.PostAsync();

```