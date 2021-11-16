---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewIdentityProviderBase()
displayName := "Sign in with Apple"
requestBody.SetDisplayName(&displayName)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.appleManagedIdentityProvider",
	"developerId": "UBF8T346G9",
	"serviceId": "com.microsoft.rts.b2c.test.client",
	"keyId": "99P6D879C4",
	"certificateData": "******",
}
options := &msgraphsdk.IdentityProvidersRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Identity().IdentityProviders().Post(options)


```