---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.WindowsUpdates.ResourceConnection
{
	OdataType = "#microsoft.graph.windowsUpdates.operationalInsightsConnection",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"azureSubscriptionId" , "322ec614-e9c2-4cd5-a55c-5711fdecf02e"
		},
		{
			"azureResourceGroupName" , "target-resource-group"
		},
		{
			"workspaceName" , "my-workspace"
		},
	},
};
var result = await graphClient.Admin.Windows.Updates.ResourceConnections.PostAsync(requestBody);


```