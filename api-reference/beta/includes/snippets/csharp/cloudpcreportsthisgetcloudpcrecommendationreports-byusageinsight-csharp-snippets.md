---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.GetCloudPcRecommendationReports;
using Microsoft.Graph.Beta.Models;

var requestBody = new GetCloudPcRecommendationReportsPostRequestBody
{
	ReportName = CloudPcReportName.CloudPcUsageCategoryReports,
	Select = new List<string>
	{
		"UsageInsight",
	},
	GroupBy = new List<string>
	{
		"UsageInsight",
	},
	Filter = "",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Reports.GetCloudPcRecommendationReports.PostAsync(requestBody);


```