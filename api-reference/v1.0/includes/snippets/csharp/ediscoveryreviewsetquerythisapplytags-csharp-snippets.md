---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Security.Cases.EdiscoveryCases.Item.ReviewSets.Item.Queries.Item.SecurityApplyTags.ApplyTagsPostRequestBody
{
	TagsToAdd = new List<Microsoft.Graph.Models.Security.EdiscoveryReviewTag>
	{
		new Microsoft.Graph.Models.Security.EdiscoveryReviewTag
		{
			Id = "d3d99dc704a74801b792b3e1e722aa0d",
		},
	},
};
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].ReviewSets["{ediscoveryReviewSet-id}"].Queries["{ediscoveryReviewSetQuery-id}"].SecurityApplyTags.PostAsync(requestBody);


```