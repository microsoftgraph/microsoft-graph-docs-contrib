---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.GetFrontlineReport;
using Microsoft.Graph.Beta.Models;

var requestBody = new GetFrontlineReportPostRequestBody
{
	ReportName = CloudPcReportName.FrontlineLicenseUsageReport,
	Filter = "ServicePlanId eq '2d1d344e-d10c-41bb-953b-b3a47521dca0' and DateTimeUTC gt datetime'2022-11-30'",
	Select = new List<string>
	{
		"ServicePlanId",
		"LicenseCount",
		"ClaimedLicenseCount",
		"DateTimeUTC",
	},
	Skip = 0,
	Top = 100,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Reports.GetFrontlineReport.PostAsync(requestBody);


```