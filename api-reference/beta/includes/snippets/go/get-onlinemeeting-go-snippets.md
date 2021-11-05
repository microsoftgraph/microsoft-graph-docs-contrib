---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.OnlineMeetingRequestBuilderGetQueryParameters{
	Filter: "VideoTeleconferenceId%20eq%20'123456789'",
}
options := &msgraphsdk.OnlineMeetingRequestBuilderGetOptions{
	Q: requestParameters,
}
onlineMeetingId := "onlineMeeting-id"
result, err := graphClient.Communications().OnlineMeetingsById(&onlineMeetingId).Get(options);


```