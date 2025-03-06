---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.RetrieveCloudPcTenantMetricsReport;
using Microsoft.Graph.Beta.Models;

var requestBody = new RetrieveCloudPcTenantMetricsReportPostRequestBody
{
	ReportName = CloudPCPerformanceReportName.CloudPcInsightReport,
	Filter = "",
	Select = new List<string>
	{
		"ManagedDeviceName",
		"DeviceId",
		"ClientOS",
		"ClientVersion",
		"MultimediaRedirectVersion",
		"TeamsClientVersion",
		"HostOSVersion",
		"HostSxSStackVersion",
		"HostAgentVersion",
		"PolicyName",
		"UserSettingName",
		"HostRegion",
		"AzureNetworkConnectName",
	},
	Search = "",
	Skip = 0,
	Top = 50,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Reports.RetrieveCloudPcTenantMetricsReport.PostAsync(requestBody);


```