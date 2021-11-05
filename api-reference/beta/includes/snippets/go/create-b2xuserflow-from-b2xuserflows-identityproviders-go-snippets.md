---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewB2xIdentityUserFlow()
id := "Partner"
requestBody.SetId(&id)
userFlowType := "signUpOrSignIn"
requestBody.SetUserFlowType(&userFlowType)
userFlowTypeVersion := float32(1)
requestBody.SetUserFlowTypeVersion(&userFlowTypeVersion)
requestBody.SetIdentityProviders( []IdentityProvider {
	msgraphsdk.NewIdentityProvider(),
	SetAdditionalData(map[string]interface{}{
		"id": "Facebook-OAuth",
		"type": "Facebook",
		"name": "Facebook",
	}
}
options := &msgraphsdk.B2xUserFlowsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Identity().B2xUserFlows().Post(options);


```