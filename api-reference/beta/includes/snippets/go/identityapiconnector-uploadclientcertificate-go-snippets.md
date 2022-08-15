---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUploadClientCertificatePostRequestBody()
pkcs12Value := "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA"
requestBody.SetPkcs12Value(&pkcs12Value) 
password := "<password>"
requestBody.SetPassword(&password) 

result, err := graphClient.Identity().ApiConnectorsById("identityApiConnector-id").UploadClientCertificate().Post(requestBody)


```