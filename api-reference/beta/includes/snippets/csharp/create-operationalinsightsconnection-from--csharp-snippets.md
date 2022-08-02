---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var resourceConnection = new Microsoft.Graph.WindowsUpdates.OperationalInsightsConnection
{
	AzureSubscriptionId = "322ec614-e9c2-4cd5-a55c-5711fdecf02e",
	AzureResourceGroupName = "target-resource-group",
	WorkspaceName = "my-workspace"
};

await graphClient.Admin.Windows.Updates.ResourceConnections
	.Request()
	.AddAsync(resourceConnection);

```