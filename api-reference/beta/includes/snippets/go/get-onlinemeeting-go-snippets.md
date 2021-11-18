---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.OnlineMeetingsRequestBuilderGetQueryParameters{
	Filter: "VideoTeleconferenceId%20eq%20'123456789'",
}
options := &msgraphsdk.OnlineMeetingsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Communications().OnlineMeetings().Get(options)


```