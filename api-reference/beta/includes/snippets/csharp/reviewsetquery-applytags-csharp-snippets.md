---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Compliance.Ediscovery.Cases.Item.ReviewSets.Item.Queries.Item.MicrosoftGraphEdiscoveryApplyTags;
using Microsoft.Graph.Beta.Models.Ediscovery;

var requestBody = new ApplyTagsPostRequestBody
{
	TagsToAdd = new List<Tag>
	{
		new Tag
		{
			Id = "b4798d14-748d-468e-a1ec-96a2b1d49677",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Compliance.Ediscovery.Cases["{case-id}"].ReviewSets["{reviewSet-id}"].Queries["{reviewSetQuery-id}"].MicrosoftGraphEdiscoveryApplyTags.PostAsync(requestBody);


```