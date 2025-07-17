---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.app_management_policy import AppManagementPolicy
from msgraph_beta.generated.models.custom_app_management_configuration import CustomAppManagementConfiguration
from msgraph_beta.generated.models.password_credential_configuration import PasswordCredentialConfiguration
from msgraph_beta.generated.models.app_credential_restriction_type import AppCredentialRestrictionType
from msgraph_beta.generated.models.app_management_restriction_state import AppManagementRestrictionState
from msgraph_beta.generated.models.key_credential_configuration import KeyCredentialConfiguration
from msgraph_beta.generated.models.custom_app_management_application_configuration import CustomAppManagementApplicationConfiguration
from msgraph_beta.generated.models.identifier_uri_configuration import IdentifierUriConfiguration
from msgraph_beta.generated.models.identifier_uri_restriction import IdentifierUriRestriction
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AppManagementPolicy(
	display_name = "Credential management policy",
	description = "Cred policy sample",
	is_enabled = True,
	restrictions = CustomAppManagementConfiguration(
		password_credentials = [
			PasswordCredentialConfiguration(
				restriction_type = AppCredentialRestrictionType.PasswordAddition,
				state = AppManagementRestrictionState.Enabled,
				max_lifetime = None,
				restrict_for_apps_created_after_date_time = "2019-10-19T10:37:00Z",
			),
			PasswordCredentialConfiguration(
				restriction_type = AppCredentialRestrictionType.PasswordLifetime,
				state = AppManagementRestrictionState.Enabled,
				max_lifetime = "P90D",
				restrict_for_apps_created_after_date_time = "2014-10-19T10:37:00Z",
			),
			PasswordCredentialConfiguration(
				restriction_type = AppCredentialRestrictionType.SymmetricKeyAddition,
				state = AppManagementRestrictionState.Enabled,
				max_lifetime = None,
				restrict_for_apps_created_after_date_time = "2019-10-19T10:37:00Z",
			),
			PasswordCredentialConfiguration(
				restriction_type = AppCredentialRestrictionType.SymmetricKeyLifetime,
				state = AppManagementRestrictionState.Enabled,
				max_lifetime = "P90D",
				restrict_for_apps_created_after_date_time = "2014-10-19T10:37:00Z",
			),
		],
		key_credentials = [
		],
		application_restrictions = CustomAppManagementApplicationConfiguration(
			identifier_uris = IdentifierUriConfiguration(
				non_default_uri_addition = IdentifierUriRestriction(
					state = AppManagementRestrictionState.Disabled,
					restrict_for_apps_created_after_date_time = None,
					exclude_apps_receiving_v2_tokens = True,
					exclude_saml = True,
				),
			),
		),
	),
)

result = await graph_client.policies.app_management_policies.post(request_body)


```