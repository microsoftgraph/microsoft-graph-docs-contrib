---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewIdentityProviderBase()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.socialIdentityProvider",
	"clientSecret": "1111111111111",
}
options := &msgraphsdk.IdentityProviderBaseRequestBuilderPatchOptions{
	Body: requestBody,
}
identityProviderBaseId := "identityProviderBase-id"
graphClient.Identity().IdentityProvidersById(&identityProviderBaseId).Patch(options)


```