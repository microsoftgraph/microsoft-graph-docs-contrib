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

requestBody := graphmodels.NewAuthenticationMethodConfiguration()
state := graphmodels.DISABLED_AUTHENTICATIONMETHODSTATE 
requestBody.SetState(&state) 


excludeTarget := graphmodels.NewExcludeTarget()
id := "10051f25-53a8-4f81-8a0b-9fc22887e640"
excludeTarget.SetId(&id) 
targetType := graphmodels.GROUP_AUTHENTICATIONMETHODTARGETTYPE 
excludeTarget.SetTargetType(&targetType) 
excludeTarget1 := graphmodels.NewExcludeTarget()
id := "e2c2244f-66cc-4d5b-9042-686f9fa42986"
excludeTarget1.SetId(&id) 
targetType := graphmodels.GROUP_AUTHENTICATIONMETHODTARGETTYPE 
excludeTarget1.SetTargetType(&targetType) 

excludeTargets := []graphmodels.ExcludeTargetable {
	excludeTarget,
	excludeTarget1,
}
requestBody.SetExcludeTargets(excludeTargets)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
authenticationMethodConfigurations, err := graphClient.Policies().AuthenticationMethodsPolicy().AuthenticationMethodConfigurations().ByAuthenticationMethodConfigurationId("authenticationMethodConfiguration-id").Patch(context.Background(), requestBody, nil)


```