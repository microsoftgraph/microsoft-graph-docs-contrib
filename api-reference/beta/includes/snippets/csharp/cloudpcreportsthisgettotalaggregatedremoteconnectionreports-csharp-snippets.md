---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.GetTotalAggregatedRemoteConnectionReports;

var requestBody = new GetTotalAggregatedRemoteConnectionReportsPostRequestBody
{
	Top = 25,
	Skip = 0,
	Filter = "(TotalUsageInHour ge 40 and TotalUsageInHour le 80)",
	Select = new List<string>
	{
		"CloudPcId",
		"ManagedDeviceName",
		"UserPrincipalName",
		"TotalUsageInHour",
		"LastActiveTime",
		"PcType",
		"CreatedDate"
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Reports.GetTotalAggregatedRemoteConnectionReports.PostAsync(requestBody);


```