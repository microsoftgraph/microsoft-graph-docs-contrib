---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.RetrieveCrossRegionDisasterRecoveryReport;

var requestBody = new RetrieveCrossRegionDisasterRecoveryReportPostRequestBody
{
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
		"IsCrossRegionEnabled",
		"CrossRegionHealthStatus",
		"LicenseType",
		"DisasterRecoveryStatus",
		"CurrentRestorePointDateTime",
		"ActivationExpirationDateTime",
	},
	Skip = 0,
	Top = 50,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Reports.RetrieveCrossRegionDisasterRecoveryReport.PostAsync(requestBody);


```