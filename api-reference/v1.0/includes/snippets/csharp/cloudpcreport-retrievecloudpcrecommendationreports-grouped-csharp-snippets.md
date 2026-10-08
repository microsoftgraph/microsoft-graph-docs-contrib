---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.DeviceManagement.VirtualEndpoint.Report.RetrieveCloudPcRecommendationReports;
using Microsoft.Graph.Models;

var requestBody = new RetrieveCloudPcRecommendationReportsPostRequestBody
{
	ReportType = CloudPcRecommendationReportType.CloudPcUsageCategoryReport,
	Select = new List<string>
	{
		"ServicePlanId",
		"ServicePlanName",
		"UsageInsight",
	},
	GroupBy = new List<string>
	{
		"ServicePlanId",
		"ServicePlanName",
		"UsageInsight",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Report.RetrieveCloudPcRecommendationReports.PostAsync(requestBody);


```