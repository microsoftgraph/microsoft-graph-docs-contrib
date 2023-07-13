---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Networkaccess.EnrichedAuditLogs
{
	OdataType = "#microsoft.graph.networkaccess.enrichedAuditLogs",
	Sharepoint = new Microsoft.Graph.Beta.Models.Networkaccess.EnrichedAuditLogsSettings
	{
		OdataType = "microsoft.graph.networkaccess.enrichedAuditLogsSettings",
	},
	Teams = new Microsoft.Graph.Beta.Models.Networkaccess.EnrichedAuditLogsSettings
	{
		OdataType = "microsoft.graph.networkaccess.enrichedAuditLogsSettings",
	},
	Exchange = new Microsoft.Graph.Beta.Models.Networkaccess.EnrichedAuditLogsSettings
	{
		OdataType = "microsoft.graph.networkaccess.enrichedAuditLogsSettings",
	},
};
var result = await graphClient.NetworkAccess.Settings.EnrichedAuditLogs.PatchAsync(requestBody);


```