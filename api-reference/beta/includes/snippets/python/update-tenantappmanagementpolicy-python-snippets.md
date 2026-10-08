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
from msgraph_beta.generated.models.app_management_policy_actor_exemptions import AppManagementPolicyActorExemptions
from msgraph_beta.generated.models.custom_security_attribute_exemption import CustomSecurityAttributeExemption
from msgraph_beta.generated.models.custom_security_attribute_string_value_exemption import CustomSecurityAttributeStringValueExemption
from msgraph_beta.generated.models.custom_security_attribute_comparison_operator import CustomSecurityAttributeComparisonOperator
from msgraph_beta.generated.models.redirect_uri_configuration import RedirectUriConfiguration
from msgraph_beta.generated.models.redirect_uri_blocked_scheme_configuration import RedirectUriBlockedSchemeConfiguration
from msgraph_beta.generated.models.app_management_restriction_state import AppManagementRestrictionState
from msgraph_beta.generated.models.redirect_uri_platform_blocked_scheme_configuration import RedirectUriPlatformBlockedSchemeConfiguration
from msgraph_beta.generated.models.redirect_uri_allowed_scheme_configuration import RedirectUriAllowedSchemeConfiguration
from msgraph_beta.generated.models.redirect_uri_platform_allowed_scheme_configuration import RedirectUriPlatformAllowedSchemeConfiguration
from msgraph_beta.generated.models.redirect_uri_blocked_domain_configuration import RedirectUriBlockedDomainConfiguration
from msgraph_beta.generated.models.redirect_uri_platform_blocked_domain_configuration import RedirectUriPlatformBlockedDomainConfiguration
from msgraph_beta.generated.models.redirect_uri_allowed_domain_configuration import RedirectUriAllowedDomainConfiguration
from msgraph_beta.generated.models.redirect_uri_platform_allowed_domain_configuration import RedirectUriPlatformAllowedDomainConfiguration
from msgraph_beta.generated.models.redirect_uri_wildcard_configuration import RedirectUriWildcardConfiguration
from msgraph_beta.generated.models.redirect_uri_wildcard_exclude_formats import RedirectUriWildcardExcludeFormats
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
				exclude_actors = AppManagementPolicyActorExemptions(
					custom_security_attributes = [
						CustomSecurityAttributeStringValueExemption(
							odata_type = "microsoft.graph.customSecurityAttributeStringValueExemption",
							id = "PolicyExemptions_AppManagementExemption",
							operator = CustomSecurityAttributeComparisonOperator.Equals,
							value = "ExemptFromIdentifierUriAdditionRestriction",
						),
					],
				),
			),
		),
		redirect_uris = RedirectUriConfiguration(
			uri_with_blocked_scheme = RedirectUriBlockedSchemeConfiguration(
				state = AppManagementRestrictionState.Enabled,
				blocked_schemes = [
					"http",
					"ftp",
				],
				exempt_formats = [
					"http://example.com/login",
				],
				web = RedirectUriPlatformBlockedSchemeConfiguration(
					blocked_schemes = [
						"custom-ftps",
					],
				),
				spa = RedirectUriPlatformBlockedSchemeConfiguration(
					blocked_schemes = [
						"myapp",
					],
					exempt_formats = [
						"https://spa.example.com/auth",
					],
				),
				public_client = RedirectUriPlatformBlockedSchemeConfiguration(
					blocked_schemes = [
						"msauth",
					],
					exempt_formats = [
						"https://public.example.com/auth",
					],
				),
			),
			uri_without_allowed_scheme = RedirectUriAllowedSchemeConfiguration(
				state = AppManagementRestrictionState.Enabled,
				allowed_schemes = [
					"https",
				],
				web = RedirectUriPlatformAllowedSchemeConfiguration(
					allowed_schemes = [
						"https",
					],
				),
				spa = RedirectUriPlatformAllowedSchemeConfiguration(
					allowed_schemes = [
						"https",
						"msal",
					],
				),
				public_client = RedirectUriPlatformAllowedSchemeConfiguration(
					allowed_schemes = [
						"myapp",
					],
				),
			),
			uri_with_blocked_domain = RedirectUriBlockedDomainConfiguration(
				state = AppManagementRestrictionState.Enabled,
				blocked_domains = [
					"contoso-short.com",
					"tempuri.org",
				],
				web = RedirectUriPlatformBlockedDomainConfiguration(
					blocked_domains = [
						"short.contoso.com",
					],
				),
				spa = RedirectUriPlatformBlockedDomainConfiguration(
					blocked_domains = [
						"contoso.dev",
					],
				),
				public_client = RedirectUriPlatformBlockedDomainConfiguration(
					blocked_domains = [
						"mspreview.contoso.com",
					],
				),
			),
			uri_without_allowed_domain = RedirectUriAllowedDomainConfiguration(
				state = AppManagementRestrictionState.Enabled,
				allowed_domains = [
					"contoso.com",
					"login.microsoftonline.com",
				],
				web = RedirectUriPlatformAllowedDomainConfiguration(
					allowed_domains = [
						"app.contoso.com",
					],
				),
				spa = RedirectUriPlatformAllowedDomainConfiguration(
					allowed_domains = [
						"spa.contoso.com",
					],
				),
				public_client = RedirectUriPlatformAllowedDomainConfiguration(
					allowed_domains = [
						"app://contoso",
					],
				),
			),
			uri_with_wildcard = RedirectUriWildcardConfiguration(
				state = AppManagementRestrictionState.Enabled,
				exclude_formats = RedirectUriWildcardExcludeFormats(
					exclude_wildcards_in_path = True,
					exclude_wildcards_in_path_with_domains = [
						"contoso.com",
						"fabrikam.com",
					],
				),
			),
		),
	),
)

result = await graph_client.policies.default_app_management_policy.patch(request_body)


```