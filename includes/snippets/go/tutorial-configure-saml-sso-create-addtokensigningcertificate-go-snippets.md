---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAddTokenSigningCertificatePostRequestBody()
displayName := "CN=AWSContoso"
requestBody.SetDisplayName(&displayName) 
endDateTime , err := time.Parse(time.RFC3339, "2024-01-25T00:00:00Z")
requestBody.SetEndDateTime(&endDateTime) 

result, err := graphClient.ServicePrincipalsById("servicePrincipal-id").MicrosoftGraphAddTokenSigningCertificate().Post(context.Background(), requestBody, nil)


```