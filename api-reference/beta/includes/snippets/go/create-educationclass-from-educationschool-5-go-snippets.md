---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewReferenceCreate()
odataId := "https://graph.microsoft.com/beta/education/classes/11006"
requestBody.SetOdataId(&odataId) 

graphClient.Education().SchoolsById("educationSchool-id").Classes().Ref().Post(context.Background(), requestBody, nil)


```