---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewBookmark()
description := "Book a fancy vacation in Tuscany or browse museums in Florence."
requestBody.SetDescription(&description)
options := &msgraphsdk.BookmarkRequestBuilderPatchOptions{
	Body: requestBody,
}
bookmarkId := "bookmark-id"
graphClient.Search().BookmarksById(&bookmarkId).Patch(options)


```