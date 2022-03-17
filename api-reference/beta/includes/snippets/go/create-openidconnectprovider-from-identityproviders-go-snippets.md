---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewIdentityProvider()
name := "Login with the Contoso identity provider"
requestBody.SetName(&name)
type := "OpenIDConnect"
requestBody.SetType(&type)
clientId := "56433757-cadd-4135-8431-2c9e3fd68ae8"
requestBody.SetClientId(&clientId)
clientSecret := "12345"
requestBody.SetClientSecret(&clientSecret)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.openIdConnectProvider",
	"domainHint": "mycustomoidc",
	"metadataUrl": "https://mycustomoidc.com/.well-known/openid-configuration",
	"responseMode": "form_post",
	"responseType": "code",
	"scope": "openid",
}
options := &msgraphsdk.IdentityProvidersRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.IdentityProviders().Post(options)


```