---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.app_management_policy import AppManagementPolicy
from msgraph_beta.generated.models.custom_app_management_configuration import CustomAppManagementConfiguration
from msgraph_beta.generated.models.password_credential_configuration import PasswordCredentialConfiguration
from msgraph_beta.generated.models.app_credential_restriction_type import AppCredentialRestrictionType
from msgraph_beta.generated.models.key_credential_configuration import KeyCredentialConfiguration
from msgraph_beta.generated.models.app_key_credential_restriction_type import AppKeyCredentialRestrictionType

graph_client = GraphServiceClient(credentials, scopes)

request_body = AppManagementPolicy(
	display_name = "Credential management policy",
	description = "Cred policy sample",
	is_enabled = True,
	restrictions = CustomAppManagementConfiguration(
		password_credentials = [
			PasswordCredentialConfiguration(
				restriction_type = AppCredentialRestrictionType.PasswordAddition,
				max_lifetime = None,
				restrict_for_apps_created_after_date_time = "2019-10-19T10:37:00Z",
			),
			PasswordCredentialConfiguration(
				restriction_type = AppCredentialRestrictionType.PasswordLifetime,
				max_lifetime = "P90D",
				restrict_for_apps_created_after_date_time = "2014-10-19T10:37:00Z",
			),
			PasswordCredentialConfiguration(
				restriction_type = AppCredentialRestrictionType.SymmetricKeyAddition,
				max_lifetime = None,
				restrict_for_apps_created_after_date_time = "2019-10-19T10:37:00Z",
			),
			PasswordCredentialConfiguration(
				restriction_type = AppCredentialRestrictionType.SymmetricKeyLifetime,
				max_lifetime = "P30D",
				restrict_for_apps_created_after_date_time = "2014-10-19T10:37:00Z",
			),
		],
		key_credentials = [
			KeyCredentialConfiguration(
				restriction_type = AppKeyCredentialRestrictionType.AsymmetricKeyLifetime,
				max_lifetime = "P90D",
				restrict_for_apps_created_after_date_time = "2014-10-19T10:37:00Z",
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
	),
)

result = await graph_client.policies.app_management_policies.post(request_body)


```