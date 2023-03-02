---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Security.Cases.EdiscoveryCases.Item.ReviewSets.Item.SecurityAddToReviewSet.AddToReviewSetPostRequestBody
{
	Search = new Microsoft.Graph.Models.Security.EdiscoverySearch
	{
		Id = "c17e91d6-6bc0-4ecb-b388-269ea3d4ffb7",
	},
	AdditionalDataOptions = Microsoft.Graph.Models.Security.AdditionalDataOptions.LinkedFiles,
};
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].ReviewSets["{ediscoveryReviewSet-id}"].SecurityAddToReviewSet.PostAsync(requestBody);


```