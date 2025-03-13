---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.device_compliance_policy_setting_state_summary import DeviceCompliancePolicySettingStateSummary
from msgraph.generated.models.policy_platform_type import PolicyPlatformType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DeviceCompliancePolicySettingStateSummary(
	odata_type = "#microsoft.graph.deviceCompliancePolicySettingStateSummary",
	setting = "Setting value",
	setting_name = "Setting Name value",
	platform_type = PolicyPlatformType.IOS,
	unknown_device_count = 2,
	not_applicable_device_count = 8,
	compliant_device_count = 4,
	remediated_device_count = 5,
	non_compliant_device_count = 7,
	error_device_count = 0,
	conflict_device_count = 3,
)

result = await graph_client.device_management.device_compliance_policy_setting_state_summaries.by_device_compliance_policy_setting_state_summary_id('deviceCompliancePolicySettingStateSummary-id').patch(request_body)


```