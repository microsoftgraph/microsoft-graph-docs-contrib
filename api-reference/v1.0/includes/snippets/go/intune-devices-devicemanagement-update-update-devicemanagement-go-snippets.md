---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDeviceManagement()
subscriptionState := graphmodels.ACTIVE_DEVICEMANAGEMENTSUBSCRIPTIONSTATE 
requestBody.SetSubscriptionState(&subscriptionState) 
deviceProtectionOverview := graphmodels.NewDeviceProtectionOverview()
totalReportedDeviceCount := int32(8)
deviceProtectionOverview.SetTotalReportedDeviceCount(&totalReportedDeviceCount) 
inactiveThreatAgentDeviceCount := int32(14)
deviceProtectionOverview.SetInactiveThreatAgentDeviceCount(&inactiveThreatAgentDeviceCount) 
unknownStateThreatAgentDeviceCount := int32(2)
deviceProtectionOverview.SetUnknownStateThreatAgentDeviceCount(&unknownStateThreatAgentDeviceCount) 
pendingSignatureUpdateDeviceCount := int32(1)
deviceProtectionOverview.SetPendingSignatureUpdateDeviceCount(&pendingSignatureUpdateDeviceCount) 
cleanDeviceCount := int32(0)
deviceProtectionOverview.SetCleanDeviceCount(&cleanDeviceCount) 
pendingFullScanDeviceCount := int32(10)
deviceProtectionOverview.SetPendingFullScanDeviceCount(&pendingFullScanDeviceCount) 
pendingRestartDeviceCount := int32(9)
deviceProtectionOverview.SetPendingRestartDeviceCount(&pendingRestartDeviceCount) 
pendingManualStepsDeviceCount := int32(13)
deviceProtectionOverview.SetPendingManualStepsDeviceCount(&pendingManualStepsDeviceCount) 
pendingOfflineScanDeviceCount := int32(13)
deviceProtectionOverview.SetPendingOfflineScanDeviceCount(&pendingOfflineScanDeviceCount) 
criticalFailuresDeviceCount := int32(11)
deviceProtectionOverview.SetCriticalFailuresDeviceCount(&criticalFailuresDeviceCount) 
pendingQuickScanDeviceCount := int32(11)
deviceProtectionOverview.SetPendingQuickScanDeviceCount(&pendingQuickScanDeviceCount) 
requestBody.SetDeviceProtectionOverview(deviceProtectionOverview)
windowsMalwareOverview := graphmodels.NewWindowsMalwareOverview()
malwareDetectedDeviceCount := int32(10)
windowsMalwareOverview.SetMalwareDetectedDeviceCount(&malwareDetectedDeviceCount) 
totalMalwareCount := int32(1)
windowsMalwareOverview.SetTotalMalwareCount(&totalMalwareCount) 
totalDistinctMalwareCount := int32(9)
windowsMalwareOverview.SetTotalDistinctMalwareCount(&totalDistinctMalwareCount) 


windowsMalwareStateCount := graphmodels.NewWindowsMalwareStateCount()
state := graphmodels.ACTIONFAILED_WINDOWSMALWARETHREATSTATE 
windowsMalwareStateCount.SetState(&state) 
deviceCount := int32(11)
windowsMalwareStateCount.SetDeviceCount(&deviceCount) 
malwareDetectionCount := int32(5)
windowsMalwareStateCount.SetMalwareDetectionCount(&malwareDetectionCount) 
distinctMalwareCount := int32(4)
windowsMalwareStateCount.SetDistinctMalwareCount(&distinctMalwareCount) 
lastUpdateDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:58:21.6459442-08:00")
windowsMalwareStateCount.SetLastUpdateDateTime(&lastUpdateDateTime) 

malwareStateSummary := []graphmodels.WindowsMalwareStateCountable {
	windowsMalwareStateCount,
}
windowsMalwareOverview.SetMalwareStateSummary(malwareStateSummary)


