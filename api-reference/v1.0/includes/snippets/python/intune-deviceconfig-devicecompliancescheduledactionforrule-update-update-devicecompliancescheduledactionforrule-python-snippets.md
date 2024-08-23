---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_compliance_scheduled_action_for_rule import DeviceComplianceScheduledActionForRule

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceComplianceScheduledActionForRule(
	odata_type = "#microsoft.graph.deviceComplianceScheduledActionForRule",
	rule_name = "Rule Name value",
)

result = await graph_client.device_management.device_compliance_policies.by_device_compliance_policy_id('deviceCompliancePolicy-id').scheduled_actions_for_rule.by_device_compliance_scheduled_action_for_rule_id('deviceComplianceScheduledActionForRule-id').patch(request_body)


```