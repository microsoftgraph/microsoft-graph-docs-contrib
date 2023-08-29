---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Compliance.Ediscovery.Cases.Item.ReviewSets.Item.MicrosoftGraphEdiscoveryAddToReviewSet.AddToReviewSetPostRequestBody
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
await graphClient.Compliance.Ediscovery.Cases["{case-id}"].ReviewSets["{reviewSet-id}"].MicrosoftGraphEdiscoveryAddToReviewSet.PostAsync(requestBody);


```