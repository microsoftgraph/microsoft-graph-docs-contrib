---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Security.Cases.EdiscoveryCases.Item.ReviewSets.Item.Queries.Item.MicrosoftGraphSecurityApplyTags.ApplyTagsPostRequestBody
{
	TagsToAdd = new List<Microsoft.Graph.Beta.Models.Security.EdiscoveryReviewTag>
	{
		new Microsoft.Graph.Beta.Models.Security.EdiscoveryReviewTag
		{
			Id = "d3d99dc704a74801b792b3e1e722aa0d",
		},
	},
};
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].ReviewSets["{ediscoveryReviewSet-id}"].Queries["{ediscoveryReviewSetQuery-id}"].MicrosoftGraphSecurityApplyTags.PostAsync(requestBody);


```