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


requestParameters := &graphusers.ItemEventItemRequestBuilderGetQueryParameters{
	Select: [] string {"isOnlineMeeting","onlineMeetingProvider","onlineMeeting"},
}
configuration := &graphusers.ItemEventItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

events, err := graphClient.Me().Events().ByEventId("event-id").Get(context.Background(), configuration)


```