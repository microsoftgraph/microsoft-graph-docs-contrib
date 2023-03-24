---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.GetDailyAggregatedRemoteConnectionReports.GetDailyAggregatedRemoteConnectionReportsPostRequestBody
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
		"AvailableBandwidthInMBpsP50",
		"RemoteSignInTimeInSecP50",
		"UserPrincipalName",
	},
	Skip = 0,
	Top = 25,
};
await graphClient.DeviceManagement.VirtualEndpoint.Reports.GetDailyAggregatedRemoteConnectionReports.PostAsync(requestBody);


```