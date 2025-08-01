---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Security.Cases.EdiscoveryCases.Item.Searches.Item.MicrosoftGraphSecurityExportResult;
using Microsoft.Graph.Models.Security;

var requestBody = new ExportResultPostRequestBody
{
	DisplayName = "Export 1 - simple PST",
	ExportCriteria = ExportCriteria.SearchHits,
	AdditionalOptions = AdditionalOptions.HtmlTranscripts | AdditionalOptions.SplitSource | AdditionalOptions.IncludeFolderAndPath | AdditionalOptions.CondensePaths | AdditionalOptions.FriendlyName,
	ExportFormat = ExportFormat.Pst,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Searches["{ediscoverySearch-id}"].MicrosoftGraphSecurityExportResult.PostAsync(requestBody);


```