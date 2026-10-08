---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.verified_id_profile import VerifiedIdProfile
from msgraph.generated.models.verified_id_profile_state import VerifiedIdProfileState
from msgraph.generated.models.verified_id_profile_configuration import VerifiedIdProfileConfiguration
from msgraph.generated.models.claim_binding_source import ClaimBindingSource
from msgraph.generated.models.claim_binding import ClaimBinding
from msgraph.generated.models.match_confidence_level import MatchConfidenceLevel
from msgraph.generated.models.claim_validation import ClaimValidation
from msgraph.generated.models.face_check_configuration import FaceCheckConfiguration
from msgraph.generated.models.verified_id_usage_configuration import VerifiedIdUsageConfiguration
from msgraph.generated.models.verified_id_usage_configuration_purpose import VerifiedIdUsageConfigurationPurpose
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = VerifiedIdProfile(
	name = "Contoso Verified ID",
	description = "Contoso Verified Identity",
	last_modified_date_time = None,
	state = VerifiedIdProfileState.Enabled,
	verifier_did = "did:web:eu.did-dev.contoso.io",
	priority = 0,
	verified_id_profile_configuration = VerifiedIdProfileConfiguration(
		type = "verifiedIdentity",
		accepted_issuer = "did:web:eu.did-dev.contoso.io",
		claim_binding_source = ClaimBindingSource.Directory,
		claim_bindings = [
			ClaimBinding(
				match_confidence_level = MatchConfidenceLevel.Exact,
				source_attribute = "First name",
				verified_id_claim = "vc.credentialSubject.firstName",
			),
			ClaimBinding(
				match_confidence_level = MatchConfidenceLevel.Exact,
				source_attribute = "Last name",
				verified_id_claim = "vc.credentialSubject.lastName",
			),
		],
		claim_validation = ClaimValidation(
			is_enabled = True,
			custom_extension_id = "00aa00aa-bb11-cc22-dd33-44ee44ee44ee",
		),
	),
	face_check_configuration = FaceCheckConfiguration(
		is_enabled = True,
		source_photo_claim_name = "portrait",
	),
	verified_id_usage_configurations = [
		VerifiedIdUsageConfiguration(
			is_enabled_for_test_only = True,
			purpose = VerifiedIdUsageConfigurationPurpose.Recovery,
		),
	],
)

result = await graph_client.identity.verified_id.profiles.post(request_body)


```