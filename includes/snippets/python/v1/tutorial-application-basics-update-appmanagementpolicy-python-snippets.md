---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.tenant_app_management_policy import TenantAppManagementPolicy
from msgraph.generated.models.app_management_application_configuration import AppManagementApplicationConfiguration
from msgraph.generated.models.password_credential_configuration import PasswordCredentialConfiguration
from msgraph.generated.models.app_credential_restriction_type import AppCredentialRestrictionType
from msgraph.generated.models.key_credential_configuration import KeyCredentialConfiguration
from msgraph.generated.models.app_key_credential_restriction_type import AppKeyCredentialRestrictionType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TenantAppManagementPolicy(
	id = "d015220e-9789-4e8e-bbcc-270fe419229d",
	description = "Lorem ipsum",
	display_name = "Credential management policy",
	is_enabled = True,
	application_restrictions = AppManagementApplicationConfiguration(
		password_credentials = [
			PasswordCredentialConfiguration(
				restriction_type = AppCredentialRestrictionType.PasswordLifetime,
				max_lifetime = "P14D",
				restrict_for_apps_created_after_date_time = "2020-01-01T07:00:00Z",
			),
		],
		key_credentials = [
			KeyCredentialConfiguration(
				restriction_type = AppKeyCredentialRestrictionType.AsymmetricKeyLifetime,
				restrict_for_apps_created_after_date_time = "2020-01-01T10:37:00Z",
				max_lifetime = "P90D",
			),
			KeyCredentialConfiguration(
				restriction_type = AppKeyCredentialRestrictionType.AsymmetricKeyLifetime,
				restrict_for_apps_created_after_date_time = "2019-10-19T10:37:00Z",
				additional_data = {
						"certificate_based_application_configuration_ids" : [
							"eec5ba11-2fc0-4113-83a2-ed986ed13743",
						],
				}
			),
		],
	),
)

result = await graph_client.policies.default_app_management_policy.patch(request_body)


```