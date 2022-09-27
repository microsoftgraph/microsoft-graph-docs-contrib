---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceCreate()
"@odata.id" := "https://graph.microsoft.com/beta/policies/homeRealmDiscoveryPolicies/6c6f154f-cb39-4ff9-bf5b-62d5ad585cde"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.ServicePrincipalsById("servicePrincipal-id").HomeRealmDiscoveryPolicies().$ref().Post(context.Background(), requestBody, nil)


```