---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CloudPcExportJob
{
	ReportName = CloudPcReportName.RemoteConnectionQualityReports,
	Select = new List<string>
	{
		"CloudPcId",
		"ManagedDeviceName",
		"AvgRoundTripTimeInMsP50",
		"LastConnectionRoundTripTimeInMs",
		"AvgAvailableBandwidthInMBpsP50",
		"LastConnectionAvailableBandWidthInMSps",
		"AvgRemoteSignInTimeInSecP50",
		"UDPConnectionPercentage",
		"LastConnectionGateway",
		"LastConnectionProtocol",
		"EventDateTime",
	},
	Filter = "EventDateTime gt datetime'2023-06-14T07:40:41.694Z'",
};
var result = await graphClient.DeviceManagement.VirtualEndpoint.Reports.ExportJobs.PostAsync(requestBody);


```