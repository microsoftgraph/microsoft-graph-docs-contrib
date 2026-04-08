---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.fido2_authentication_method_configuration import Fido2AuthenticationMethodConfiguration
from msgraph.generated.models.authentication_method_state import AuthenticationMethodState
from msgraph.generated.models.fido2_key_restrictions import Fido2KeyRestrictions
from msgraph.generated.models.fido2_restriction_enforcement_type import Fido2RestrictionEnforcementType
from msgraph.generated.models.authentication_method_target import AuthenticationMethodTarget
from msgraph.generated.models.authentication_method_target_type import AuthenticationMethodTargetType
from msgraph.generated.models.exclude_target import ExcludeTarget
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Fido2AuthenticationMethodConfiguration(
	odata_type = "#microsoft.graph.fido2AuthenticationMethodConfiguration",
	id = "Fido2",
	state = AuthenticationMethodState.Disabled,
	is_self_service_registration_allowed = True,
	is_attestation_enforced = True,
	key_restrictions = Fido2KeyRestrictions(
		is_enforced = False,
		enforcement_type = Fido2RestrictionEnforcementType.Block,
		aa_guids = [
		],
	),
	include_targets = [
		AuthenticationMethodTarget(
			target_type = AuthenticationMethodTargetType.Group,
			id = "all_users",
			is_registration_required = False,
			additional_data = {
					"allowed_passkey_profiles" : [
						"00000000-0000-0000-0000-000000000001",
					],
			}
		),
	],
	exclude_targets = [
	],
	additional_data = {
			"passkey_profiles" : [
				{
						"id" : "00000000-0000-0000-0000-000000000001",
						"name" : "Default passkey profile",
						"passkey_types" : "deviceBound,synced",
						"attestation_enforcement" : "disabled",
						"key_restrictions" : {
								"is_enforced" : False,
								"enforcement_type" : "allow",
								"aa_guids" : [
								],
						},
				},
			],
	}
)

result = await graph_client.policies.authentication_methods_policy.authentication_method_configurations.by_authentication_method_configuration_id('authenticationMethodConfiguration-id').patch(request_body)


```