---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<AuthenticationMethodModes> allowedCombinationsList = new LinkedList<AuthenticationMethodModes>();
allowedCombinationsList.add(AuthenticationMethodModes.PASSWORD);
allowedCombinationsList.add(AuthenticationMethodModes.VOICE);

graphClient.policies().authenticationStrengthPolicies("33c5d2c0-884e-4b5d-a5b8-5395082b092c")
	.updateAllowedCombinations(AuthenticationStrengthPolicyUpdateAllowedCombinationsParameterSet
		.newBuilder()
		.withAllowedCombinations(allowedCombinationsList)
		.build())
	.buildRequest()
	.post();

```