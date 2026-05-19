---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthenticationMethodConfiguration authenticationMethodConfiguration = new AuthenticationMethodConfiguration();
authenticationMethodConfiguration.setState(AuthenticationMethodState.Disabled);
LinkedList<ExcludeTarget> excludeTargets = new LinkedList<ExcludeTarget>();
ExcludeTarget excludeTarget = new ExcludeTarget();
excludeTarget.setId("10051f25-53a8-4f81-8a0b-9fc22887e640");
excludeTarget.setTargetType(AuthenticationMethodTargetType.Group);
excludeTargets.add(excludeTarget);
ExcludeTarget excludeTarget1 = new ExcludeTarget();
excludeTarget1.setId("e2c2244f-66cc-4d5b-9042-686f9fa42986");
excludeTarget1.setTargetType(AuthenticationMethodTargetType.Group);
excludeTargets.add(excludeTarget1);
authenticationMethodConfiguration.setExcludeTargets(excludeTargets);
AuthenticationMethodConfiguration result = graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations().byAuthenticationMethodConfigurationId("{authenticationMethodConfiguration-id}").patch(authenticationMethodConfiguration);


```