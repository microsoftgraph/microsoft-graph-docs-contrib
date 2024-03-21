---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.conditional_access_policy import ConditionalAccessPolicy
from msgraph.generated.models.conditional_access_condition_set import ConditionalAccessConditionSet
from msgraph.generated.models.risk_level import RiskLevel
from msgraph.generated.models.conditional_access_client_app import ConditionalAccessClientApp
from msgraph.generated.models.conditional_access_applications import ConditionalAccessApplications
from msgraph.generated.models.conditional_access_users import ConditionalAccessUsers
from msgraph.generated.models.conditional_access_platforms import ConditionalAccessPlatforms
from msgraph.generated.models.conditional_access_device_platform import ConditionalAccessDevicePlatform
from msgraph.generated.models.conditional_access_locations import ConditionalAccessLocations
from msgraph.generated.models.conditional_access_device_states import ConditionalAccessDeviceStates
from msgraph.generated.models.conditional_access_grant_controls import ConditionalAccessGrantControls
from msgraph.generated.models.conditional_access_grant_control import ConditionalAccessGrantControl
from msgraph.generated.models.conditional_access_session_controls import ConditionalAccessSessionControls
from msgraph.generated.models.cloud_app_security_session_control import CloudAppSecuritySessionControl
from msgraph.generated.models.sign_in_frequency_session_control import SignInFrequencySessionControl

graph_client = GraphServiceClient(credentials, scopes)

request_body = ConditionalAccessPolicy(
	display_name = "Demo app for documentation",
	state = ConditionalAccessPolicyState.Disabled,
	conditions = ConditionalAccessConditionSet(
		sign_in_risk_levels = [
			RiskLevel.High,
			RiskLevel.Medium,
		],
		client_app_types = [
			ConditionalAccessClientApp.MobileAppsAndDesktopClients,
			ConditionalAccessClientApp.ExchangeActiveSync,
			ConditionalAccessClientApp.Other,
		],
		applications = ConditionalAccessApplications(
			include_applications = [
				"All",
			],
			exclude_applications = [
				"499b84ac-1321-427f-aa17-267ca6975798",
				"00000007-0000-0000-c000-000000000000",
				"de8bc8b5-d9f9-48b1-a8ad-b748da725064",
				"00000012-0000-0000-c000-000000000000",
				"797f4846-ba00-4fd7-ba43-dac1f8f63013",
				"05a65629-4c1b-48c1-a78b-804c4abdd4af",
				"7df0a125-d3be-4c96-aa54-591f83ff541c",
			],
			include_user_actions = [
			],
		),
		users = ConditionalAccessUsers(
			include_users = [
				"a702a13d-a437-4a07-8a7e-8c052de62dfd",
			],
			exclude_users = [
				"124c5b6a-ffa5-483a-9b88-04c3fce5574a",
				"GuestsOrExternalUsers",
			],
			include_groups = [
			],
			exclude_groups = [
			],
			include_roles = [
				"9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",
				"cf1c38e5-3621-4004-a7cb-879624dced7c",
				"c4e39bd9-1100-46d3-8c65-fb160da0071f",
			],
			exclude_roles = [
				"b0f54661-2d74-4c50-afa3-1ec803f12efe",
			],
		),
		platforms = ConditionalAccessPlatforms(
			include_platforms = [
				ConditionalAccessDevicePlatform.All,
			],
			exclude_platforms = [
				ConditionalAccessDevicePlatform.IOS,
				ConditionalAccessDevicePlatform.WindowsPhone,
			],
		),
		locations = ConditionalAccessLocations(
			include_locations = [
				"AllTrusted",
			],
			exclude_locations = [
				"00000000-0000-0000-0000-000000000000",
				"d2136c9c-b049-47ae-b9cf-316e04ef7198",
			],
		),
		device_states = ConditionalAccessDeviceStates(
			include_states = [
				"All",
			],
			exclude_states = [
				"Compliant",
			],
		),
	),
	grant_controls = ConditionalAccessGrantControls(
		operator = "OR",
		built_in_controls = [
			ConditionalAccessGrantControl.Mfa,
			ConditionalAccessGrantControl.CompliantDevice,
			ConditionalAccessGrantControl.DomainJoinedDevice,
			ConditionalAccessGrantControl.ApprovedApplication,
			ConditionalAccessGrantControl.CompliantApplication,
		],
		custom_authentication_factors = [
		],
		terms_of_use = [
			"ce580154-086a-40fd-91df-8a60abac81a0",
			"7f29d675-caff-43e1-8a53-1b8516ed2075",
		],
	),
	session_controls = ConditionalAccessSessionControls(
		application_enforced_restrictions = None,
		persistent_browser = None,
		cloud_app_security = CloudAppSecuritySessionControl(
			cloud_app_security_type = CloudAppSecuritySessionControlType.BlockDownloads,
			is_enabled = True,
		),
		sign_in_frequency = SignInFrequencySessionControl(
			value = 4,
			type = SigninFrequencyType.Hours,
			is_enabled = True,
		),
	),
)

result = await graph_client.identity.conditional_access.policies.post(request_body)


```