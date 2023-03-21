---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestFormat := "text/vtt"

requestParameters := &graphconfig.UserItemOnlineMeetingItemTranscriptItemContentRequestBuilderGetQueryParameters{
	Format: &requestFormat,
}
configuration := &graphconfig.UserItemOnlineMeetingItemTranscriptItemContentRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.UsersById("user-id").OnlineMeetingsById("onlineMeeting-id").TranscriptsById("callTranscript-id").Content().Get(context.Background(), configuration)


```