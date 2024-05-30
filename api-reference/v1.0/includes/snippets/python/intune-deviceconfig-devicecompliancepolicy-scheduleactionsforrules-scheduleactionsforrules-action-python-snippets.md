---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.devicecompliancepolicies.item.schedule_actions_for_rules.schedule_actions_for_rules_post_request_body import ScheduleActionsForRulesPostRequestBody
from msgraph.generated.models.device_compliance_scheduled_action_for_rule import DeviceComplianceScheduledActionForRule

graph_client = GraphServiceClient(credentials, scopes)

request_body = ScheduleActionsForRulesPostRequestBody(
	device_compliance_scheduled_action_for_rules = [
		DeviceComplianceScheduledActionForRule(
			odata_type = "#microsoft.graph.deviceComplianceScheduledActionForRule",
			id = "f0075d5e-5d5e-f007-5e5d-07f05e5d07f0",
			rule_name = "Rule Name value",
		),
	],
)

await graph_client.device_management.device_compliance_policies.by_device_compliance_policy_id('deviceCompliancePolicy-id').schedule_actions_for_rules.post(request_body)


```