---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var search = new Microsoft.Graph.Security.EdiscoverySearch
{
	Id = "c17e91d6-6bc0-4ecb-b388-269ea3d4ffb7"
};

var additionalDataOptions = Microsoft.Graph.Security.AdditionalDataOptions.LinkedFiles;

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].ReviewSets["{security.ediscoveryReviewSet-id}"]
	.AddToReviewSet(search,additionalDataOptions)
	.Request()
	.PostAsync();

```