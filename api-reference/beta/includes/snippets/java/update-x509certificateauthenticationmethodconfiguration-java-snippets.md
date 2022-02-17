---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

X509CertificateAuthenticationMethodConfiguration authenticationMethodConfiguration = new X509CertificateAuthenticationMethodConfiguration();
authenticationMethodConfiguration.id = "X509Certificate";
authenticationMethodConfiguration.state = AuthenticationMethodState.DISABLED;
LinkedList<X509CertificateUserBinding> certificateUserBindingsList = new LinkedList<X509CertificateUserBinding>();
X509CertificateUserBinding certificateUserBindings = new X509CertificateUserBinding();
certificateUserBindings.x509CertificateField = "PrincipalName";
certificateUserBindings.userProperty = "onPremisesUserPrincipalName";
certificateUserBindings.priority = 1;
certificateUserBindingsList.add(certificateUserBindings);
X509CertificateUserBinding certificateUserBindings1 = new X509CertificateUserBinding();
certificateUserBindings1.x509CertificateField = "RFC822Name";
certificateUserBindings1.userProperty = "userPrincipalName";
certificateUserBindings1.priority = 2;
certificateUserBindingsList.add(certificateUserBindings1);
authenticationMethodConfiguration.certificateUserBindings = certificateUserBindingsList;
X509CertificateAuthenticationModeConfiguration authenticationModeConfiguration = new X509CertificateAuthenticationModeConfiguration();
authenticationModeConfiguration.x509CertificateAuthenticationDefaultMode = X509CertificateAuthenticationMode.X509_CERTIFICATE_SINGLE_FACTOR;
LinkedList<X509CertificateRule> rulesList = new LinkedList<X509CertificateRule>();
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