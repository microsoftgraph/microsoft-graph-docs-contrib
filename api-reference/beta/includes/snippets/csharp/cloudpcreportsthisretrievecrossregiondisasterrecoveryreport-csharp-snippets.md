---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.RetrieveCrossRegionDisasterRecoveryReport;
using Microsoft.Graph.Beta.Models;

var requestBody = new RetrieveCrossRegionDisasterRecoveryReportPostRequestBody
{
	ReportName = CloudPcDisasterRecoveryReportName.CrossRegionDisasterRecoveryReport,
	Filter = "DisasterRecoveryStatus eq 'Active outage'",
	Select = new List<string>
	{
		"Id",
		"CloudPcId",
		"UserId",
		"UserSettingId",
		"DeviceId",
		"CloudPCDeviceDisplayName",
		"UserPrincipalName",
		"EnabledDRType",
		"DRHealthStatus",
		"LicenseType",
		"DisasterRecoveryStatus",
		"CurrentRestorePointDateTime",
		"BackupCloudPcStatus",
		"ActivationExpirationDateTime",
	},
	Skip = 0,
	Top = 50,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Reports.RetrieveCrossRegionDisasterRecoveryReport.PostAsync(requestBody);


```