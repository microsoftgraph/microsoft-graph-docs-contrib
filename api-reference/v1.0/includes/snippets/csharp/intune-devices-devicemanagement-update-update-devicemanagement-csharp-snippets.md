---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DeviceManagement
{
	OdataType = "#microsoft.graph.deviceManagement",
	SubscriptionState = DeviceManagementSubscriptionState.Active,
	DeviceProtectionOverview = new DeviceProtectionOverview
	{
		OdataType = "microsoft.graph.deviceProtectionOverview",
		TotalReportedDeviceCount = 8,
		InactiveThreatAgentDeviceCount = 14,
		UnknownStateThreatAgentDeviceCount = 2,
		PendingSignatureUpdateDeviceCount = 1,
		CleanDeviceCount = 0,
		PendingFullScanDeviceCount = 10,
		PendingRestartDeviceCount = 9,
		PendingManualStepsDeviceCount = 13,
		PendingOfflineScanDeviceCount = 13,
		CriticalFailuresDeviceCount = 11,
		PendingQuickScanDeviceCount = 11,
	},
	WindowsMalwareOverview = new WindowsMalwareOverview
	{
		OdataType = "microsoft.graph.windowsMalwareOverview",
		MalwareDetectedDeviceCount = 10,
		TotalMalwareCount = 1,
		TotalDistinctMalwareCount = 9,
		MalwareStateSummary = new List<WindowsMalwareStateCount>
		{
			new WindowsMalwareStateCount
			{
				OdataType = "microsoft.graph.windowsMalwareStateCount",
				State = WindowsMalwareThreatState.ActionFailed,
				DeviceCount = 11,
				MalwareDetectionCount = 5,
				DistinctMalwareCount = 4,
				LastUpdateDateTime = DateTimeOffset.Parse("2016-12-31T23:58:21.6459442-08:00"),
			},
		},
		MalwareSeveritySummary = new List<WindowsMalwareSeverityCount>
		{
			new WindowsMalwareSeverityCount
			{
				OdataType = "microsoft.graph.windowsMalwareSeverityCount",
				Severity = WindowsMalwareSeverity.Low,
				MalwareDetectionCount = 5,
				DistinctMalwareCount = 4,
				LastUpdateDateTime = DateTimeOffset.Parse("2016-12-31T23:58:21.6459442-08:00"),
			},
		},
		MalwareExecutionStateSummary = new List<WindowsMalwareExecutionStateCount>
		{
			new WindowsMalwareExecutionStateCount
			{
				OdataType = "microsoft.graph.windowsMalwareExecutionStateCount",
				ExecutionState = WindowsMalwareExecutionState.Blocked,
				DeviceCount = 11,
				LastUpdateDateTime = DateTimeOffset.Parse("2016-12-31T23:58:21.6459442-08:00"),
			},
		},
		MalwareCategorySummary = new List<WindowsMalwareCategoryCount>
		{
			new WindowsMalwareCategoryCount
			{
				OdataType = "microsoft.graph.windowsMalwareCategoryCount",
				Category = WindowsMalwareCategory.Adware,
				DeviceCount = 11,
				ActiveMalwareDetectionCount = 11,
				DistinctActiveMalwareCount = 10,
				LastUpdateDateTime = DateTimeOffset.Parse("2016-12-31T23:58:21.6459442-08:00"),
			},
		},
		MalwareNameSummary = new List<WindowsMalwareNameCount>
		{
			new WindowsMalwareNameCount
			{
				OdataType = "microsoft.graph.windowsMalwareNameCount",
				MalwareIdentifier = "Malware Identifier value",
				Name = "Name value",
				DeviceCount = 11,
				LastUpdateDateTime = DateTimeOffset.Parse("2016-12-31T23:58:21.6459442-08:00"),
			},
		},
		OsVersionsSummary = new List<OsVersionCount>
		{
			new OsVersionCount
			{
				OdataType = "microsoft.graph.osVersionCount",
				OsVersion = "Os Version value",
				DeviceCount = 11,
				LastUpdateDateTime = DateTimeOffset.Parse("2016-12-31T23:58:21.6459442-08:00"),
			},
		},
	},
};
var result = await graphClient.DeviceManagement.PatchAsync(requestBody);


```