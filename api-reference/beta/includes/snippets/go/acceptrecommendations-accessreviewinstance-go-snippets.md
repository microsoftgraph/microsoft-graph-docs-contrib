---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.Me().PendingAccessReviewInstancesById("accessReviewInstance-id").AcceptRecommendations().Post(context.Background(), nil)


```