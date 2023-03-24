---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewIdentityApiConnector()
displayName := "New Test API"
requestBody.SetDisplayName(&displayName) 
targetUrl := "https://otherapi.com/api/endpoint"
requestBody.SetTargetUrl(&targetUrl) 
authenticationConfiguration := graphmodels.NewApiAuthenticationConfigurationBase()
additionalData := map[string]interface{}{
	"username" : "<NEW_USERNAME>", 
	"password" : "<NEW_PASSWORD>", 
}
authenticationConfiguration.SetAdditionalData(additionalData)
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)

result, err := graphClient.Identity().ApiConnectorsById("identityApiConnector-id").Patch(context.Background(), requestBody, nil)


```