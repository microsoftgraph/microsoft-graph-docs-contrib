---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
combinationConfigurations, err := graphClient.Identity().ConditionalAccess().AuthenticationStrength().Policies().ByAuthenticationStrengthPolicyId("authenticationStrengthPolicy-id").CombinationConfigurations().Post(context.Background(), requestBody, nil)


```