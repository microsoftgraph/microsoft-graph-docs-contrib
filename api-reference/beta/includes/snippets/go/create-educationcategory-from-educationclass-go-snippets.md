---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewEducationCategory()
displayName := "Quizzes"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Education().ClassesById("educationClass-id").AssignmentCategories().Post(context.Background(), requestBody, nil)


```