---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.RegistrationRequestBuilderGetQueryParameters{
	Expand: "microsoft.graph.meetingRegistration/customQuestions",
}
options := &msgraphsdk.RegistrationRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
onlineMeetingId := "onlineMeeting-id"
result, err := graphClient.Me().OnlineMeetingsById(&onlineMeetingId).Registration().GetWithRequestConfigurationAndResponseHandler(options, nil)


```