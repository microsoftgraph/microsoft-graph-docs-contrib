---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceCreate()
"@odata.id" := "https://graph.microsoft.com/v1.0/policies/claimsMappingPolicies/a4b35718-fd5e-4ca8-8248-a3c9934b1b78"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.ServicePrincipalsById("servicePrincipal-id").ClaimsMappingPolicies().$ref().Post(context.Background(), requestBody, nil)


```