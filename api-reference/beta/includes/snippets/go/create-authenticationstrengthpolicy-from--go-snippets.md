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


requestBody := graphmodels.NewAuthenticationStrengthPolicy()
displayName := "Contoso authentication level"
requestBody.SetDisplayName(&displayName) 
description := "The only authentication level allowed to access our secret apps"
requestBody.SetDescription(&description) 
allowedCombinations := []graphmodels.AuthenticationMethodModesable {
	authenticationMethodModes := graphmodels.PASSWORD, HARDWAREOATH_AUTHENTICATIONMETHODMODES 
	requestBody.SetAuthenticationMethodModes(&authenticationMethodModes) 
	authenticationMethodModes := graphmodels.PASSWORD, SMS_AUTHENTICATIONMETHODMODES 
	requestBody.SetAuthenticationMethodModes(&authenticationMethodModes) 

}
requestBody.SetAllowedCombinations(allowedCombinations)

result, err := graphClient.Policies().AuthenticationStrengthPolicies().Post(context.Background(), requestBody, nil)


```