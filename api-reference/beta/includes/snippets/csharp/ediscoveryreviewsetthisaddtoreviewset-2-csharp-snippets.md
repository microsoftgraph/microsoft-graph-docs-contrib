---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Security.Cases.EdiscoveryCases.Item.ReviewSets.Item.MicrosoftGraphSecurityAddToReviewSet;
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new AddToReviewSetPostRequestBody
{
	Search = new EdiscoverySearch
	{
		Id = "c17e91d6-6bc0-4ecb-b388-269ea3d4ffb7",
	},
	AdditionalDataOptions = AdditionalDataOptions.LinkedFiles | AdditionalDataOptions.AllVersions | AdditionalDataOptions.AdvancedIndexing | AdditionalDataOptions.ListAttachments | AdditionalDataOptions.HtmlTranscripts | AdditionalDataOptions.MessageConversationExpansion | AdditionalDataOptions.LocationsWithoutHits | AdditionalDataOptions.AllItemsInFolder,
	CloudAttachmentVersion = CloudAttachmentVersion.Latest,
	DocumentVersion = DocumentVersion.Recent10,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].ReviewSets["{ediscoveryReviewSet-id}"].MicrosoftGraphSecurityAddToReviewSet.PostAsync(requestBody);


```