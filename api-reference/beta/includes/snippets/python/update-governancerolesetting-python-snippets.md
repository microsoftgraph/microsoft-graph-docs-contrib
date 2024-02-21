---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.governance_role_setting import GovernanceRoleSetting
from msgraph.generated.models.governance_rule_setting import GovernanceRuleSetting

graph_client = GraphServiceClient(credentials, scopes)

request_body = GovernanceRoleSetting(
	admin_eligible_settings = [
		GovernanceRuleSetting(
			rule_identifier = "ExpirationRule",
			setting = "{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":129600}",
		),
	],
)

result = await graph_client.privileged_access.by_privileged_access_id('privilegedAccess-id').role_settings.by_governance_role_setting_id('governanceRoleSetting-id').patch(request_body)


```