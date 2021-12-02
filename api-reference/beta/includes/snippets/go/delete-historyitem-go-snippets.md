---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

userActivityId := "userActivity-id"
activityHistoryItemId := "activityHistoryItem-id"
graphClient.Me().ActivitiesById(&userActivityId).HistoryItemsById(&activityHistoryItemId).Put(options)


```