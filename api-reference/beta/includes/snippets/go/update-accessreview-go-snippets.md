---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAccessReview()
displayName := "TestReview new name"
requestBody.SetDisplayName(&displayName)
accessReviewId := "accessReview-id"
graphClient.AccessReviewsById(&accessReviewId).Patch(requestBody)


```