---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFormat := "text/vtt"

requestParameters := &graphconfig.UserItemOnlineMeetingItemTranscriptItemContentRequestBuilderGetQueryParameters{
	Format: &requestFormat,
}
configuration := &graphconfig.UserItemOnlineMeetingItemTranscriptItemContentRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.Users().ByUserId("user-id").OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").Transcripts().ByTranscriptId("callTranscript-id").Content().Get(context.Background(), configuration)


```