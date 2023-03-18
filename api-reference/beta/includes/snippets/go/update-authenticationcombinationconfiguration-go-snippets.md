---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewAuthenticationCombinationConfiguration()
appliesToCombinations := []graphmodels.AuthenticationMethodModesable {
	authenticationMethodModes := graphmodels.FIDO2_AUTHENTICATIONMETHODMODES 
	requestBody.SetAuthenticationMethodModes(&authenticationMethodModes) 

}
requestBody.SetAppliesToCombinations(appliesToCombinations)

result, err := graphClient.Identity().ConditionalAccess().AuthenticationStrengths().PoliciesById("authenticationStrengthPolicy-id").CombinationConfigurationsById("authenticationCombinationConfiguration-id").Patch(context.Background(), requestBody, nil)


```