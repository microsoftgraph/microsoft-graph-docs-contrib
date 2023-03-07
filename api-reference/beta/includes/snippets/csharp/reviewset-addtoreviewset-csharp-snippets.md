---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Compliance.Ediscovery.Cases.Item.ReviewSets.Item.EdiscoveryAddToReviewSet.AddToReviewSetPostRequestBody
{
	SourceCollection = new Microsoft.Graph.Beta.Models.Ediscovery.SourceCollection
	{
		Id = "1a9b4145d8f84e39bc45a7f68c5c5119",
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"additionalData" , "linkedFiles"
		},
	},
};
await graphClient.Compliance.Ediscovery.Cases["{case-id}"].ReviewSets["{reviewSet-id}"].EdiscoveryAddToReviewSet.PostAsync(requestBody);


```