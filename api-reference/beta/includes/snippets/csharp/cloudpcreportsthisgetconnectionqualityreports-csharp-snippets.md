---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.GetConnectionQualityReports.GetConnectionQualityReportsPostRequestBody
{
	Filter = "EventDateTime gt datetime'2023-04-16T07:40:41.694Z'",
	Search = "",
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
	Skip = 0,
	Top = 25,
	OrderBy = new List<string>
	{
	},
};
await graphClient.DeviceManagement.VirtualEndpoint.Reports.GetConnectionQualityReports.PostAsync(requestBody);


```