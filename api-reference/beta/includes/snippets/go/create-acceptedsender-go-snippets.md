---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewReferenceCreate()
odataId := "https://graph.microsoft.com/beta/users/alexd@contoso.com"
requestBody.SetOdataId(&odataId) 

graphClient.GroupsById("group-id").AcceptedSenders().Ref().Post(context.Background(), requestBody, nil)


```