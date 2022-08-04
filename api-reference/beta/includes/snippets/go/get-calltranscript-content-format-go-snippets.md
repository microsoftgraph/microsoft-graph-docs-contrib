---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ContentRequestBuilderGetQueryParameters{
	Format: "text/vtt",
}
configuration := &graphconfig.ContentRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.UsersById("user-id").OnlineMeetingsById("onlineMeeting-id").TranscriptsById("callTranscript-id").Content().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```