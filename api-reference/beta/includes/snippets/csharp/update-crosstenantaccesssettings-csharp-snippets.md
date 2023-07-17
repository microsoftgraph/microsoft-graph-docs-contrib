---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Networkaccess.CrossTenantAccessSettings
{
	OdataType = "#microsoft.graph.networkaccess.crossTenantAccessSettings",
	NetworkPacketTaggingStatus = Microsoft.Graph.Beta.Models.Networkaccess.Status.Enabled,
};
var result = await graphClient.NetworkAccess.Settings.CrossTenantAccess.PatchAsync(requestBody);


```