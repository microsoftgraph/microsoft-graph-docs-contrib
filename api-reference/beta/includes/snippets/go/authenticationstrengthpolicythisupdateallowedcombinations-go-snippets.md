---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Policies/AuthenticationStrengthPolicies/Item/UpdateAllowedCombinations"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUpdateAllowedCombinationsPostRequestBody()
allowedCombinations := []graphmodels.AuthenticationMethodModesable {
	authenticationMethodModes := graphmodels.PASSWORD, VOICE_AUTHENTICATIONMETHODMODES 
	requestBody.SetAuthenticationMethodModes(&authenticationMethodModes) 

}
requestBody.SetAllowedCombinations(allowedCombinations)

result, err := graphClient.Policies().AuthenticationStrengthPolicies().ByAuthenticationStrengthPolicieId("authenticationStrengthPolicy-id").UpdateAllowedCombinations().Post(context.Background(), requestBody, nil)


```