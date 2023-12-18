---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Security.Cases.EdiscoveryCases.Item.ReviewSets.Item.Queries.Item.MicrosoftGraphSecurityExport;
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new ExportPostRequestBody
{
	OutputName = "Export reviewset query via API",
	Description = "Export for the Contoso investigation 2",
	ExportOptions = ExportOptions.OriginalFiles | ExportOptions.FileInfo | ExportOptions.Tags,
	ExportStructure = ExportFileStructure.Directory,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].ReviewSets["{ediscoveryReviewSet-id}"].Queries["{ediscoveryReviewSetQuery-id}"].MicrosoftGraphSecurityExport.PostAsync(requestBody);


```