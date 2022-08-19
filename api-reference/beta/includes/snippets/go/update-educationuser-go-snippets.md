---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEducationUser()
displayName := "Rogelio Cazares"
requestBody.SetDisplayName(&displayName) 
givenName := "Rogelio"
requestBody.SetGivenName(&givenName) 
middleName := "Fernando"
requestBody.SetMiddleName(&middleName) 
surname := "Cazares"
requestBody.SetSurname(&surname) 

graphClient.Education().UsersById("educationUser-id").Patch(requestBody)


```