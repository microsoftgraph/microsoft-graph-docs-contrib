---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewBookmark()
description := "Book a fancy vacation in Tuscany or browse museums in Florence."
requestBody.SetDescription(&description)
bookmarkId := "bookmark-id"
graphClient.Search().BookmarksById(&bookmarkId).Patch(requestBody)


```