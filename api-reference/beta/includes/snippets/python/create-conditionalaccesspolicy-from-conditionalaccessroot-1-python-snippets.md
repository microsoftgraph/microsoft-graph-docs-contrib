---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.conditional_access_policy import ConditionalAccessPolicy
from msgraph_beta.generated.models.conditional_access_policy_state import ConditionalAccessPolicyState
from msgraph_beta.generated.models.conditional_access_condition_set import ConditionalAccessConditionSet
from msgraph_beta.generated.models.conditional_access_client_app import ConditionalAccessClientApp
from msgraph_beta.generated.models.conditional_access_applications import ConditionalAccessApplications
from msgraph_beta.generated.models.conditional_access_users import ConditionalAccessUsers
from msgraph_beta.generated.models.conditional_access_locations import ConditionalAccessLocations
from msgraph_beta.generated.models.conditional_access_grant_controls import ConditionalAccessGrantControls
from msgraph_beta.generated.models.conditional_access_grant_control import ConditionalAccessGrantControl
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ConditionalAccessPolicy(
	display_name = "Access to EXO requires MFA",
	state = ConditionalAccessPolicyState.Enabled,
	conditions = ConditionalAccessConditionSet(
		client_app_types = [
			ConditionalAccessClientApp.MobileAppsAndDesktopClients,
			ConditionalAccessClientApp.Browser,
		],
		applications = ConditionalAccessApplications(
			include_applications = [
				"00000002-0000-0ff1-ce00-000000000000",
			],
		),
		users = ConditionalAccessUsers(
			include_groups = [
				"ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba",
			],
		),
		locations = ConditionalAccessLocations(
			include_locations = [
				"All",
			],
			exclude_locations = [
				"AllTrusted",
			],
		),
	),
	grant_controls = ConditionalAccessGrantControls(
		operator = "OR",
		built_in_controls = [
			ConditionalAccessGrantControl.Mfa,
		],
	),
)

result = await graph_client.identity.conditional_access.policies.post(request_body)


```