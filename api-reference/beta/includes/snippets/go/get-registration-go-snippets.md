---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.RegistrationRequestBuilderGetQueryParameters{
	Expand: [] string {"microsoft.graph.meetingRegistration/customQuestions"},
}
configuration := &graphconfig.RegistrationRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().OnlineMeetingsById("onlineMeeting-id").Registration().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```