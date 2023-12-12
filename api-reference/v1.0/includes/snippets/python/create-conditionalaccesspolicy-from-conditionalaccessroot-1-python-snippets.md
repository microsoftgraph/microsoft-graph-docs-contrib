---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

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