---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewReferenceCreate()
odataId := "https://graph.microsoft.com/beta/policies/appManagementPolicies/{id}"
requestBody.SetOdataId(&odataId) 

graphClient.ApplicationsById("application-id").AppManagementPolicies().Ref().Post(context.Background(), requestBody, nil)


```