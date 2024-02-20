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

requestParameters := &graphusers.UserItemOnlineMeetingsGetAllTranscripts()RequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphusers.UserItemOnlineMeetingsGetAllTranscripts()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

getAllTranscripts, err := graphClient.Users().ByUserId("user-id").OnlineMeetings().GetAllTranscripts().Get(context.Background(), configuration)


```