---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Compliance.Ediscovery.Cases.Item.ReviewSets.Item.MicrosoftGraphEdiscoveryExport;
using Microsoft.Graph.Beta.Models.Ediscovery;

var requestBody = new ExportPostRequestBody
{
	OutputName = "2020-12-06 Contoso investigation export",
	Description = "Export for the Contoso investigation",
	ExportOptions = ExportOptions.OriginalFiles | ExportOptions.FileInfo | ExportOptions.Tags,
	ExportStructure = ExportFileStructure.Directory,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Compliance.Ediscovery.Cases["{case-id}"].ReviewSets["{reviewSet-id}"].MicrosoftGraphEdiscoveryExport.PostAsync(requestBody);


```