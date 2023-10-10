---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = DeviceComplianceScheduledActionForRule(
	odata_type = "#microsoft.graph.deviceComplianceScheduledActionForRule",
	rule_name = "Rule Name value",
)

result = await graph_client.device_management.device_compliance_policies.by_device_compliance_policie_id('deviceCompliancePolicy-id').scheduled_action_for_rule.post(body = request_body)


```