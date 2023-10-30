---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.GetRawRemoteConnectionReports.GetRawRemoteConnectionReportsPostRequestBody
{
	Filter = "ActivityId eq 'cb6ad4c4-8a17-4245-a644-e4436b1ee204'",
	Select = new List<string>
	{
		"RoundTripTimeInMs",
		"AvailableBandwidthInMBps",
		"SignInDateTime",
	},
	Skip = 0,
	Top = 50,
};
await graphClient.DeviceManagement.VirtualEndpoint.Reports.GetRawRemoteConnectionReports.PostAsync(requestBody);


```