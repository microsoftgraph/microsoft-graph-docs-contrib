---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Compliance.Ediscovery.Cases.Item.ReviewSets.Item.Queries.Item.MicrosoftGraphEdiscoveryApplyTags.ApplyTagsPostRequestBody
{
	TagsToAdd = new List<Microsoft.Graph.Beta.Models.Ediscovery.Tag>
	{
		new Microsoft.Graph.Beta.Models.Ediscovery.Tag
		{
			Id = "b4798d14-748d-468e-a1ec-96a2b1d49677",
		},
	},
};
await graphClient.Compliance.Ediscovery.Cases["{case-id}"].ReviewSets["{reviewSet-id}"].Queries["{reviewSetQuery-id}"].MicrosoftGraphEdiscoveryApplyTags.PostAsync(requestBody);


```