---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewServicePrincipal()
preferredTokenSigningKeyThumbprint := "A7D3C4626B8A84FDA868CCC67D274D402FFD0A10"
requestBody.SetPreferredTokenSigningKeyThumbprint(&preferredTokenSigningKeyThumbprint) 

result, err := graphClient.ServicePrincipalsById("servicePrincipal-id").Patch(context.Background(), requestBody, nil)


```