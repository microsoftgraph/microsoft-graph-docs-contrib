---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewEducationUser()
displayName := "Rogelio Cazares"
requestBody.SetDisplayName(&displayName) 
givenName := "Rogelio"
requestBody.SetGivenName(&givenName) 
middleName := "Fernando"
requestBody.SetMiddleName(&middleName) 
surname := "Cazares"
requestBody.SetSurname(&surname) 

result, err := graphClient.Education().UsersById("educationUser-id").Patch(context.Background(), requestBody, nil)


```