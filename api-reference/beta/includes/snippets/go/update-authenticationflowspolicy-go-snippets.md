---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAuthenticationFlowsPolicy()
selfServiceSignUp := graphmodels.NewSelfServiceSignUpAuthenticationFlowConfiguration()
isEnabled := true
selfServiceSignUp.SetIsEnabled(&isEnabled) 
requestBody.SetSelfServiceSignUp(selfServiceSignUp)

result, err := graphClient.Policies().AuthenticationFlowsPolicy().Patch(context.Background(), requestBody, nil)


```