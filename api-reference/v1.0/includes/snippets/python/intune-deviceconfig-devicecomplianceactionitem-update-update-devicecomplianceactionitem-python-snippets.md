---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = DeviceComplianceActionItem(
	odata_type = "#microsoft.graph.deviceComplianceActionItem",
	grace_period_hours = 0,
	action_type = DeviceComplianceActionType.Notification,
	notification_template_id = "Notification Template Id value",
	notification_message_c_c_list = [
		"Notification Message CCList value",
	]
)

result = await graph_client.device_management.device_compliance_policies.by_device_compliance_policie_id('deviceCompliancePolicy-id').scheduled_action_for_rule.by_scheduled_action_for_rule_id('deviceComplianceScheduledActionForRule-id').scheduled_action_configurations.by_scheduled_action_configuration_id('deviceComplianceActionItem-id').patch(body = request_body)


```