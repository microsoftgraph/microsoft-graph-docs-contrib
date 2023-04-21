---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.Users().ByUserId("user-id").OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").Transcripts().ByTranscriptId("callTranscript-id").Content().Get(context.Background(), nil)


```