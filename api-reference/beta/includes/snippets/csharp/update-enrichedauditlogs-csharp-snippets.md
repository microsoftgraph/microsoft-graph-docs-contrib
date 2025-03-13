---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;

var requestBody = new EnrichedAuditLogs
{
	OdataType = "#microsoft.graph.networkaccess.enrichedAuditLogs",
	Sharepoint = new EnrichedAuditLogsSettings
	{
		OdataType = "microsoft.graph.networkaccess.enrichedAuditLogsSettings",
	},
	Teams = new EnrichedAuditLogsSettings
	{
		OdataType = "microsoft.graph.networkaccess.enrichedAuditLogsSettings",
	},
	Exchange = new EnrichedAuditLogsSettings
	{
		OdataType = "microsoft.graph.networkaccess.enrichedAuditLogsSettings",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.Settings.EnrichedAuditLogs.PatchAsync(requestBody);


```