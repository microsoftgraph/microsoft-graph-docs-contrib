---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.deviceManagement"
	subscriptionState = "active"
	deviceProtectionOverview = @{
		"@odata.type" = "microsoft.graph.deviceProtectionOverview"
		totalReportedDeviceCount = 
		inactiveThreatAgentDeviceCount = 
		unknownStateThreatAgentDeviceCount = 
		pendingSignatureUpdateDeviceCount = 
		cleanDeviceCount = 
		pendingFullScanDeviceCount = 
		pendingRestartDeviceCount = 
		pendingManualStepsDeviceCount = 
		pendingOfflineScanDeviceCount = 
		criticalFailuresDeviceCount = 
		pendingQuickScanDeviceCount = 
	}
	windowsMalwareOverview = @{
		"@odata.type" = "microsoft.graph.windowsMalwareOverview"
		malwareDetectedDeviceCount = 
		totalMalwareCount = 
		totalDistinctMalwareCount = 
		malwareStateSummary = @(
			@{
				"@odata.type" = "microsoft.graph.windowsMalwareStateCount"
				state = "actionFailed"
				deviceCount = 
				malwareDetectionCount = 
				distinctMalwareCount = 
				lastUpdateDateTime = "2016-12-31T23:58:21.6459442-08:00"
			}
		)
		malwareSeveritySummary = @(
			@{
				"@odata.type" = "microsoft.graph.windowsMalwareSeverityCount"
				severity = "low"
				malwareDetectionCount = 
				distinctMalwareCount = 
				lastUpdateDateTime = "2016-12-31T23:58:21.6459442-08:00"
			}
		)
		malwareExecutionStateSummary = @(
			@{
				"@odata.type" = "microsoft.graph.windowsMalwareExecutionStateCount"
				executionState = "blocked"
				deviceCount = 
				lastUpdateDateTime = "2016-12-31T23:58:21.6459442-08:00"
			}
		)
		malwareCategorySummary = @(
			@{
				"@odata.type" = "microsoft.graph.windowsMalwareCategoryCount"
				category = "adware"
				deviceCount = 
				activeMalwareDetectionCount = 
				distinctActiveMalwareCount = 
				lastUpdateDateTime = "2016-12-31T23:58:21.6459442-08:00"
			}
		)
		malwareNameSummary = @(
			@{
				"@odata.type" = "microsoft.graph.windowsMalwareNameCount"
				malwareIdentifier = "Malware Identifier value"
				name = "Name value"
				deviceCount = 
				lastUpdateDateTime = "2016-12-31T23:58:21.6459442-08:00"
			}
		)
		osVersionsSummary = @(
			@{
				"@odata.type" = "microsoft.graph.osVersionCount"
				osVersion = "Os Version value"
				deviceCount = 
				lastUpdateDateTime = "2016-12-31T23:58:21.6459442-08:00"
			}
		)
	}
}

Update-MgDeviceManagement -BodyParameter $params

```