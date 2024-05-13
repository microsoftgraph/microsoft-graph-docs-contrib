---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExternalAuthenticationMethodConfiguration authenticationMethodConfiguration = new ExternalAuthenticationMethodConfiguration();
authenticationMethodConfiguration.setOdataType("#microsoft.graph.externalAuthenticationMethodConfiguration");
LinkedList<AuthenticationMethodTarget> includeTargets = new LinkedList<AuthenticationMethodTarget>();
AuthenticationMethodTarget authenticationMethodTarget = new AuthenticationMethodTarget();
authenticationMethodTarget.setTargetType(AuthenticationMethodTargetType.Group);
authenticationMethodTarget.setId("b183b746-e7db-4fa2-bafc-69ecf18850dd");
authenticationMethodTarget.setIsRegistrationRequired(false);
includeTargets.add(authenticationMethodTarget);
authenticationMethodConfiguration.setIncludeTargets(includeTargets);
authenticationMethodConfiguration.setState(AuthenticationMethodState.Enabled);
AuthenticationMethodConfiguration result = graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations().byAuthenticationMethodConfigurationId("{authenticationMethodConfiguration-id}").patch(authenticationMethodConfiguration);


```