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


requestBody := graphmodels.NewB2xIdentityUserFlow()
id := "Partner"
requestBody.SetId(&id) 
userFlowType := graphmodels.SIGNUPORSIGNIN_USERFLOWTYPE 
requestBody.SetUserFlowType(&userFlowType) 
userFlowTypeVersion := float32(1)
requestBody.SetUserFlowTypeVersion(&userFlowTypeVersion) 


identityProvider := graphmodels.NewIdentityProvider()
id := "Facebook-OAuth"
identityProvider.SetId(&id) 
type := "Facebook"
identityProvider.SetType(&type) 
name := "Facebook"
identityProvider.SetName(&name) 

identityProviders := []graphmodels.IdentityProviderable {
	identityProvider,

}
requestBody.SetIdentityProviders(identityProviders)

result, err := graphClient.Identity().B2xUserFlows().Post(context.Background(), requestBody, nil)


```