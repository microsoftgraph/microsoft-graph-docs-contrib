---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.GetInaccessibleCloudPcReports.GetInaccessibleCloudPcReportsPostRequestBody
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
await graphClient.DeviceManagement.VirtualEndpoint.Reports.GetInaccessibleCloudPcReports.PostAsync(requestBody);


```