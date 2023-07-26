---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphpolicies "github.com/microsoftgraph/msgraph-beta-sdk-go/policies"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphpolicies.NewUpdateAllowedCombinationsPostRequestBody()
allowedCombinations := []graphmodels.AuthenticationMethodModesable {
	authenticationMethodModes := graphmodels.PASSWORD, VOICE_AUTHENTICATIONMETHODMODES 
	requestBody.SetAuthenticationMethodModes(&authenticationMethodModes)
}
requestBody.SetAllowedCombinations(allowedCombinations)

result, err := graphClient.Policies().AuthenticationStrengthPolicies().ByAuthenticationStrengthPolicieId("authenticationStrengthPolicy-id").UpdateAllowedCombinations().Post(context.Background(), requestBody, nil)


```