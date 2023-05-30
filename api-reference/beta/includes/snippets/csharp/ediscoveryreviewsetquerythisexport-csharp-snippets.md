---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Security.Cases.EdiscoveryCases.Item.ReviewSets.Item.Queries.Item.MicrosoftGraphSecurityExport.ExportPostRequestBody
{
	OutputName = "Export reviewset query via API",
	Description = "Export for the Contoso investigation 2",
	ExportOptions = Microsoft.Graph.Beta.Models.Security.ExportOptions.OriginalFiles | Microsoft.Graph.Beta.Models.Security.ExportOptions.FileInfo | Microsoft.Graph.Beta.Models.Security.ExportOptions.Tags,
	ExportStructure = Microsoft.Graph.Beta.Models.Security.ExportFileStructure.Directory,
};
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].ReviewSets["{ediscoveryReviewSet-id}"].Queries["{ediscoveryReviewSetQuery-id}"].MicrosoftGraphSecurityExport.PostAsync(requestBody);


```