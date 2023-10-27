---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DeviceManagementExportJob
{
	OdataType = "#microsoft.graph.deviceManagementExportJob",
	ReportName = "Report Name value",
	Filter = "Filter value",
	Select = new List<string>
	{
		"Select value",
	},
	Format = DeviceManagementReportFileFormat.Pdf,
	SnapshotId = "Snapshot Id value",
	LocalizationType = DeviceManagementExportJobLocalizationType.ReplaceLocalizableValues,
	Status = DeviceManagementReportStatus.NotStarted,
	Url = "Url value",
	RequestDateTime = DateTimeOffset.Parse("2017-01-01T00:03:07.1589002-08:00"),
	ExpirationDateTime = DateTimeOffset.Parse("2016-12-31T23:57:57.2481234-08:00"),
};
var result = await graphClient.DeviceManagement.Reports.ExportJobs.PostAsync(requestBody);


```