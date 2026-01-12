---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.verified_id_profile import VerifiedIdProfile
from msgraph_beta.generated.models.verified_id_profile_state import VerifiedIdProfileState
from msgraph_beta.generated.models.verified_id_profile_configuration import VerifiedIdProfileConfiguration
from msgraph_beta.generated.models.claim_binding_source import ClaimBindingSource
from msgraph_beta.generated.models.claim_binding import ClaimBinding
from msgraph_beta.generated.models.face_check_configuration import FaceCheckConfiguration
from msgraph_beta.generated.models.verified_id_usage_configuration import VerifiedIdUsageConfiguration
from msgraph_beta.generated.models.verified_id_usage_configuration_purpose import VerifiedIdUsageConfigurationPurpose
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
				source_attribute = "First name",
				verified_id_claim = "vc.credentialSubject.firstName",
			),
			ClaimBinding(
				source_attribute = "Last name",
				verified_id_claim = "vc.credentialSubject.lastName",
			),
		],
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