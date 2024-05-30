---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Compliance.Ediscovery.Cases.Item.ReviewSets.Item.MicrosoftGraphEdiscoveryAddToReviewSet;
using Microsoft.Graph.Beta.Models.Ediscovery;

var requestBody = new AddToReviewSetPostRequestBody
{
	SourceCollection = new SourceCollection
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Compliance.Ediscovery.Cases["{case-id}"].ReviewSets["{reviewSet-id}"].MicrosoftGraphEdiscoveryAddToReviewSet.PostAsync(requestBody);


```