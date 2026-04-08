---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Report.RetrieveCloudPcClientAppUsageReport;
using Microsoft.Graph.Beta.Models;

var requestBody = new RetrieveCloudPcClientAppUsageReportPostRequestBody
{
	Filter = "",
	ReportType = CloudPcClientAppUsageReportType.MicrosoftRemoteDesktopClientUsageReport,
	Select = new List<string>
	{
		"UPN",
		"LastSignOn",
		"DaysWithUsage",
	},
	Search = "",
	Skip = 0,
	Top = 50,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Report.RetrieveCloudPcClientAppUsageReport.PostAsync(requestBody);


```