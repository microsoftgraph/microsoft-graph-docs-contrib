---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFormat := "text/vtt"

requestParameters := &graphconfig.ContentRequestBuilderGetQueryParameters{
	Format: &requestFormat,
}
configuration := &graphconfig.ContentRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.UsersById("user-id").OnlineMeetingsById("onlineMeeting-id").TranscriptsById("callTranscript-id").Content().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```