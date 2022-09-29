---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewBookmark()
description := "Book a fancy vacation in Tuscany or browse museums in Florence."
requestBody.SetDescription(&description) 

result, err := graphClient.Search().BookmarksById("bookmark-id").Patch(context.Background(), requestBody, nil)


```