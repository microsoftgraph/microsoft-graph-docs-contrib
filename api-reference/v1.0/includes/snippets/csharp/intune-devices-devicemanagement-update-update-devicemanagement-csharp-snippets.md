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
	AdditionalData = new Dictionary<string, object>
	{
		{
			"deviceProtectionOverview" , new 
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
			}
		},
		{
			"windowsMalwareOverview" , new 
			{
				OdataType = "microsoft.graph.windowsMalwareOverview",
				MalwareDetectedDeviceCount = 10,
				TotalMalwareCount = 1,
				TotalDistinctMalwareCount = 9,
				MalwareStateSummary = new List<object>
				{
					new 
					{
						OdataType = "microsoft.graph.windowsMalwareStateCount",
						State = "actionFailed",
						DeviceCount = 11,
						MalwareDetectionCount = 5,
						DistinctMalwareCount = 4,
						LastUpdateDateTime = "2016-12-31T23:58:21.6459442-08:00",
					},
				},
				MalwareSeveritySummary = new List<object>
				{
					new 
					{
						OdataType = "microsoft.graph.windowsMalwareSeverityCount",
						Severity = "low",
						MalwareDetectionCount = 5,
						DistinctMalwareCount = 4,
						LastUpdateDateTime = "2016-12-31T23:58:21.6459442-08:00",
					},
				},
				MalwareExecutionStateSummary = new List<object>
				{
					new 
					{
						OdataType = "microsoft.graph.windowsMalwareExecutionStateCount",
						ExecutionState = "blocked",
						DeviceCount = 11,
						LastUpdateDateTime = "2016-12-31T23:58:21.6459442-08:00",
					},
				},
				MalwareCategorySummary = new List<object>
				{
					new 
					{
						OdataType = "microsoft.graph.windowsMalwareCategoryCount",
						Category = "adware",
						DeviceCount = 11,
						ActiveMalwareDetectionCount = 11,
						DistinctActiveMalwareCount = 10,
						LastUpdateDateTime = "2016-12-31T23:58:21.6459442-08:00",
					},
				},
				MalwareNameSummary = new List<object>
				{
					new 
					{
						OdataType = "microsoft.graph.windowsMalwareNameCount",
						MalwareIdentifier = "Malware Identifier value",
						Name = "Name value",
						DeviceCount = 11,
						LastUpdateDateTime = "2016-12-31T23:58:21.6459442-08:00",
					},
				},
				OsVersionsSummary = new List<object>
				{
					new 
					{
						OdataType = "microsoft.graph.osVersionCount",
						OsVersion = "Os Version value",
						DeviceCount = 11,
						LastUpdateDateTime = "2016-12-31T23:58:21.6459442-08:00",
					},
				},
			}
		},
	},
};
var result = await graphClient.DeviceManagement.PatchAsync(requestBody);


```