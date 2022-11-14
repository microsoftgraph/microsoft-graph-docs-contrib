---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewGetPasswordSingleSignOnCredentialsPostRequestBody()
id := "5793aa3b-cca9-4794-679a240f8b58"
requestBody.SetId(&id) 

result, err := graphClient.ServicePrincipalsById("servicePrincipal-id").GetPasswordSingleSignOnCredentials().Post(context.Background(), requestBody, nil)


```