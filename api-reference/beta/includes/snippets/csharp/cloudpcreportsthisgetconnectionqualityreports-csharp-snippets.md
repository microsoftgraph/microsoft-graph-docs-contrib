---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.GetConnectionQualityReports;

var requestBody = new GetConnectionQualityReportsPostRequestBody
{
	Filter = "EventDateTime gt datetime'2023-04-16T07:40:41.694Z'",
	Search = "",
	Select = new List<string>
	{
		"CloudPcId",
		"ManagedDeviceName",
		"AvgRoundTripTimeInMsP50",
		"LastConnectionRoundTripTimeInMs",
		"AvgAvailableBandwidthInMbpsP50",
		"LastConnectionAvailableBandWidthInMSps",
		"AvgRemoteSignInTimeInSecP50",
		"UDPConnectionPercentage",
		"LastConnectionGateway",
		"LastConnectionProtocol",
		"LastActiveTime",
	},
	Skip = 0,
	Top = 25,
	OrderBy = new List<string>
	{
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Reports.GetConnectionQualityReports.PostAsync(requestBody);


```