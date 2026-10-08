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
from msgraph.generated.models.passkey_authentication_method_target import PasskeyAuthenticationMethodTarget
from msgraph.generated.models.authentication_method_target_type import AuthenticationMethodTargetType
from msgraph.generated.models.exclude_target import ExcludeTarget
from msgraph.generated.models.passkey_profile import PasskeyProfile
from msgraph.generated.models.passkey_types import PasskeyTypes
from msgraph.generated.models.attestation_enforcement import AttestationEnforcement
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
		PasskeyAuthenticationMethodTarget(
			target_type = AuthenticationMethodTargetType.Group,
			id = "all_users",
			is_registration_required = False,
			allowed_passkey_profiles = [
				UUID("00000000-0000-0000-0000-000000000001"),
			],
		),
	],
	exclude_targets = [
	],
	passkey_profiles = [
		PasskeyProfile(
			id = "00000000-0000-0000-0000-000000000001",
			name = "Default passkey profile",
			passkey_types = PasskeyTypes.DeviceBound | PasskeyTypes.Synced,
			attestation_enforcement = AttestationEnforcement.Disabled,
			key_restrictions = Fido2KeyRestrictions(
				is_enforced = False,
				enforcement_type = Fido2RestrictionEnforcementType.Allow,
				aa_guids = [
				],
			),
		),
	],
)

result = await graph_client.policies.authentication_methods_policy.authentication_method_configurations.by_authentication_method_configuration_id('authenticationMethodConfiguration-id').patch(request_body)


```