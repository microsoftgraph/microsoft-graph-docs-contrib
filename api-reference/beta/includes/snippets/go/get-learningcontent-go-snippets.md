---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


result, err := graphClient.EmployeeExperience().LearningProvidersById("learningProvider-id").LearningContentsById("learningContent-id").Get(context.Background(), nil)


```