windowsMalwareSeverityCount := graphmodels.NewWindowsMalwareSeverityCount()
severity := graphmodels.LOW_WINDOWSMALWARESEVERITY 
windowsMalwareSeverityCount.SetSeverity(&severity) 
malwareDetectionCount := int32(5)
windowsMalwareSeverityCount.SetMalwareDetectionCount(&malwareDetectionCount) 
distinctMalwareCount := int32(4)
windowsMalwareSeverityCount.SetDistinctMalwareCount(&distinctMalwareCount) 
lastUpdateDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:58:21.6459442-08:00")
windowsMalwareSeverityCount.SetLastUpdateDateTime(&lastUpdateDateTime) 

malwareSeveritySummary := []graphmodels.WindowsMalwareSeverityCountable {
	windowsMalwareSeverityCount,
}
windowsMalwareOverview.SetMalwareSeveritySummary(malwareSeveritySummary)


windowsMalwareExecutionStateCount := graphmodels.NewWindowsMalwareExecutionStateCount()
executionState := graphmodels.BLOCKED_WINDOWSMALWAREEXECUTIONSTATE 
windowsMalwareExecutionStateCount.SetExecutionState(&executionState) 
deviceCount := int32(11)
windowsMalwareExecutionStateCount.SetDeviceCount(&deviceCount) 
lastUpdateDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:58:21.6459442-08:00")
windowsMalwareExecutionStateCount.SetLastUpdateDateTime(&lastUpdateDateTime) 

malwareExecutionStateSummary := []graphmodels.WindowsMalwareExecutionStateCountable {
	windowsMalwareExecutionStateCount,
}
windowsMalwareOverview.SetMalwareExecutionStateSummary(malwareExecutionStateSummary)


windowsMalwareCategoryCount := graphmodels.NewWindowsMalwareCategoryCount()
category := graphmodels.ADWARE_WINDOWSMALWARECATEGORY 
windowsMalwareCategoryCount.SetCategory(&category) 
deviceCount := int32(11)
windowsMalwareCategoryCount.SetDeviceCount(&deviceCount) 
activeMalwareDetectionCount := int32(11)
windowsMalwareCategoryCount.SetActiveMalwareDetectionCount(&activeMalwareDetectionCount) 
distinctActiveMalwareCount := int32(10)
windowsMalwareCategoryCount.SetDistinctActiveMalwareCount(&distinctActiveMalwareCount) 
lastUpdateDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:58:21.6459442-08:00")
windowsMalwareCategoryCount.SetLastUpdateDateTime(&lastUpdateDateTime) 

malwareCategorySummary := []graphmodels.WindowsMalwareCategoryCountable {
	windowsMalwareCategoryCount,
}
windowsMalwareOverview.SetMalwareCategorySummary(malwareCategorySummary)


windowsMalwareNameCount := graphmodels.NewWindowsMalwareNameCount()
malwareIdentifier := "Malware Identifier value"
windowsMalwareNameCount.SetMalwareIdentifier(&malwareIdentifier) 
name := "Name value"
windowsMalwareNameCount.SetName(&name) 
deviceCount := int32(11)
windowsMalwareNameCount.SetDeviceCount(&deviceCount) 
lastUpdateDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:58:21.6459442-08:00")
windowsMalwareNameCount.SetLastUpdateDateTime(&lastUpdateDateTime) 

malwareNameSummary := []graphmodels.WindowsMalwareNameCountable {
	windowsMalwareNameCount,
}
windowsMalwareOverview.SetMalwareNameSummary(malwareNameSummary)


osVersionCount := graphmodels.NewOsVersionCount()
osVersion := "Os Version value"
osVersionCount.SetOsVersion(&osVersion) 
deviceCount := int32(11)
osVersionCount.SetDeviceCount(&deviceCount) 
lastUpdateDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:58:21.6459442-08:00")
osVersionCount.SetLastUpdateDateTime(&lastUpdateDateTime) 

osVersionsSummary := []graphmodels.OsVersionCountable {
	osVersionCount,
}
windowsMalwareOverview.SetOsVersionsSummary(osVersionsSummary)
requestBody.SetWindowsMalwareOverview(windowsMalwareOverview)

result, err := graphClient.DeviceManagement().Patch(context.Background(), requestBody, nil)


```