---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CloudPcBulkAction
{
	OdataType = "#microsoft.graph.cloudPcBulkAction",
	DisplayName = "Bulk Power Off by Andy",
	CloudPcIds = new List<string>
	{
		"d6e0b8ee-8836-4b8d-b038-6130a97a3a9d",
		"85994912-197b-4927-b569-447bd81350ec",
	},
	ScheduledDuringMaintenanceWindow = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.BulkActions.PostAsync(requestBody);


```