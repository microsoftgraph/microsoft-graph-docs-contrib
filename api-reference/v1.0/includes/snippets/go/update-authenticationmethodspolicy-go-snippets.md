---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewAuthenticationMethodsPolicy()
requestBody.SetAuthenticationMethodConfigurations( []AuthenticationMethodConfiguration {
	msgraphsdk.NewAuthenticationMethodConfiguration(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.fido2AuthenticationMethodConfiguration",
		"id": "Fido2",
		"state": "disabled",
		"isSelfServiceRegistrationAllowed": false,
		"isAttestationEnforced": false,
	}
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.context": "https://graph.microsoft.com/v1.0/$metadata#authenticationMethodsPolicy",
}
options := &msgraphsdk.AuthenticationMethodsPolicyRequestBuilderPatchOptions{
	Body: requestBody,
}
graphClient.Policies().AuthenticationMethodsPolicy().Patch(options)


```