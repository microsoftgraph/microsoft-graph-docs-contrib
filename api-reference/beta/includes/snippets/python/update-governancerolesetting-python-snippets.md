---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = GovernanceRoleSetting(
	admin_eligible_settings = [
		GovernanceRuleSetting(
			rule_identifier = "ExpirationRule",
			setting = "{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":129600}",
		),
	]
)

result = await graph_client.privileged_access.by_privileged_acce_id('privilegedAccess-id').role_settings.by_role_setting_id('governanceRoleSetting-id').patch(body = request_body)


```