---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.conditional_access_policy import ConditionalAccessPolicy
from msgraph_beta.generated.models.conditional_access_condition_set import ConditionalAccessConditionSet
from msgraph_beta.generated.models.conditional_access_applications import ConditionalAccessApplications
from msgraph_beta.generated.models.conditional_access_users import ConditionalAccessUsers
from msgraph_beta.generated.models.conditional_access_session_controls import ConditionalAccessSessionControls
from msgraph_beta.generated.models.global_secure_access_filtering_profile_session_control import GlobalSecureAccessFilteringProfileSessionControl
from msgraph_beta.generated.models.conditional_access_policy_state import ConditionalAccessPolicyState
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ConditionalAccessPolicy(
	conditions = ConditionalAccessConditionSet(
		applications = ConditionalAccessApplications(
			include_applications = [
				"5dc48733-b5df-475c-a49b-fa307ef00853",
			],
		),
		users = ConditionalAccessUsers(
			include_users = [
				"00aa00aa-bb11-cc22-dd33-44ee44ee44ee",
			],
		),
	),
	display_name = "UserA Access to AI and Bing",
	session_controls = ConditionalAccessSessionControls(
		global_secure_access_filtering_profile = GlobalSecureAccessFilteringProfileSessionControl(
			profile_id = "dddddddd-9999-0000-1111-eeeeeeeeeeee",
			is_enabled = True,
		),
	),
	state = ConditionalAccessPolicyState.Enabled,
)

result = await graph_client.identity.conditional_access.policies.post(request_body)


```