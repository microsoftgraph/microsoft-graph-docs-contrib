---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Security.Cases.EdiscoveryCases.Item.Searches.Item.MicrosoftGraphSecurityExportReport;
using Microsoft.Graph.Models.Security;

var requestBody = new ExportReportPostRequestBody
{
	DisplayName = "Export 1",
	ExportCriteria = ExportCriteria.SearchHits,
	AdditionalOptions = AdditionalOptions.None,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Searches["{ediscoverySearch-id}"].MicrosoftGraphSecurityExportReport.PostAsync(requestBody);


```