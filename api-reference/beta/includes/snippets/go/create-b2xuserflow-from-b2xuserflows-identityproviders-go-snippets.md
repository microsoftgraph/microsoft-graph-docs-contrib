---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewB2xIdentityUserFlow()
id := "Partner"
requestBody.SetId(&id)
userFlowType := "signUpOrSignIn"
requestBody.SetUserFlowType(&userFlowType)
userFlowTypeVersion := float32(1)
requestBody.SetUserFlowTypeVersion(&userFlowTypeVersion)
requestBody.SetIdentityProviders( []IdentityProvider {
	msgraphsdk.NewIdentityProvider(),
id := "Facebook-OAuth"
	SetId(&id)
type := "Facebook"
	SetType(&type)
name := "Facebook"
	SetName(&name)
}
result, err := graphClient.Identity().B2xUserFlows().Post(requestBody)


```