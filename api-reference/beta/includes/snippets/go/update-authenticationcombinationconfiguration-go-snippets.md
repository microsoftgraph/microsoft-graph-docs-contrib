---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAuthenticationCombinationConfiguration()
appliesToCombinations := []graphmodels.AuthenticationMethodModesable {
	authenticationMethodModes := graphmodels.FIDO2_AUTHENTICATIONMETHODMODES 
	requestBody.SetAuthenticationMethodModes(&authenticationMethodModes) 

}
requestBody.SetAppliesToCombinations(appliesToCombinations)

result, err := graphClient.Identity().ConditionalAccess().AuthenticationStrengths().PoliciesById("authenticationStrengthPolicy-id").CombinationConfigurationsById("authenticationCombinationConfiguration-id").Patch(context.Background(), requestBody, nil)


```