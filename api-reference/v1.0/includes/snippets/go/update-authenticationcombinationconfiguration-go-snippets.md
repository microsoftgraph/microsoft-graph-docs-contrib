---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAuthenticationCombinationConfiguration()
appliesToCombinations := []graphmodels.AuthenticationMethodModesable {
	authenticationMethodModes := graphmodels.FIDO2_AUTHENTICATIONMETHODMODES 
	requestBody.SetAuthenticationMethodModes(&authenticationMethodModes)
}
requestBody.SetAppliesToCombinations(appliesToCombinations)

result, err := graphClient.Identity().ConditionalAccess().AuthenticationStrength().Policies().ByPolicieId("authenticationStrengthPolicy-id").CombinationConfigurations().ByCombinationConfigurationId("authenticationCombinationConfiguration-id").Patch(context.Background(), requestBody, nil)


```