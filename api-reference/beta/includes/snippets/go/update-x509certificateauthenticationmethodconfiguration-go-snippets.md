---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAuthenticationMethodConfiguration()
id := "X509Certificate"
requestBody.SetId(&id)
state := "enabled"
requestBody.SetState(&state)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.x509CertificateAuthenticationMethodConfiguration",
	"certificateUserBindings":  []Object {
	}
	"includeTargets":  []Object {
	}
}
options := &msgraphsdk.AuthenticationMethodConfigurationRequestBuilderPatchOptions{
	Body: requestBody,
}
authenticationMethodConfigurationId := "authenticationMethodConfiguration-id"
graphClient.Policies().AuthenticationMethodsPolicy().AuthenticationMethodConfigurationsById(&authenticationMethodConfigurationId).Patch(options)


```