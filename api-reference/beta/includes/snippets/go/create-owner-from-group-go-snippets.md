---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewReferenceCreate()
odataId := "https://graph.microsoft.com/beta/users/{id}"
requestBody.SetOdataId(&odataId) 

graphClient.GroupsById("group-id").Owners().Ref().Post(context.Background(), requestBody, nil)


```