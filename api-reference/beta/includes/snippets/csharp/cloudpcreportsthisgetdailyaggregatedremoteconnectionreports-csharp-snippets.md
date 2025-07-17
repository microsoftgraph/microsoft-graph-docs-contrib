---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.GetDailyAggregatedRemoteConnectionReports;

var requestBody = new GetDailyAggregatedRemoteConnectionReportsPostRequestBody
{
	Filter = "CloudPcId eq '5db15afe-025d-4f1b-b43a-d0554b63ffff' and RoundTripTimeInMsP50 lt 100 and EventDateTime gt 2022-06-01 ",
	Search = "abc0907",
	Select = new List<string>
	{
		"EventDateTime",
		"CloudPcId",
		"ManagedDeviceName",
		"UsageInHour",
		"RoundTripTimeInMsP50",
		"AvailableBandwidthInMbpsP50",
		"RemoteSignInTimeInSecP50",
		"UserPrincipalName",
	},
	Skip = 0,
	Top = 25,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Reports.GetDailyAggregatedRemoteConnectionReports.PostAsync(requestBody);


```