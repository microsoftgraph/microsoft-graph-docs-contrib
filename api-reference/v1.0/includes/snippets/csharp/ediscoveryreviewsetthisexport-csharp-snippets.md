---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Security.Cases.EdiscoveryCases.Item.ReviewSets.Item.MicrosoftGraphSecurityExport.ExportPostRequestBody
{
	OutputName = "Export via API",
	Description = "Export for the Contoso investigation",
	ExportOptions = Microsoft.Graph.Beta.Models.Security.ExportOptions.OriginalFiles | Microsoft.Graph.Beta.Models.Security.ExportOptions.Tags,
	ExportStructure = Microsoft.Graph.Beta.Models.Security.ExportFileStructure.Directory,
};
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].ReviewSets["{ediscoveryReviewSet-id}"].MicrosoftGraphSecurityExport.PostAsync(requestBody);


```