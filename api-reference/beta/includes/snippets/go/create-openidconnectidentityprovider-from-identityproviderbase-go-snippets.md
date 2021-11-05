---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewIdentityProviderBase()
displayName := "Login with the Contoso identity provider"
requestBody.SetDisplayName(&displayName)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.openIdConnectIdentityProvider",
	"clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",
	"clientSecret": "12345",
	"domainHint": "mycustomoidc",
	"metadataUrl": "https://mycustomoidc.com/.well-known/openid-configuration",
	"responseMode": "form_post",
	"responseType": "code",
	"scope": "openid",
}
options := &msgraphsdk.IdentityProvidersRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Identity().IdentityProviders().Post(options);


```