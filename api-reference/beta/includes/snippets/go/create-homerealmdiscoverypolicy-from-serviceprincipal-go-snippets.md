---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewReferenceCreate()
odataId := "https://graph.microsoft.com/beta/policies/homeRealmDiscoveryPolicies/6c6f154f-cb39-4ff9-bf5b-62d5ad585cde"
requestBody.SetOdataId(&odataId) 

graphClient.ServicePrincipalsById("servicePrincipal-id").HomeRealmDiscoveryPolicies().Ref().Post(context.Background(), requestBody, nil)


```