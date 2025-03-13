---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)


requestFormat := "text/vtt"

requestParameters := &graphusers.ItemOnlineMeetingsItemTranscriptsItemContentRequestBuilderGetQueryParameters{
	Format: &requestFormat,
}
configuration := &graphusers.ItemOnlineMeetingsItemTranscriptsItemContentRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Users().ByUserId("user-id").OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").Transcripts().ByCallTranscriptId("callTranscript-id").Content().Get(context.Background(), configuration)


```