---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAuthenticationFlowsPolicy()
selfServiceSignUp := graphmodels.NewSelfServiceSignUpAuthenticationFlowConfiguration()
isEnabled := true
selfServiceSignUp.SetIsEnabled(&isEnabled) 
requestBody.SetSelfServiceSignUp(selfServiceSignUp)

result, err := graphClient.Policies().AuthenticationFlowsPolicy().Patch(context.Background(), requestBody, nil)


```