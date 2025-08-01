---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.GetCloudPcPerformanceReport;
using Microsoft.Graph.Beta.Models;

var requestBody = new GetCloudPcPerformanceReportPostRequestBody
{
	ReportName = CloudPCPerformanceReportName.PerformanceTrendReport,
	Filter = "EventDateTime gt datetime'2023-10-13T00:00:00.000Z'",
	Select = new List<string>
	{
		"EventDateTime",
		"SlowRoundTripTimeCloudPcCount",
		"LowUdpConnectionPercentageCount",
		"NoActiveTimeConnectedCount",
		"LowActiveTimeConnectedCount",
	},
	Search = "",
	Skip = 0,
	Top = 50,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Reports.GetCloudPcPerformanceReport.PostAsync(requestBody);


```