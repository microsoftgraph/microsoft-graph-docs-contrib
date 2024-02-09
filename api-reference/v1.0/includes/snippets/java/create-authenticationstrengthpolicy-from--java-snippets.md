---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthenticationStrengthPolicy authenticationStrengthPolicy = new AuthenticationStrengthPolicy();
authenticationStrengthPolicy.setOdataType("#microsoft.graph.authenticationStrengthPolicy");
authenticationStrengthPolicy.setDisplayName("Contoso authentication level");
authenticationStrengthPolicy.setDescription("The only authentication level allowed to access our secret apps");
LinkedList<AuthenticationMethodModes> allowedCombinations = new LinkedList<AuthenticationMethodModes>();
allowedCombinations.add(AuthenticationMethodModes.Password);
allowedCombinations.add(AuthenticationMethodModes.HardwareOath);
allowedCombinations.add(AuthenticationMethodModes.Password);
allowedCombinations.add(AuthenticationMethodModes.Sms);
authenticationStrengthPolicy.setAllowedCombinations(allowedCombinations);
AuthenticationStrengthPolicy result = graphClient.policies().authenticationStrengthPolicies().post(authenticationStrengthPolicy);


```