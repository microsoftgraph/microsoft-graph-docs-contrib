---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewApplication()
web := graphmodels.NewWebApplication()
redirectUris := []string {
	"https://signin.aws.amazon.com/saml",

}
web.SetRedirectUris(redirectUris)
requestBody.SetWeb(web)
identifierUris := []string {
	"https://signin.aws.amazon.com/saml",

}
requestBody.SetIdentifierUris(identifierUris)

result, err := graphClient.ApplicationsById("application-id").Patch(context.Background(), requestBody, nil)


```