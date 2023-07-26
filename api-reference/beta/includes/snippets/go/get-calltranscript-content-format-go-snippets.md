---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFormat := "text/vtt"

requestParameters := &graphusers.UserItemOnlineMeetingItemTranscriptItemContentRequestBuilderGetQueryParameters{
	Format: &requestFormat,
}
configuration := &graphusers.UserItemOnlineMeetingItemTranscriptItemContentRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.Users().ByUserId("user-id").OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").Transcripts().ByTranscriptId("callTranscript-id").Content().Get(context.Background(), configuration)


```