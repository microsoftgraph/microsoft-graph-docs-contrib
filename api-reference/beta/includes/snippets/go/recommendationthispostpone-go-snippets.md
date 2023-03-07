---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPostponePostRequestBody()
postponeUntilDateTime , err := time.Parse(time.RFC3339, "2023-02-01T02:53:00Z")
requestBody.SetPostponeUntilDateTime(&postponeUntilDateTime) 

result, err := graphClient.Directory().RecommendationsById("recommendation-id").Postpone().Post(context.Background(), requestBody, nil)


```