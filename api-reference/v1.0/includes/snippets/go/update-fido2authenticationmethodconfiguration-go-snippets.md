---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAuthenticationMethodConfiguration()
state := "enabled"
requestBody.SetState(&state)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.fido2AuthenticationMethodConfiguration",
	"isAttestationEnforced": "true",
}
authenticationMethodConfigurationId := "authenticationMethodConfiguration-id"
graphClient.Policies().AuthenticationMethodsPolicy().AuthenticationMethodConfigurationsById(&authenticationMethodConfigurationId).Patch(requestBody)


```