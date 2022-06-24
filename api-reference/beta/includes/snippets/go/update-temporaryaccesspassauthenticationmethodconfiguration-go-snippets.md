---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAuthenticationMethodConfiguration()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration",
	"isUsableOnce": true,
}
authenticationMethodConfigurationId := "authenticationMethodConfiguration-id"
graphClient.Policies().AuthenticationMethodsPolicy().AuthenticationMethodConfigurationsById(&authenticationMethodConfigurationId).Patch(requestBody)


```