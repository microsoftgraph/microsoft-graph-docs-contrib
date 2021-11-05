---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewIdentityProviderBase()
displayName := "Login with Amazon"
requestBody.SetDisplayName(&displayName)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.socialIdentityProvider",
	"identityProviderType": "Amazon",
	"clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",
	"clientSecret": "000000000000",
}
options := &msgraphsdk.IdentityProvidersRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Identity().IdentityProviders().Post(options);


```