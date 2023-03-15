---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.GetRemoteConnectionHistoricalReports.GetRemoteConnectionHistoricalReportsPostRequestBody
{
	Filter = "CloudPcId eq '40f9315c-5b63-4126-9f89-b7dcb14fffff' and SignInDateTime gt datetime'2022-09-09T01:22:51.849Z'",
	Select = new List<string>
	{
		"SignInDateTime",
		"SignOutDateTime",
		"UsageInHour",
		"RoundTripTimeInMsP50",
		"AvailableBandwidthInMBpsP50",
		"RemoteSignInTimeInSec",
	},
	Top = 25,
	Skip = 0,
};
await graphClient.DeviceManagement.VirtualEndpoint.Reports.GetRemoteConnectionHistoricalReports.PostAsync(requestBody);


```