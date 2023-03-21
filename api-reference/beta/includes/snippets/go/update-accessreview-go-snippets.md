---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewAccessReview()
displayName := "TestReview new name"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.AccessReviewsById("accessReview-id").Patch(context.Background(), requestBody, nil)


```