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
from msgraph.generated.models.report_suspicious_activity_settings import ReportSuspiciousActivitySettings
from msgraph.generated.models.include_target import IncludeTarget

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthenticationMethodsPolicy(
	registration_enforcement = RegistrationEnforcement(
		authentication_methods_registration_campaign = AuthenticationMethodsRegistrationCampaign(
			snooze_duration_in_days = 1,
			enforce_registration_after_allowed_snoozes = True,
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
	report_suspicious_activity_settings = ReportSuspiciousActivitySettings(
		state = AdvancedConfigState.Enabled,
		include_target = IncludeTarget(
			target_type = AuthenticationMethodTargetType.Group,
			id = "all_users",
		),
		voice_reporting_code = 0,
	),
)

result = await graph_client.policies.authentication_methods_policy.patch(request_body)


```