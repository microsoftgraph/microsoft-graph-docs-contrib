---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetMessageIds( []String {
	"MC172851",
	"MC167983",
}
options := &msgraphsdk.UnfavoriteRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Admin().ServiceAnnouncement().Messages().Unfavorite().Post(options)


```