---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAuthenticationCombinationConfiguration()
allowedAAGUIDs := []string {
	"486c3b50-889c-480a-abc5-c04ef7c873e0",
	"c042882f-a621-40c8-94d3-9cde3a826fed",
	"ec454c08-4c77-4012-9d48-45f7f0fccdfb",
}
requestBody.SetAllowedAAGUIDs(allowedAAGUIDs)
appliesToCombinations := []graphmodels.AuthenticationMethodModesable {
	authenticationMethodModes := graphmodels.FIDO2_AUTHENTICATIONMETHODMODES 
	requestBody.SetAuthenticationMethodModes(&authenticationMethodModes)
}
requestBody.SetAppliesToCombinations(appliesToCombinations)

result, err := graphClient.Identity().ConditionalAccess().AuthenticationStrength().Policies().ByPolicieId("authenticationStrengthPolicy-id").CombinationConfigurations().Post(context.Background(), requestBody, nil)


```