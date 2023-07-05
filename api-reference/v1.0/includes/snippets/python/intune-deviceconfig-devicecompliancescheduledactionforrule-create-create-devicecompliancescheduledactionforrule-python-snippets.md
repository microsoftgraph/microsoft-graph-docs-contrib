---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceComplianceScheduledActionForRule()
request_body.@odata_type = '#microsoft.graph.deviceComplianceScheduledActionForRule'

request_body.rule_name = 'Rule Name value'




result = await client.device_management.device_compliance_policies.by_device_compliance_policie_id('deviceCompliancePolicy-id').scheduled_action_for_rule.post(request_body = request_body)


```