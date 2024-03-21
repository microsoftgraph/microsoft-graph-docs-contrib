---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

X509CertificateAuthenticationMethodConfiguration authenticationMethodConfiguration = new X509CertificateAuthenticationMethodConfiguration();
authenticationMethodConfiguration.setOdataType("#microsoft.graph.x509CertificateAuthenticationMethodConfiguration");
authenticationMethodConfiguration.setId("X509Certificate");
authenticationMethodConfiguration.setState(AuthenticationMethodState.Enabled);
LinkedList<X509CertificateUserBinding> certificateUserBindings = new LinkedList<X509CertificateUserBinding>();
X509CertificateUserBinding x509CertificateUserBinding = new X509CertificateUserBinding();
x509CertificateUserBinding.setX509CertificateField("PrincipalName");
x509CertificateUserBinding.setUserProperty("onPremisesUserPrincipalName");
x509CertificateUserBinding.setPriority(1);
certificateUserBindings.add(x509CertificateUserBinding);
authenticationMethodConfiguration.setCertificateUserBindings(certificateUserBindings);
X509CertificateAuthenticationModeConfiguration authenticationModeConfiguration = new X509CertificateAuthenticationModeConfiguration();
authenticationModeConfiguration.setX509CertificateAuthenticationDefaultMode(X509CertificateAuthenticationMode.X509CertificateMultiFactor);
LinkedList<X509CertificateRule> rules = new LinkedList<X509CertificateRule>();
X509CertificateRule x509CertificateRule = new X509CertificateRule();
x509CertificateRule.setX509CertificateRuleType(X509CertificateRuleType.IssuerSubject);
x509CertificateRule.setIdentifier("CN=ContosoCA,DC=Contoso,DC=org ");
x509CertificateRule.setX509CertificateAuthenticationMode(X509CertificateAuthenticationMode.X509CertificateMultiFactor);
rules.add(x509CertificateRule);
X509CertificateRule x509CertificateRule1 = new X509CertificateRule();
x509CertificateRule1.setX509CertificateRuleType(X509CertificateRuleType.PolicyOID);
x509CertificateRule1.setIdentifier("1.2.3.4");
x509CertificateRule1.setX509CertificateAuthenticationMode(X509CertificateAuthenticationMode.X509CertificateMultiFactor);
rules.add(x509CertificateRule1);
authenticationModeConfiguration.setRules(rules);
authenticationMethodConfiguration.setAuthenticationModeConfiguration(authenticationModeConfiguration);
X509CertificateIssuerHintsConfiguration issuerHintsConfiguration = new X509CertificateIssuerHintsConfiguration();
issuerHintsConfiguration.setState(X509CertificateIssuerHintsState.Disabled);
authenticationMethodConfiguration.setIssuerHintsConfiguration(issuerHintsConfiguration);
LinkedList<AuthenticationMethodTarget> includeTargets = new LinkedList<AuthenticationMethodTarget>();
AuthenticationMethodTarget authenticationMethodTarget = new AuthenticationMethodTarget();
authenticationMethodTarget.setTargetType(AuthenticationMethodTargetType.Group);
authenticationMethodTarget.setId("all_users");
authenticationMethodTarget.setIsRegistrationRequired(false);
includeTargets.add(authenticationMethodTarget);
authenticationMethodConfiguration.setIncludeTargets(includeTargets);
AuthenticationMethodConfiguration result = graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations().byAuthenticationMethodConfigurationId("{authenticationMethodConfiguration-id}").patch(authenticationMethodConfiguration);


```