---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

X509CertificateAuthenticationMethodConfiguration authenticationMethodConfiguration = new X509CertificateAuthenticationMethodConfiguration();
authenticationMethodConfiguration.id = "X509Certificate";
authenticationMethodConfiguration.state = AuthenticationMethodState.ENABLED;
LinkedList<X509CertificateUserBinding> certificateUserBindingsList = new LinkedList<X509CertificateUserBinding>();
X509CertificateUserBinding certificateUserBindings = new X509CertificateUserBinding();
certificateUserBindings.x509CertificateField = "PrincipalName";
certificateUserBindings.userProperty = "onPremisesUserPrincipalName";
certificateUserBindings.priority = 1;
certificateUserBindingsList.add(certificateUserBindings);
authenticationMethodConfiguration.certificateUserBindings = certificateUserBindingsList;
X509CertificateAuthenticationModeConfiguration authenticationModeConfiguration = new X509CertificateAuthenticationModeConfiguration();
authenticationModeConfiguration.x509CertificateAuthenticationDefaultMode = X509CertificateAuthenticationMode.X509_CERTIFICATE_MULTI_FACTOR;
LinkedList<X509CertificateRule> rulesList = new LinkedList<X509CertificateRule>();
X509CertificateRule rules = new X509CertificateRule();
rules.x509CertificateRuleType = X509CertificateRuleType.ISSUER_SUBJECT;
rules.identifier = "CN=ContosoCA,DC=Contoso,DC=org ";
rules.x509CertificateAuthenticationMode = X509CertificateAuthenticationMode.X509_CERTIFICATE_MULTI_FACTOR;
rulesList.add(rules);
X509CertificateRule rules1 = new X509CertificateRule();
rules1.x509CertificateRuleType = X509CertificateRuleType.POLICY_O_I_D;
rules1.identifier = "1.2.3.4";
rules1.x509CertificateAuthenticationMode = X509CertificateAuthenticationMode.X509_CERTIFICATE_MULTI_FACTOR;
rulesList.add(rules1);
authenticationModeConfiguration.rules = rulesList;
authenticationMethodConfiguration.authenticationModeConfiguration = authenticationModeConfiguration;
LinkedList<AuthenticationMethodTarget> includeTargetsList = new LinkedList<AuthenticationMethodTarget>();
AuthenticationMethodTarget includeTargets = new AuthenticationMethodTarget();
includeTargets.targetType = AuthenticationMethodTargetType.GROUP;
includeTargets.id = "all_users";
includeTargets.isRegistrationRequired = false;
includeTargetsList.add(includeTargets);
AuthenticationMethodTargetCollectionResponse authenticationMethodTargetCollectionResponse = new AuthenticationMethodTargetCollectionResponse();
authenticationMethodTargetCollectionResponse.value = includeTargetsList;
AuthenticationMethodTargetCollectionPage authenticationMethodTargetCollectionPage = new AuthenticationMethodTargetCollectionPage(authenticationMethodTargetCollectionResponse, null);
authenticationMethodConfiguration.includeTargets = authenticationMethodTargetCollectionPage;

graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations("x509Certificate")
	.buildRequest()
	.patch(authenticationMethodConfiguration);

```