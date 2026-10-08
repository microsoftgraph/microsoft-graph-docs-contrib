---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.x509_certificate_authentication_method_configuration import X509CertificateAuthenticationMethodConfiguration
from msgraph.generated.models.authentication_method_state import AuthenticationMethodState
from msgraph.generated.models.x509_certificate_user_binding import X509CertificateUserBinding
from msgraph.generated.models.x509_certificate_authentication_mode_configuration import X509CertificateAuthenticationModeConfiguration
from msgraph.generated.models.x509_certificate_authentication_mode import X509CertificateAuthenticationMode
from msgraph.generated.models.x509_certificate_rule import X509CertificateRule
from msgraph.generated.models.x509_certificate_rule_type import X509CertificateRuleType
from msgraph.generated.models.x509_certificate_authority_scope import X509CertificateAuthorityScope
from msgraph.generated.models.include_target import IncludeTarget
from msgraph.generated.models.authentication_method_target_type import AuthenticationMethodTargetType
from msgraph.generated.models.x509_certificate_issuer_hints_configuration import X509CertificateIssuerHintsConfiguration
from msgraph.generated.models.x509_certificate_issuer_hints_state import X509CertificateIssuerHintsState
from msgraph.generated.models.x509_certificate_c_r_l_validation_configuration import X509CertificateCRLValidationConfiguration
from msgraph.generated.models.x509_certificate_c_r_l_validation_configuration_state import X509CertificateCRLValidationConfigurationState
from msgraph.generated.models.authentication_method_target import AuthenticationMethodTarget
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = X509CertificateAuthenticationMethodConfiguration(
	odata_type = "#microsoft.graph.x509CertificateAuthenticationMethodConfiguration",
	id = "X509Certificate",
	state = AuthenticationMethodState.Enabled,
	certificate_user_bindings = [
		X509CertificateUserBinding(
			x509_certificate_field = "PrincipalName",
			user_property = "onPremisesUserPrincipalName",
			priority = 1,
		),
	],
	authentication_mode_configuration = X509CertificateAuthenticationModeConfiguration(
		x509_certificate_authentication_default_mode = X509CertificateAuthenticationMode.X509CertificateMultiFactor,
		rules = [
			X509CertificateRule(
				x509_certificate_rule_type = X509CertificateRuleType.IssuerSubject,
				identifier = "CN=ContosoCA,DC=Contoso,DC=org ",
				x509_certificate_authentication_mode = X509CertificateAuthenticationMode.X509CertificateMultiFactor,
			),
			X509CertificateRule(
				x509_certificate_rule_type = X509CertificateRuleType.PolicyOID,
				identifier = "1.2.3.4",
				x509_certificate_authentication_mode = X509CertificateAuthenticationMode.X509CertificateMultiFactor,
			),
		],
	),
	certificate_authority_scopes = [
		X509CertificateAuthorityScope(
			subject_key_identifier = "aaaaaaaabbbbcccc111122222222222222333333",
			public_key_infrastructure_identifier = "Contoso PKI",
			include_targets = [
				IncludeTarget(
					id = "aaaaaaaa-bbbb-cccc-1111-222222222222",
					target_type = AuthenticationMethodTargetType.Group,
				),
			],
		),
	],
	issuer_hints_configuration = X509CertificateIssuerHintsConfiguration(
		state = X509CertificateIssuerHintsState.Enabled,
	),
	crl_validation_configuration = X509CertificateCRLValidationConfiguration(
		state = X509CertificateCRLValidationConfigurationState.Disabled,
		exempted_certificate_authorities_subject_key_identifiers = [
		],
	),
	include_targets = [
		AuthenticationMethodTarget(
			target_type = AuthenticationMethodTargetType.Group,
			id = "all_users",
			is_registration_required = False,
		),
	],
)

result = await graph_client.policies.authentication_methods_policy.authentication_method_configurations.by_authentication_method_configuration_id('authenticationMethodConfiguration-id').patch(request_body)


```