---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.verified_id_profile import VerifiedIdProfile
from msgraph_beta.generated.models.verified_id_profile_state import VerifiedIdProfileState
from msgraph_beta.generated.models.verified_id_profile_configuration import VerifiedIdProfileConfiguration
from msgraph_beta.generated.models.verified_id_method_type import VerifiedIdMethodType
from msgraph_beta.generated.models.claim_binding_source import ClaimBindingSource
from msgraph_beta.generated.models.claim_binding import ClaimBinding
from msgraph_beta.generated.models.face_check_configuration import FaceCheckConfiguration
from msgraph_beta.generated.models.mobile_drivers_license_configuration import MobileDriversLicenseConfiguration
from msgraph_beta.generated.models.verified_id_usage_configuration import VerifiedIdUsageConfiguration
from msgraph_beta.generated.models.verified_id_usage_configuration_purpose import VerifiedIdUsageConfigurationPurpose
from msgraph_beta.generated.models.verified_id_self_service_issuance import VerifiedIdSelfServiceIssuance
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = VerifiedIdProfile(
	name = "Contoso Verified ID",
	description = "Contoso Verified Identity",
	last_modified_date_time = None,
	state = VerifiedIdProfileState.Enabled,
	verifier_did = "did:web:eu.did-dev.contoso.io",
	priority = 0,
	verified_id_profile_configuration = VerifiedIdProfileConfiguration(
		method_type = VerifiedIdMethodType.TenantCustomCredential,
		type = "verifiedIdentity",
		manifest_url = "https://verifiedid.contoso.com/manifest",
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
	mobile_drivers_license_configuration = MobileDriversLicenseConfiguration(
		accepted_regions = [
			"region-code",
		],
		document_standard = "document-standard",
	),
	verified_id_usage_configurations = [
		VerifiedIdUsageConfiguration(
			is_enabled_for_test_only = True,
			purpose = VerifiedIdUsageConfigurationPurpose.Verification,
		),
	],
	self_service_issuance = VerifiedIdSelfServiceIssuance(
		is_enabled = True,
		issuance_url = "https://verifiedid.contoso.com/issue",
	),
)

result = await graph_client.identity.verified_id.profiles.post(request_body)


```