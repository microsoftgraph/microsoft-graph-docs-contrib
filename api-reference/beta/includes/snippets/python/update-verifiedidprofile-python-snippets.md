---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.verified_id_profile import VerifiedIdProfile
from msgraph_beta.generated.models.verified_id_profile_configuration import VerifiedIdProfileConfiguration
from msgraph_beta.generated.models.verified_id_method_type import VerifiedIdMethodType
from msgraph_beta.generated.models.mobile_drivers_license_configuration import MobileDriversLicenseConfiguration
from msgraph_beta.generated.models.verified_id_self_service_issuance import VerifiedIdSelfServiceIssuance
from msgraph_beta.generated.models.verified_id_usage_configuration import VerifiedIdUsageConfiguration
from msgraph_beta.generated.models.verified_id_usage_configuration_purpose import VerifiedIdUsageConfigurationPurpose
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = VerifiedIdProfile(
	verified_id_profile_configuration = VerifiedIdProfileConfiguration(
		method_type = VerifiedIdMethodType.TenantCustomCredential,
		manifest_url = "https://verifiedid.contoso.com/manifest",
	),
	mobile_drivers_license_configuration = MobileDriversLicenseConfiguration(
		accepted_regions = [
			"region-code",
		],
		document_standard = "document-standard",
	),
	self_service_issuance = VerifiedIdSelfServiceIssuance(
		is_enabled = True,
		issuance_url = "https://verifiedid.contoso.com/issue",
	),
	verified_id_usage_configurations = [
		VerifiedIdUsageConfiguration(
			is_enabled_for_test_only = False,
			purpose = VerifiedIdUsageConfigurationPurpose.Verification,
		),
	],
)

result = await graph_client.identity.verified_id.profiles.by_verified_id_profile_id('verifiedIdProfile-id').patch(request_body)


```