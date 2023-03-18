---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewReferenceCreate()
odataId := "https://graph.microsoft.com/beta/education/users/14008"
requestBody.SetOdataId(&odataId) 

graphClient.Education().SchoolsById("educationSchool-id").Users().Ref().Post(context.Background(), requestBody, nil)


```