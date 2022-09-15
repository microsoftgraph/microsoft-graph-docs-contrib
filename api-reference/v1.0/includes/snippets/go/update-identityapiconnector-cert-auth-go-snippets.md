---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewIdentityApiConnector()
authenticationConfiguration := graphmodels.NewApiAuthenticationConfigurationBase()
additionalData := map[string]interface{}{
	"pkcs12Value" : "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA", 
	"password" : "secret", 
}
authenticationConfiguration.SetAdditionalData(additionalData)
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)

graphClient.Identity().ApiConnectorsById("identityApiConnector-id").Patch(context.Background(), requestBody, nil)


```