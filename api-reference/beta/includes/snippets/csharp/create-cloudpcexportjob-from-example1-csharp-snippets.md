---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CloudPcExportJob
{
	ReportName = CloudPcReportName.TotalAggregatedRemoteConnectionReports,
	Select = new List<string>
	{
		"CloudPcId",
		"ManagedDeviceName",
		"UserPrincipalName",
		"DaysSinceLastSignIn",
		"TotalUsageInHour",
	},
};
var result = await graphClient.DeviceManagement.VirtualEndpoint.Reports.ExportJobs.PostAsync(requestBody);


```