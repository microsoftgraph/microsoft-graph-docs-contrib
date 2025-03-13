---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthenticationCombinationConfiguration authenticationCombinationConfiguration = new AuthenticationCombinationConfiguration();
LinkedList<AuthenticationMethodModes> appliesToCombinations = new LinkedList<AuthenticationMethodModes>();
appliesToCombinations.add(AuthenticationMethodModes.Fido2);
authenticationCombinationConfiguration.setAppliesToCombinations(appliesToCombinations);
AuthenticationCombinationConfiguration result = graphClient.identity().conditionalAccess().authenticationStrength().policies().byAuthenticationStrengthPolicyId("{authenticationStrengthPolicy-id}").combinationConfigurations().byAuthenticationCombinationConfigurationId("{authenticationCombinationConfiguration-id}").patch(authenticationCombinationConfiguration);


```