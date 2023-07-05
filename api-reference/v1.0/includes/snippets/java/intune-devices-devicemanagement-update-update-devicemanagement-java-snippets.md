---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceManagement deviceManagement = new DeviceManagement();
deviceManagement.subscriptionState = DeviceManagementSubscriptionState.ACTIVE;
DeviceProtectionOverview deviceProtectionOverview = new DeviceProtectionOverview();
deviceProtectionOverview.totalReportedDeviceCount = 8;
deviceProtectionOverview.inactiveThreatAgentDeviceCount = 14;
deviceProtectionOverview.unknownStateThreatAgentDeviceCount = 2;
deviceProtectionOverview.pendingSignatureUpdateDeviceCount = 1;
deviceProtectionOverview.cleanDeviceCount = 0;
deviceProtectionOverview.pendingFullScanDeviceCount = 10;
deviceProtectionOverview.pendingRestartDeviceCount = 9;
deviceProtectionOverview.pendingManualStepsDeviceCount = 13;
deviceProtectionOverview.pendingOfflineScanDeviceCount = 13;
deviceProtectionOverview.criticalFailuresDeviceCount = 11;
deviceProtectionOverview.pendingQuickScanDeviceCount = 11;
deviceManagement.deviceProtectionOverview = deviceProtectionOverview;
WindowsMalwareOverview windowsMalwareOverview = new WindowsMalwareOverview();
windowsMalwareOverview.malwareDetectedDeviceCount = 10;
windowsMalwareOverview.totalMalwareCount = 1;
windowsMalwareOverview.totalDistinctMalwareCount = 9;
LinkedList<WindowsMalwareStateCount> malwareStateSummaryList = new LinkedList<WindowsMalwareStateCount>();
WindowsMalwareStateCount malwareStateSummary = new WindowsMalwareStateCount();
malwareStateSummary.state = WindowsMalwareThreatState.ACTION_FAILED;
malwareStateSummary.deviceCount = 11;
malwareStateSummary.malwareDetectionCount = 5;
malwareStateSummary.distinctMalwareCount = 4;
malwareStateSummary.lastUpdateDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:21.6459442+00:00");
malwareStateSummaryList.add(malwareStateSummary);
windowsMalwareOverview.malwareStateSummary = malwareStateSummaryList;
LinkedList<WindowsMalwareSeverityCount> malwareSeveritySummaryList = new LinkedList<WindowsMalwareSeverityCount>();
WindowsMalwareSeverityCount malwareSeveritySummary = new WindowsMalwareSeverityCount();
malwareSeveritySummary.severity = WindowsMalwareSeverity.LOW;
malwareSeveritySummary.malwareDetectionCount = 5;
malwareSeveritySummary.distinctMalwareCount = 4;
malwareSeveritySummary.lastUpdateDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:21.6459442+00:00");
malwareSeveritySummaryList.add(malwareSeveritySummary);
windowsMalwareOverview.malwareSeveritySummary = malwareSeveritySummaryList;
LinkedList<WindowsMalwareExecutionStateCount> malwareExecutionStateSummaryList = new LinkedList<WindowsMalwareExecutionStateCount>();
WindowsMalwareExecutionStateCount malwareExecutionStateSummary = new WindowsMalwareExecutionStateCount();
malwareExecutionStateSummary.executionState = WindowsMalwareExecutionState.BLOCKED;
malwareExecutionStateSummary.deviceCount = 11;
malwareExecutionStateSummary.lastUpdateDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:21.6459442+00:00");
malwareExecutionStateSummaryList.add(malwareExecutionStateSummary);
windowsMalwareOverview.malwareExecutionStateSummary = malwareExecutionStateSummaryList;
LinkedList<WindowsMalwareCategoryCount> malwareCategorySummaryList = new LinkedList<WindowsMalwareCategoryCount>();
WindowsMalwareCategoryCount malwareCategorySummary = new WindowsMalwareCategoryCount();
malwareCategorySummary.category = WindowsMalwareCategory.ADWARE;
malwareCategorySummary.deviceCount = 11;
malwareCategorySummary.activeMalwareDetectionCount = 11;
malwareCategorySummary.distinctActiveMalwareCount = 10;
malwareCategorySummary.lastUpdateDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:21.6459442+00:00");
malwareCategorySummaryList.add(malwareCategorySummary);
windowsMalwareOverview.malwareCategorySummary = malwareCategorySummaryList;
LinkedList<WindowsMalwareNameCount> malwareNameSummaryList = new LinkedList<WindowsMalwareNameCount>();
WindowsMalwareNameCount malwareNameSummary = new WindowsMalwareNameCount();
malwareNameSummary.malwareIdentifier = "Malware Identifier value";
malwareNameSummary.name = "Name value";
malwareNameSummary.deviceCount = 11;
malwareNameSummary.lastUpdateDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:21.6459442+00:00");
malwareNameSummaryList.add(malwareNameSummary);
windowsMalwareOverview.malwareNameSummary = malwareNameSummaryList;
LinkedList<OsVersionCount> osVersionsSummaryList = new LinkedList<OsVersionCount>();
OsVersionCount osVersionsSummary = new OsVersionCount();
osVersionsSummary.osVersion = "Os Version value";
osVersionsSummary.deviceCount = 11;
osVersionsSummary.lastUpdateDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:21.6459442+00:00");
osVersionsSummaryList.add(osVersionsSummary);
windowsMalwareOverview.osVersionsSummary = osVersionsSummaryList;
deviceManagement.windowsMalwareOverview = windowsMalwareOverview;

graphClient.deviceManagement()
	.buildRequest()
	.patch(deviceManagement);

```