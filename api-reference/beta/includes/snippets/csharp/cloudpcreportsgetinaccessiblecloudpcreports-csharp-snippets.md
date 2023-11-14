---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.GetInaccessibleCloudPcReports;

var requestBody = new GetInaccessibleCloudPcReportsPostRequestBody
{
	Filter = "region eq 'westus2'",
	OrderBy = new List<string>
	{
		"cloudPcId",
	},
	Select = new List<string>
	{
		"cloudPcId",
		"aadDeviceId",
		"cloudPcName",
		"userPrincipalName",
		"provisioningStatus",
		"region",
		"deviceHealthStatus",
		"deviceHealthStatusDateTime",
		"recentDeviceHealthFailureCount",
		"recentConnectionFailureCount",
		"systemStatus",
		"systemStatusDateTime",
	},
	Top = 10,
	Skip = 0,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Reports.GetInaccessibleCloudPcReports.PostAsync(requestBody);


```