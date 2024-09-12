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
				max_lifetime = "P4DT12H30M5S",
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
				max_lifetime = "P40D",
				restrict_for_apps_created_after_date_time = "2015-01-01T10:37:00Z",
			),
		],
		key_credentials = [
			KeyCredentialConfiguration(
				restriction_type = AppKeyCredentialRestrictionType.AsymmetricKeyLifetime,
				max_lifetime = "P30D",
				restrict_for_apps_created_after_date_time = "2015-01-01T10:37:00Z",
			),
		],
	),
)

result = await graph_client.policies.default_app_management_policy.patch(request_body)


```