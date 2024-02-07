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
	Top = 50,
	Skip = 0,
	Search = "",
	Filter = "",
	Select = new List<string>
	{
		"CloudPcId",
		"ManagedDeviceName",
		"UserPrincipalName",
		"UsageInsight",
		"CurrentSize",
		"RecommendedSize",
		"UsageInHour",
		"DevicePerfSummary",
	},
	OrderBy = new List<string>
	{
		"ManagedDeviceName",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Reports.GetCloudPcRecommendationReports.PostAsync(requestBody);


```