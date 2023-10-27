---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "joinMeetingIdSettings/joinMeetingId eq '1234567890'"

requestParameters := &graphusers.ItemOnlineMeetingsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphusers.ItemOnlineMeetingsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

onlineMeetings, err := graphClient.Me().OnlineMeetings().Get(context.Background(), configuration)


```