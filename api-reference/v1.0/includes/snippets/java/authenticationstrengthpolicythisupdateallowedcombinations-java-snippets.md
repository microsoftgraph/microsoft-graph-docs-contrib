---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.policies.authenticationstrengthpolicies.item.updateallowedcombinations.UpdateAllowedCombinationsPostRequestBody updateAllowedCombinationsPostRequestBody = new com.microsoft.graph.policies.authenticationstrengthpolicies.item.updateallowedcombinations.UpdateAllowedCombinationsPostRequestBody();
LinkedList<AuthenticationMethodModes> allowedCombinations = new LinkedList<AuthenticationMethodModes>();
allowedCombinations.add(AuthenticationMethodModes.Password);
allowedCombinations.add(AuthenticationMethodModes.Voice);
updateAllowedCombinationsPostRequestBody.setAllowedCombinations(allowedCombinations);
var result = graphClient.policies().authenticationStrengthPolicies().byAuthenticationStrengthPolicyId("{authenticationStrengthPolicy-id}").updateAllowedCombinations().post(updateAllowedCombinationsPostRequestBody);


```