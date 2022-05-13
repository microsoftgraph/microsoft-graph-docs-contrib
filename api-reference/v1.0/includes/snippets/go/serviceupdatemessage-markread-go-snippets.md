---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewMessageIdsRequestBody()
requestBody.SetMessageIds( []String {
	"MC172851",
	"MC167983",
}
result, err := graphClient.Admin().ServiceAnnouncement().Messages().MarkRead().Post(requestBody)


```