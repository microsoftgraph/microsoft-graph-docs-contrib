---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewServicePrincipal()
preferredSingleSignOnMode := "saml"
requestBody.SetPreferredSingleSignOnMode(&preferredSingleSignOnMode) 

result, err := graphClient.ServicePrincipalsById("servicePrincipal-id").Patch(context.Background(), requestBody, nil)


```