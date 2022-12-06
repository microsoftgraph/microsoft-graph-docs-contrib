---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationStrengthPolicy authenticationStrengthPolicy = new AuthenticationStrengthPolicy();
authenticationStrengthPolicy.displayName = "Contoso authentication level";
authenticationStrengthPolicy.description = "The only authentication level allowed to access our secret apps";
LinkedList<AuthenticationMethodModes> allowedCombinationsList = new LinkedList<AuthenticationMethodModes>();
allowedCombinationsList.add(AuthenticationMethodModes.PASSWORD);
allowedCombinationsList.add(AuthenticationMethodModes.HARDWARE_OATH);
allowedCombinationsList.add(AuthenticationMethodModes.PASSWORD);
allowedCombinationsList.add(AuthenticationMethodModes.SMS);
authenticationStrengthPolicy.allowedCombinations = allowedCombinationsList;

graphClient.policies().authenticationStrengthPolicies()
	.buildRequest()
	.post(authenticationStrengthPolicy);

```