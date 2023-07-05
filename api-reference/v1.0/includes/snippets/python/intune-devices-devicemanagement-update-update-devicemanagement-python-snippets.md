---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceManagement()
request_body.@odata_type = '#microsoft.graph.deviceManagement'

request_body.subscriptionstate(DeviceManagementSubscriptionState.Active('devicemanagementsubscriptionstate.active'))

device_protection_overview = DeviceProtectionOverview()
device_protection_overview.@odata_type = 'microsoft.graph.deviceProtectionOverview'

device_protection_overview.TotalReportedDeviceCount = 8

device_protection_overview.InactiveThreatAgentDeviceCount = 14

device_protection_overview.UnknownStateThreatAgentDeviceCount = 2

device_protection_overview.PendingSignatureUpdateDeviceCount = 1

device_protection_overview.CleanDeviceCount = 0

device_protection_overview.PendingFullScanDeviceCount = 10

device_protection_overview.PendingRestartDeviceCount = 9

device_protection_overview.PendingManualStepsDeviceCount = 13

device_protection_overview.PendingOfflineScanDeviceCount = 13

device_protection_overview.CriticalFailuresDeviceCount = 11

device_protection_overview.PendingQuickScanDeviceCount = 11


request_body.device_protection_overview = device_protection_overview
windows_malware_overview = WindowsMalwareOverview()
windows_malware_overview.@odata_type = 'microsoft.graph.windowsMalwareOverview'

windows_malware_overview.MalwareDetectedDeviceCount = 10

windows_malware_overview.TotalMalwareCount = 1

windows_malware_overview.TotalDistinctMalwareCount = 9

malware_state_summary_windows_malware_state_count1 = WindowsMalwareStateCount()
malware_state_summary_windows_malware_state_count1.@odata_type = 'microsoft.graph.windowsMalwareStateCount'

malware_state_summary_windows_malware_state_count1.state(WindowsMalwareThreatState.ActionFailed('windowsmalwarethreatstate.actionfailed'))

malware_state_summary_windows_malware_state_count1.DeviceCount = 11

malware_state_summary_windows_malware_state_count1.MalwareDetectionCount = 5

malware_state_summary_windows_malware_state_count1.DistinctMalwareCount = 4

malware_state_summary_windows_malware_state_count1.lastUpdateDateTime = DateTime('2016-12-31T23:58:21.6459442-08:00')


malwareStateSummaryArray []= malwareStateSummaryWindowsMalwareStateCount1;
windows_malware_overview.malwarestatesummary(malwareStateSummaryArray)


malware_severity_summary_windows_malware_severity_count1 = WindowsMalwareSeverityCount()
malware_severity_summary_windows_malware_severity_count1.@odata_type = 'microsoft.graph.windowsMalwareSeverityCount'

malware_severity_summary_windows_malware_severity_count1.severity(WindowsMalwareSeverity.Low('windowsmalwareseverity.low'))

malware_severity_summary_windows_malware_severity_count1.MalwareDetectionCount = 5

malware_severity_summary_windows_malware_severity_count1.DistinctMalwareCount = 4

malware_severity_summary_windows_malware_severity_count1.lastUpdateDateTime = DateTime('2016-12-31T23:58:21.6459442-08:00')


malwareSeveritySummaryArray []= malwareSeveritySummaryWindowsMalwareSeverityCount1;
windows_malware_overview.malwareseveritysummary(malwareSeveritySummaryArray)


malware_execution_state_summary_windows_malware_execution_state_count1 = WindowsMalwareExecutionStateCount()
malware_execution_state_summary_windows_malware_execution_state_count1.@odata_type = 'microsoft.graph.windowsMalwareExecutionStateCount'

malware_execution_state_summary_windows_malware_execution_state_count1.executionstate(WindowsMalwareExecutionState.Blocked('windowsmalwareexecutionstate.blocked'))

malware_execution_state_summary_windows_malware_execution_state_count1.DeviceCount = 11

malware_execution_state_summary_windows_malware_execution_state_count1.lastUpdateDateTime = DateTime('2016-12-31T23:58:21.6459442-08:00')


malwareExecutionStateSummaryArray []= malwareExecutionStateSummaryWindowsMalwareExecutionStateCount1;
windows_malware_overview.malwareexecutionstatesummary(malwareExecutionStateSummaryArray)


malware_category_summary_windows_malware_category_count1 = WindowsMalwareCategoryCount()
malware_category_summary_windows_malware_category_count1.@odata_type = 'microsoft.graph.windowsMalwareCategoryCount'

malware_category_summary_windows_malware_category_count1.category(WindowsMalwareCategory.Adware('windowsmalwarecategory.adware'))

malware_category_summary_windows_malware_category_count1.DeviceCount = 11

malware_category_summary_windows_malware_category_count1.ActiveMalwareDetectionCount = 11

malware_category_summary_windows_malware_category_count1.DistinctActiveMalwareCount = 10

malware_category_summary_windows_malware_category_count1.lastUpdateDateTime = DateTime('2016-12-31T23:58:21.6459442-08:00')


malwareCategorySummaryArray []= malwareCategorySummaryWindowsMalwareCategoryCount1;
windows_malware_overview.malwarecategorysummary(malwareCategorySummaryArray)


malware_name_summary_windows_malware_name_count1 = WindowsMalwareNameCount()
malware_name_summary_windows_malware_name_count1.@odata_type = 'microsoft.graph.windowsMalwareNameCount'

malware_name_summary_windows_malware_name_count1.malware_identifier = 'Malware Identifier value'

malware_name_summary_windows_malware_name_count1.name = 'Name value'

malware_name_summary_windows_malware_name_count1.DeviceCount = 11

malware_name_summary_windows_malware_name_count1.lastUpdateDateTime = DateTime('2016-12-31T23:58:21.6459442-08:00')


malwareNameSummaryArray []= malwareNameSummaryWindowsMalwareNameCount1;
windows_malware_overview.malwarenamesummary(malwareNameSummaryArray)


os_versions_summary_os_version_count1 = OsVersionCount()
os_versions_summary_os_version_count1.@odata_type = 'microsoft.graph.osVersionCount'

os_versions_summary_os_version_count1.os_version = 'Os Version value'

os_versions_summary_os_version_count1.DeviceCount = 11

os_versions_summary_os_version_count1.lastUpdateDateTime = DateTime('2016-12-31T23:58:21.6459442-08:00')


osVersionsSummaryArray []= osVersionsSummaryOsVersionCount1;
windows_malware_overview.osversionssummary(osVersionsSummaryArray)



request_body.windows_malware_overview = windows_malware_overview



result = await client.device_management.patch(request_body = request_body)


```