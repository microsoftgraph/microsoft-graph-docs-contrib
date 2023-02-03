---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outputName = "Export reviewset query via API";

var description = "Export for the Contoso investigation 2";

var exportOptions = Microsoft.Graph.Security.ExportOptions.OriginalFiles | Microsoft.Graph.Security.ExportOptions.FileInfo | Microsoft.Graph.Security.ExportOptions.Tags;

var exportStructure = Microsoft.Graph.Security.ExportFileStructure.Directory;

await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].ReviewSets["{security.ediscoveryReviewSet-id}"].Queries["{security.ediscoveryReviewSetQuery-id}"]
	.Export(outputName,description,null,null,exportOptions,exportStructure)
	.Request()
	.PostAsync();

```