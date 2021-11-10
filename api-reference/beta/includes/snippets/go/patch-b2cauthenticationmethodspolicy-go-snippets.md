---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewB2cAuthenticationMethodsPolicy()
isEmailPasswordAuthenticationEnabled := false
requestBody.SetIsEmailPasswordAuthenticationEnabled(&isEmailPasswordAuthenticationEnabled)
isUserNameAuthenticationEnabled := true
requestBody.SetIsUserNameAuthenticationEnabled(&isUserNameAuthenticationEnabled)
isPhoneOneTimePasswordAuthenticationEnabled := true
requestBody.SetIsPhoneOneTimePasswordAuthenticationEnabled(&isPhoneOneTimePasswordAuthenticationEnabled)
options := &msgraphsdk.B2cAuthenticationMethodsPolicyRequestBuilderPatchOptions{
	Body: requestBody,
}
graphClient.Policies().B2cAuthenticationMethodsPolicy().Patch(options);


```