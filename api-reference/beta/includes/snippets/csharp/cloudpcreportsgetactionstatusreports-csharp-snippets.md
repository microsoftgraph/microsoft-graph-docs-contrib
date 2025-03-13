---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.GetActionStatusReports;

var requestBody = new GetActionStatusReportsPostRequestBody
{
	Filter = "ActionState eq 'failed'",
	Select = new List<string>
	{
		"Id",
		"CloudPcDeviceDisplayName",
		"BulkActionId",
		"BulkActionDisplayName",
		"CloudPcId",
		"InitiatedByUserPrincipalName",
		"DeviceOwnerUserPrincipalName",
		"Action",
		"ActionState",
		"RequestDateTime",
		"LastUpdatedDateTime",
		"ActionParameters",
	},
	Skip = 0,
	Top = 50,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Reports.GetActionStatusReports.PostAsync(requestBody);


```