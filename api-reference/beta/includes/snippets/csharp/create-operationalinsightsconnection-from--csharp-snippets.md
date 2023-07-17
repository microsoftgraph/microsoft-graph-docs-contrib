---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.WindowsUpdates.OperationalInsightsConnection
{
	OdataType = "#microsoft.graph.windowsUpdates.operationalInsightsConnection",
	AzureSubscriptionId = "322ec614-e9c2-4cd5-a55c-5711fdecf02e",
	AzureResourceGroupName = "target-resource-group",
	WorkspaceName = "my-workspace",
};
var result = await graphClient.Admin.Windows.Updates.ResourceConnections.PostAsync(requestBody);


```