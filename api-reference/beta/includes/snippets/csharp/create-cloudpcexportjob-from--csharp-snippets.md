---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcExportJob = new CloudPcExportJob
{
	ReportName = CloudPcReportName.TotalAggregatedRemoteConnectionReports,
	Select = new List<String>()
	{
		"CloudPcId",
		"ManagedDeviceName",
		"UserPrincipalName",
		"DaysSinceLastSignIn",
		"TotalUsageInHour"
	}
};

await graphClient.DeviceManagement.VirtualEndpoint.Reports.ExportJobs
	.Request()
	.AddAsync(cloudPcExportJob);

```