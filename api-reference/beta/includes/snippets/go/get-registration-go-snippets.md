---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.MeOnlineMeetingItemRegistrationRequestBuilderGetQueryParameters{
	Expand: [] string {"microsoft.graph.meetingRegistration/customQuestions"},
}
configuration := &graphconfig.MeOnlineMeetingItemRegistrationRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().OnlineMeetingsById("onlineMeeting-id").Registration().Get(context.Background(), configuration)


```