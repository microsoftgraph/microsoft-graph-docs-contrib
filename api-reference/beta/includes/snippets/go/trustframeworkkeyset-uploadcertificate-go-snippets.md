---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUploadCertificatePostRequestBody()
key := "key-value"
requestBody.SetKey(&key) 

result, err := graphClient.TrustFramework().KeySetsById("trustFrameworkKeySet-id").UploadCertificate().Post(context.Background(), requestBody, nil)


```