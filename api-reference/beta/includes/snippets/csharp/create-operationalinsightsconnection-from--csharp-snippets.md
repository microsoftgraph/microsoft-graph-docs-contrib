---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.WindowsUpdates;

var requestBody = new OperationalInsightsConnection
{
	OdataType = "#microsoft.graph.windowsUpdates.operationalInsightsConnection",
	AzureSubscriptionId = "322ec614-e9c2-4cd5-a55c-5711fdecf02e",
	AzureResourceGroupName = "target-resource-group",
	WorkspaceName = "my-workspace",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Windows.Updates.ResourceConnections.PostAsync(requestBody);


```