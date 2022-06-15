---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewUserInsightsSettings()
isEnabled := "false"
requestBody.SetIsEnabled(&isEnabled)
userId := "user-id"
graphClient.UsersById(&userId).Settings().ItemInsights().Patch(requestBody)


```