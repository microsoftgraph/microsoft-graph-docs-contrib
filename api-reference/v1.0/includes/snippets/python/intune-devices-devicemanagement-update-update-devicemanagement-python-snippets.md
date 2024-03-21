---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_management import DeviceManagement
from msgraph.generated.models.device_protection_overview import DeviceProtectionOverview
from msgraph.generated.models.windows_malware_overview import WindowsMalwareOverview
from msgraph.generated.models.windows_malware_state_count import WindowsMalwareStateCount
from msgraph.generated.models.windows_malware_severity_count import WindowsMalwareSeverityCount
from msgraph.generated.models.windows_malware_execution_state_count import WindowsMalwareExecutionStateCount
from msgraph.generated.models.windows_malware_category_count import WindowsMalwareCategoryCount
from msgraph.generated.models.windows_malware_name_count import WindowsMalwareNameCount
from msgraph.generated.models.os_version_count import OsVersionCount

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceManagement(
	odata_type = "#microsoft.graph.deviceManagement",
	subscription_state = DeviceManagementSubscriptionState.Active,
	device_protection_overview = DeviceProtectionOverview(
		odata_type = "microsoft.graph.deviceProtectionOverview",
		total_reported_device_count = 8,
		inactive_threat_agent_device_count = 14,
		unknown_state_threat_agent_device_count = 2,
		pending_signature_update_device_count = 1,
		clean_device_count = 0,
		pending_full_scan_device_count = 10,
		pending_restart_device_count = 9,
		pending_manual_steps_device_count = 13,
		pending_offline_scan_device_count = 13,
		critical_failures_device_count = 11,
		pending_quick_scan_device_count = 11,
	),
	windows_malware_overview = WindowsMalwareOverview(
		odata_type = "microsoft.graph.windowsMalwareOverview",
		malware_detected_device_count = 10,
		total_malware_count = 1,
		total_distinct_malware_count = 9,
		malware_state_summary = [
			WindowsMalwareStateCount(
				odata_type = "microsoft.graph.windowsMalwareStateCount",
				state = WindowsMalwareThreatState.ActionFailed,
				device_count = 11,
				malware_detection_count = 5,
				distinct_malware_count = 4,
				last_update_date_time = "2016-12-31T23:58:21.6459442-08:00",
			),
		],
		malware_severity_summary = [
			WindowsMalwareSeverityCount(
				odata_type = "microsoft.graph.windowsMalwareSeverityCount",
				severity = WindowsMalwareSeverity.Low,
				malware_detection_count = 5,
				distinct_malware_count = 4,
				last_update_date_time = "2016-12-31T23:58:21.6459442-08:00",
			),
		],
		malware_execution_state_summary = [
			WindowsMalwareExecutionStateCount(
				odata_type = "microsoft.graph.windowsMalwareExecutionStateCount",
				execution_state = WindowsMalwareExecutionState.Blocked,
				device_count = 11,
				last_update_date_time = "2016-12-31T23:58:21.6459442-08:00",
			),
		],
		malware_category_summary = [
			WindowsMalwareCategoryCount(
				odata_type = "microsoft.graph.windowsMalwareCategoryCount",
				category = WindowsMalwareCategory.Adware,
				device_count = 11,
				active_malware_detection_count = 11,
				distinct_active_malware_count = 10,
				last_update_date_time = "2016-12-31T23:58:21.6459442-08:00",
			),
		],
		malware_name_summary = [
			WindowsMalwareNameCount(
				odata_type = "microsoft.graph.windowsMalwareNameCount",
				malware_identifier = "Malware Identifier value",
				name = "Name value",
				device_count = 11,
				last_update_date_time = "2016-12-31T23:58:21.6459442-08:00",
			),
		],
		os_versions_summary = [
			OsVersionCount(
				odata_type = "microsoft.graph.osVersionCount",
				os_version = "Os Version value",
				device_count = 11,
				last_update_date_time = "2016-12-31T23:58:21.6459442-08:00",
			),
		],
	),
)

result = await graph_client.device_management.patch(request_body)


```