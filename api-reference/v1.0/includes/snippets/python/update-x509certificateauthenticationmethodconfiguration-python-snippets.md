---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = X509CertificateAuthenticationMethodConfiguration()
request_body.@odata_type = '#microsoft.graph.x509CertificateAuthenticationMethodConfiguration'

request_body.id = 'X509Certificate'

request_body.state(AuthenticationMethodState.Enabled('authenticationmethodstate.enabled'))

certificate_user_bindings_x509_certificate_user_binding1 = X509CertificateUserBinding()
certificate_user_bindings_x509_certificate_user_binding1.x509_certificate_field = 'PrincipalName'

certificate_user_bindings_x509_certificate_user_binding1.user_property = 'onPremisesUserPrincipalName'

certificate_user_bindings_x509_certificate_user_binding1.Priority = 1


certificateUserBindingsArray []= certificateUserBindingsX509CertificateUserBinding1;
request_body.certificateuserbindings(certificateUserBindingsArray)


authentication_mode_configuration = X509CertificateAuthenticationModeConfiguration()
authentication_mode_configuration.x509certificateauthenticationdefaultmode(X509CertificateAuthenticationMode.X509CertificateMultiFactor('x509certificateauthenticationmode.x509certificatemultifactor'))

rules_x509_certificate_rule1 = X509CertificateRule()
rules_x509_certificate_rule1.x509certificateruletype(X509CertificateRuleType.IssuerSubject('x509certificateruletype.issuersubject'))

rules_x509_certificate_rule1.identifier = 'CN=ContosoCA,DC=Contoso,DC=org '

rules_x509_certificate_rule1.x509certificateauthenticationmode(X509CertificateAuthenticationMode.X509CertificateMultiFactor('x509certificateauthenticationmode.x509certificatemultifactor'))


rulesArray []= rulesX509CertificateRule1;
rules_x509_certificate_rule2 = X509CertificateRule()
rules_x509_certificate_rule2.x509certificateruletype(X509CertificateRuleType.PolicyOID('x509certificateruletype.policyoid'))

rules_x509_certificate_rule2.identifier = '1.2.3.4'

rules_x509_certificate_rule2.x509certificateauthenticationmode(X509CertificateAuthenticationMode.X509CertificateMultiFactor('x509certificateauthenticationmode.x509certificatemultifactor'))


rulesArray []= rulesX509CertificateRule2;
authentication_mode_configuration.rules(rulesArray)



request_body.authentication_mode_configuration = authentication_mode_configuration
include_targets_authentication_method_target1 = AuthenticationMethodTarget()
include_targets_authentication_method_target1.targettype(AuthenticationMethodTargetType.Group('authenticationmethodtargettype.group'))

include_targets_authentication_method_target1.id = 'all_users'

include_targets_authentication_method_target1.is_registration_required = False


includeTargetsArray []= includeTargetsAuthenticationMethodTarget1;
request_body.includetargets(includeTargetsArray)





result = await client.policies.authentication_method_policy.authentication_method_configurations.by_authentication_method_configuration_id('authenticationMethodConfiguration-id').patch(request_body = request_body)


```