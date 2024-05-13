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



requestFilter := "meetingOrganizerId eq '8b081ef6-4792-4def-b2c9-c363a1bf41d5'"

requestParameters := &graphusers.UserItemOnlineMeetingItemRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphusers.UserItemOnlineMeetingItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

onlineMeetings, err := graphClient.Users().ByUserId("user-id").OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").Get(context.Background(), configuration)


```