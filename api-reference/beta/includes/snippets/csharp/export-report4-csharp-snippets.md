---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Security.Cases.EdiscoveryCases.Item.Searches.Item.MicrosoftGraphSecurityExportReport;
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new ExportReportPostRequestBody
{
	DisplayName = "Export 4",
	ExportCriteria = ExportCriteria.PartiallyIndexed,
	ExportLocation = ExportLocation.ResponsiveLocations | ExportLocation.NonresponsiveLocations,
	AdditionalOptions = AdditionalOptions.AdvancedIndexing | AdditionalOptions.SubfolderContents | AdditionalOptions.AllItemsInFolder | AdditionalOptions.ListAttachments | AdditionalOptions.TeamsAndYammerConversations | AdditionalOptions.HtmlTranscripts | AdditionalOptions.CloudAttachments,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Searches["{ediscoverySearch-id}"].MicrosoftGraphSecurityExportReport.PostAsync(requestBody);


```