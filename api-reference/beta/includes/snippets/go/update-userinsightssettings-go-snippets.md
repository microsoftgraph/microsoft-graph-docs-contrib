---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewUserInsightsSettings()
isEnabled := false
requestBody.SetIsEnabled(&isEnabled) 

result, err := graphClient.UsersById("user-id").Settings().ItemInsights().Patch(context.Background(), requestBody, nil)


```