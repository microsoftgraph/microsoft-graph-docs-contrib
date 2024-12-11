---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)


requestFilter := "contentcorrelationId eq 'e87c8cf8-50f7-4252-8b9c-ad08ac0fa88d-0'"

requestParameters := &graphusers.OnlineMeetingsItemRecordingsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphusers.OnlineMeetingsItemRecordingsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
recordings, err := graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").Recordings().Get(context.Background(), configuration)


```