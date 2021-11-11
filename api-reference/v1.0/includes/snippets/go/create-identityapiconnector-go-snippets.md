---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewIdentityApiConnector()
displayName := "Test API"
requestBody.SetDisplayName(&displayName)
targetUrl := "https://someotherapi.com/api"
requestBody.SetTargetUrl(&targetUrl)
authenticationConfiguration := msgraphsdk.NewApiAuthenticationConfigurationBase()
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)
authenticationConfiguration.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.pkcs12Certificate",
	"pkcs12Value": "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA",
	"password": "CertificatePassword",
}
options := &msgraphsdk.ApiConnectorsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Identity().ApiConnectors().Post(options)


```