---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Compliance.Ediscovery.Cases.Item.ReviewSets.Item.MicrosoftGraphEdiscoveryExport.ExportPostRequestBody
{
	OutputName = "2020-12-06 Contoso investigation export",
	Description = "Export for the Contoso investigation",
	ExportOptions = Microsoft.Graph.Beta.Models.Ediscovery.ExportOptions.OriginalFiles | Microsoft.Graph.Beta.Models.Ediscovery.ExportOptions.FileInfo | Microsoft.Graph.Beta.Models.Ediscovery.ExportOptions.Tags,
	ExportStructure = Microsoft.Graph.Beta.Models.Ediscovery.ExportFileStructure.Directory,
};
await graphClient.Compliance.Ediscovery.Cases["{case-id}"].ReviewSets["{reviewSet-id}"].MicrosoftGraphEdiscoveryExport.PostAsync(requestBody);


```