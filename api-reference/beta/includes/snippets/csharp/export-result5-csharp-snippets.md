---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Security.Cases.EdiscoveryCases.Item.Searches.Item.MicrosoftGraphSecurityExportResult;
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new ExportResultPostRequestBody
{
	DisplayName = "Export 5",
	ExportCriteria = ExportCriteria.PartiallyIndexed,
	ExportLocation = ExportLocation.ResponsiveLocations,
	AdditionalOptions = AdditionalOptions.SplitSource | AdditionalOptions.IncludeFolderAndPath | AdditionalOptions.CondensePaths | AdditionalOptions.FriendlyName,
	ExportFormat = ExportFormat.Eml,
	CloudAttachmentVersion = CloudAttachmentVersion.All,
	DocumentVersion = DocumentVersion.Recent100,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].Searches["{ediscoverySearch-id}"].MicrosoftGraphSecurityExportResult.PostAsync(requestBody);


```