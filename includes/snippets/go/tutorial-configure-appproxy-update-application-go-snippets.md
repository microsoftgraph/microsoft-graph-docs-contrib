---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewApplication()
identifierUris := []string {
	"https://contosoiwaapp-contoso.msappproxy.net",

}
requestBody.SetIdentifierUris(identifierUris)
web := graphmodels.NewWebApplication()
redirectUris := []string {
	"https://contosoiwaapp-contoso.msappproxy.net",

}
web.SetRedirectUris(redirectUris)
homePageUrl := "https://contosoiwaapp-contoso.msappproxy.net"
web.SetHomePageUrl(&homePageUrl) 
requestBody.SetWeb(web)

result, err := graphClient.ApplicationsById("application-id").Patch(context.Background(), requestBody, nil)


```