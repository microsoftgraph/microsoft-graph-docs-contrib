---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceCreate()
"@odata.id" := "https://graph.microsoft.com/beta/policies/claimsMappingPolicies/cd3d9b57-0aee-4f25-8ee3-ac74ef5986a9"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.ServicePrincipalsById("servicePrincipal-id").ClaimsMappingPolicies().$ref().Post(context.Background(), requestBody, nil)


```