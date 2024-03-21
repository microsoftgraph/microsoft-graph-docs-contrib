---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_compliance_action_item import DeviceComplianceActionItem

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceComplianceActionItem(
	odata_type = "#microsoft.graph.deviceComplianceActionItem",
	grace_period_hours = 0,
	action_type = DeviceComplianceActionType.Notification,
	notification_template_id = "Notification Template Id value",
	notification_message_c_c_list = [
		"Notification Message CCList value",
	],
)

result = await graph_client.device_management.device_compliance_policies.by_device_compliance_policy_id('deviceCompliancePolicy-id').scheduled_actions_for_rule.by_device_compliance_scheduled_action_for_rule_id('deviceComplianceScheduledActionForRule-id').scheduled_action_configurations.post(request_body)


```