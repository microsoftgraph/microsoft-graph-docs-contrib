---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.RetrieveCloudPcTroubleshootReports;
using Microsoft.Graph.Beta.Models;

var requestBody = new RetrieveCloudPcTroubleshootReportsPostRequestBody
{
	ReportName = CloudPCTroubleshootReportType.TroubleshootDetailsReport,
	Select = new List<string>
	{
		"CloudPcId",
		"ManagedDeviceName",
		"UserPrincipalName",
		"UsageInsight",
		"CurrentSize",
		"CurrentCPU",
		"CurrentRamInGB",
		"CurrentDiskInGB",
		"RecommendedSize",
		"RecommendedCPU",
		"RecommendedRamInGB",
		"RecommendedDiskInGB",
		"ProvisionPolicyName",
		"RoundTripTimeInMsAvg",
		"AvailableBandwidthInMbpsAvg",
	},
	Search = "",
	Skip = 0,
	Top = 50,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Reports.RetrieveCloudPcTroubleshootReports.PostAsync(requestBody);


```