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


requestBody := graphmodels.NewAuthenticationMethodConfiguration()


authenticationMethodTarget := graphmodels.NewAuthenticationMethodTarget()
targetType := graphmodels.GROUP_AUTHENTICATIONMETHODTARGETTYPE 
authenticationMethodTarget.SetTargetType(&targetType) 
id := "b183b746-e7db-4fa2-bafc-69ecf18850dd"
authenticationMethodTarget.SetId(&id) 
isRegistrationRequired := false
authenticationMethodTarget.SetIsRegistrationRequired(&isRegistrationRequired) 

includeTargets := []graphmodels.AuthenticationMethodTargetable {
	authenticationMethodTarget,
}
requestBody.SetIncludeTargets(includeTargets)
state := graphmodels.ENABLED_AUTHENTICATIONMETHODSTATE 
requestBody.SetState(&state) 

authenticationMethodConfigurations, err := graphClient.Policies().AuthenticationMethodsPolicy().AuthenticationMethodConfigurations().ByAuthenticationMethodConfigurationId("authenticationMethodConfiguration-id").Patch(context.Background(), requestBody, nil)


```