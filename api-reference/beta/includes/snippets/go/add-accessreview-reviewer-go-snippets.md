---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessReviewReviewer()
id := "006111db-0810-4494-a6df-904d368bd81b"
requestBody.SetId(&id) 

result, err := graphClient.AccessReviewsById("accessReview-id").Reviewers().Post(requestBody)


```