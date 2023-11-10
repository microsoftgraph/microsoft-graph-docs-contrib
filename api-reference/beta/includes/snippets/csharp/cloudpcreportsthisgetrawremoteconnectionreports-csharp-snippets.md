---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.GetRawRemoteConnectionReports;

var requestBody = new GetRawRemoteConnectionReportsPostRequestBody
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Reports.GetRawRemoteConnectionReports.PostAsync(requestBody);


```