---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Report.RetrieveCloudPcRecommendationReports;
using Microsoft.Graph.Beta.Models;

var requestBody = new RetrieveCloudPcRecommendationReportsPostRequestBody
{
	ReportType = CloudPcRecommendationReportType.CloudPcUsageCategoryReport,
	Filter = "",
	Select = new List<string>
	{
		"CloudPcId",
		"ManagedDeviceName",
		"UserPrincipalName",
		"ServicePlanId",
		"ServicePlanName",
		"UsageInsight",
		"RecommendedPlanId",
		"RecommendedPlanName",
	},
	Search = "",
	Skip = 0,
	Top = 15,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Report.RetrieveCloudPcRecommendationReports.PostAsync(requestBody);


```