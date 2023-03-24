---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.UsersById("user-id").OnlineMeetingsById("onlineMeeting-id").TranscriptsById("callTranscript-id").Content().Get(context.Background(), nil)


```