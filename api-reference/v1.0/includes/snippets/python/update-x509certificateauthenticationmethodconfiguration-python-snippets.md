---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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