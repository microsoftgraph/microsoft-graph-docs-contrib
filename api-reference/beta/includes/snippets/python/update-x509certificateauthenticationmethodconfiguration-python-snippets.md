---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.x509_certificate_authentication_method_configuration import X509CertificateAuthenticationMethodConfiguration
from msgraph.generated.models.x509_certificate_user_binding import X509CertificateUserBinding
from msgraph.generated.models.x509_certificate_authentication_mode_configuration import X509CertificateAuthenticationModeConfiguration
from msgraph.generated.models.x509_certificate_rule import X509CertificateRule
from msgraph.generated.models.x509_certificate_issuer_hints_configuration import X509CertificateIssuerHintsConfiguration
from msgraph.generated.models.authentication_method_target import AuthenticationMethodTarget

graph_client = GraphServiceClient(credentials, scopes)

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
	issuer_hints_configuration = X509CertificateIssuerHintsConfiguration(
		state = X509CertificateIssuerHintsState.Disabled,
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