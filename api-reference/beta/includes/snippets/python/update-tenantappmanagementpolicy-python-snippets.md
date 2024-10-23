---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.tenant_app_management_policy import TenantAppManagementPolicy
from msgraph_beta.generated.models.app_management_application_configuration import AppManagementApplicationConfiguration
from msgraph_beta.generated.models.password_credential_configuration import PasswordCredentialConfiguration
from msgraph_beta.generated.models.app_credential_restriction_type import AppCredentialRestrictionType
from msgraph_beta.generated.models.key_credential_configuration import KeyCredentialConfiguration
from msgraph_beta.generated.models.app_key_credential_restriction_type import AppKeyCredentialRestrictionType
from msgraph_beta.generated.models.identifier_uri_configuration import IdentifierUriConfiguration
from msgraph_beta.generated.models.identifier_uri_restriction import IdentifierUriRestriction
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TenantAppManagementPolicy(
	is_enabled = True,
	application_restrictions = AppManagementApplicationConfiguration(
		password_credentials = [
			PasswordCredentialConfiguration(
				restriction_type = AppCredentialRestrictionType.PasswordAddition,
				max_lifetime = None,
				restrict_for_apps_created_after_date_time = "2021-01-01T10:37:00Z",
			),
			PasswordCredentialConfiguration(
				restriction_type = AppCredentialRestrictionType.PasswordLifetime,
				max_lifetime = "P90D",
				restrict_for_apps_created_after_date_time = "2017-01-01T10:37:00Z",
			),
			PasswordCredentialConfiguration(
				restriction_type = AppCredentialRestrictionType.SymmetricKeyAddition,
				max_lifetime = None,
				restrict_for_apps_created_after_date_time = "2021-01-01T10:37:00Z",
			),
			PasswordCredentialConfiguration(
				restriction_type = AppCredentialRestrictionType.CustomPasswordAddition,
				max_lifetime = None,
				restrict_for_apps_created_after_date_time = "2015-01-01T10:37:00Z",
			),
			PasswordCredentialConfiguration(
				restriction_type = AppCredentialRestrictionType.SymmetricKeyLifetime,
				max_lifetime = "P30D",
				restrict_for_apps_created_after_date_time = "2015-01-01T10:37:00Z",
			),
		],
		key_credentials = [
			KeyCredentialConfiguration(
				restriction_type = AppKeyCredentialRestrictionType.AsymmetricKeyLifetime,
				max_lifetime = "P30D",
				restrict_for_apps_created_after_date_time = "2015-01-01T10:37:00Z",
			),
			KeyCredentialConfiguration(
				restriction_type = AppKeyCredentialRestrictionType.TrustedCertificateAuthority,
				restrict_for_apps_created_after_date_time = "2019-10-19T10:37:00Z",
				certificate_based_application_configuration_ids = [
					"eec5ba11-2fc0-4113-83a2-ed986ed13743",
					"bb8e164b-f9ed-4b98-bc45-65eddc14f4c1",
				],
				max_lifetime = None,
			),
		],
		identifier_uris = IdentifierUriConfiguration(
			non_default_uri_addition = IdentifierUriRestriction(
				restrict_for_apps_created_after_date_time = "2024-01-01T10:37:00Z",
				exclude_apps_receiving_v2_tokens = True,
				exclude_saml = True,
			),
		),
	),
)

result = await graph_client.policies.default_app_management_policy.patch(request_body)


```