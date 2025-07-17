---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.governance_role_setting import GovernanceRoleSetting
from msgraph_beta.generated.models.governance_rule_setting import GovernanceRuleSetting
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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