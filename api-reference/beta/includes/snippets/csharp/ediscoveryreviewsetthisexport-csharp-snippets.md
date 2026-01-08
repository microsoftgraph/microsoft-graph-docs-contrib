---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Security.Cases.EdiscoveryCases.Item.ReviewSets.Item.MicrosoftGraphSecurityExport;
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new ExportPostRequestBody
{
	OutputName = "Export via API",
	Description = "Export for the Contoso investigation",
	ExportOptions = ExportOptions.OriginalFiles | ExportOptions.Tags | ExportOptions.SplitSource | ExportOptions.IncludeFolderAndPath | ExportOptions.FriendlyName | ExportOptions.CondensePaths,
	ExportStructure = ExportFileStructure.Msg,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].ReviewSets["{ediscoveryReviewSet-id}"].MicrosoftGraphSecurityExport.PostAsync(requestBody);


```