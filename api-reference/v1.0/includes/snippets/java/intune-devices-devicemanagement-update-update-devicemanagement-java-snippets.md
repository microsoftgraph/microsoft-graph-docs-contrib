---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceManagement deviceManagement = new DeviceManagement();
deviceManagement.setOdataType("#microsoft.graph.deviceManagement");
deviceManagement.setSubscriptionState(DeviceManagementSubscriptionState.Active);
DeviceProtectionOverview deviceProtectionOverview = new DeviceProtectionOverview();
deviceProtectionOverview.setOdataType("microsoft.graph.deviceProtectionOverview");
deviceProtectionOverview.setTotalReportedDeviceCount(8);
deviceProtectionOverview.setInactiveThreatAgentDeviceCount(14);
deviceProtectionOverview.setUnknownStateThreatAgentDeviceCount(2);
deviceProtectionOverview.setPendingSignatureUpdateDeviceCount(1);
deviceProtectionOverview.setCleanDeviceCount(0);
deviceProtectionOverview.setPendingFullScanDeviceCount(10);
deviceProtectionOverview.setPendingRestartDeviceCount(9);
deviceProtectionOverview.setPendingManualStepsDeviceCount(13);
deviceProtectionOverview.setPendingOfflineScanDeviceCount(13);
deviceProtectionOverview.setCriticalFailuresDeviceCount(11);
deviceProtectionOverview.setPendingQuickScanDeviceCount(11);
deviceManagement.setDeviceProtectionOverview(deviceProtectionOverview);
WindowsMalwareOverview windowsMalwareOverview = new WindowsMalwareOverview();
windowsMalwareOverview.setOdataType("microsoft.graph.windowsMalwareOverview");
windowsMalwareOverview.setMalwareDetectedDeviceCount(10);
windowsMalwareOverview.setTotalMalwareCount(1);
windowsMalwareOverview.setTotalDistinctMalwareCount(9);
LinkedList<WindowsMalwareStateCount> malwareStateSummary = new LinkedList<WindowsMalwareStateCount>();
WindowsMalwareStateCount windowsMalwareStateCount = new WindowsMalwareStateCount();
windowsMalwareStateCount.setOdataType("microsoft.graph.windowsMalwareStateCount");
windowsMalwareStateCount.setState(WindowsMalwareThreatState.ActionFailed);
windowsMalwareStateCount.setDeviceCount(11);
windowsMalwareStateCount.setMalwareDetectionCount(5);
windowsMalwareStateCount.setDistinctMalwareCount(4);
OffsetDateTime lastUpdateDateTime = OffsetDateTime.parse("2016-12-31T23:58:21.6459442-08:00");
windowsMalwareStateCount.setLastUpdateDateTime(lastUpdateDateTime);
malwareStateSummary.add(windowsMalwareStateCount);
windowsMalwareOverview.setMalwareStateSummary(malwareStateSummary);
LinkedList<WindowsMalwareSeverityCount> malwareSeveritySummary = new LinkedList<WindowsMalwareSeverityCount>();
WindowsMalwareSeverityCount windowsMalwareSeverityCount = new WindowsMalwareSeverityCount();
windowsMalwareSeverityCount.setOdataType("microsoft.graph.windowsMalwareSeverityCount");
windowsMalwareSeverityCount.setSeverity(WindowsMalwareSeverity.Low);
windowsMalwareSeverityCount.setMalwareDetectionCount(5);
windowsMalwareSeverityCount.setDistinctMalwareCount(4);
OffsetDateTime lastUpdateDateTime1 = OffsetDateTime.parse("2016-12-31T23:58:21.6459442-08:00");
windowsMalwareSeverityCount.setLastUpdateDateTime(lastUpdateDateTime1);
malwareSeveritySummary.add(windowsMalwareSeverityCount);
windowsMalwareOverview.setMalwareSeveritySummary(malwareSeveritySummary);
LinkedList<WindowsMalwareExecutionStateCount> malwareExecutionStateSummary = new LinkedList<WindowsMalwareExecutionStateCount>();
WindowsMalwareExecutionStateCount windowsMalwareExecutionStateCount = new WindowsMalwareExecutionStateCount();
windowsMalwareExecutionStateCount.setOdataType("microsoft.graph.windowsMalwareExecutionStateCount");
windowsMalwareExecutionStateCount.setExecutionState(WindowsMalwareExecutionState.Blocked);
windowsMalwareExecutionStateCount.setDeviceCount(11);
OffsetDateTime lastUpdateDateTime2 = OffsetDateTime.parse("2016-12-31T23:58:21.6459442-08:00");
windowsMalwareExecutionStateCount.setLastUpdateDateTime(lastUpdateDateTime2);
malwareExecutionStateSummary.add(windowsMalwareExecutionStateCount);
windowsMalwareOverview.setMalwareExecutionStateSummary(malwareExecutionStateSummary);
LinkedList<WindowsMalwareCategoryCount> malwareCategorySummary = new LinkedList<WindowsMalwareCategoryCount>();
WindowsMalwareCategoryCount windowsMalwareCategoryCount = new WindowsMalwareCategoryCount();
windowsMalwareCategoryCount.setOdataType("microsoft.graph.windowsMalwareCategoryCount");
windowsMalwareCategoryCount.setCategory(WindowsMalwareCategory.Adware);
windowsMalwareCategoryCount.setDeviceCount(11);
windowsMalwareCategoryCount.setActiveMalwareDetectionCount(11);
windowsMalwareCategoryCount.setDistinctActiveMalwareCount(10);
OffsetDateTime lastUpdateDateTime3 = OffsetDateTime.parse("2016-12-31T23:58:21.6459442-08:00");
windowsMalwareCategoryCount.setLastUpdateDateTime(lastUpdateDateTime3);
malwareCategorySummary.add(windowsMalwareCategoryCount);
windowsMalwareOverview.setMalwareCategorySummary(malwareCategorySummary);
LinkedList<WindowsMalwareNameCount> malwareNameSummary = new LinkedList<WindowsMalwareNameCount>();
WindowsMalwareNameCount windowsMalwareNameCount = new WindowsMalwareNameCount();
windowsMalwareNameCount.setOdataType("microsoft.graph.windowsMalwareNameCount");
windowsMalwareNameCount.setMalwareIdentifier("Malware Identifier value");
windowsMalwareNameCount.setName("Name value");
windowsMalwareNameCount.setDeviceCount(11);
OffsetDateTime lastUpdateDateTime4 = OffsetDateTime.parse("2016-12-31T23:58:21.6459442-08:00");
windowsMalwareNameCount.setLastUpdateDateTime(lastUpdateDateTime4);
malwareNameSummary.add(windowsMalwareNameCount);
windowsMalwareOverview.setMalwareNameSummary(malwareNameSummary);
LinkedList<OsVersionCount> osVersionsSummary = new LinkedList<OsVersionCount>();
OsVersionCount osVersionCount = new OsVersionCount();
osVersionCount.setOdataType("microsoft.graph.osVersionCount");
osVersionCount.setOsVersion("Os Version value");
osVersionCount.setDeviceCount(11);
OffsetDateTime lastUpdateDateTime5 = OffsetDateTime.parse("2016-12-31T23:58:21.6459442-08:00");
osVersionCount.setLastUpdateDateTime(lastUpdateDateTime5);
osVersionsSummary.add(osVersionCount);
windowsMalwareOverview.setOsVersionsSummary(osVersionsSummary);
deviceManagement.setWindowsMalwareOverview(windowsMalwareOverview);
DeviceManagement result = graphClient.deviceManagement().patch(deviceManagement);


```