---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.authentication_methods_policy import AuthenticationMethodsPolicy
from msgraph.generated.models.registration_enforcement import RegistrationEnforcement
from msgraph.generated.models.authentication_methods_registration_campaign import AuthenticationMethodsRegistrationCampaign
from msgraph.generated.models.exclude_target import ExcludeTarget
from msgraph.generated.models.authentication_methods_registration_campaign_include_target import AuthenticationMethodsRegistrationCampaignIncludeTarget

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthenticationMethodsPolicy(
	registration_enforcement = RegistrationEnforcement(
		authentication_methods_registration_campaign = AuthenticationMethodsRegistrationCampaign(
			snooze_duration_in_days = 1,
			state = AdvancedConfigState.Enabled,
			exclude_targets = [
			],
			include_targets = [
				AuthenticationMethodsRegistrationCampaignIncludeTarget(
					id = "3ee3a9de-0a86-4e12-a287-9769accf1ba2",
					target_type = AuthenticationMethodTargetType.Group,
					targeted_authentication_method = "microsoftAuthenticator",
				),
			],
		),
	),
)

result = await graph_client.policies.authentication_methods_policy.patch(request_body)


```