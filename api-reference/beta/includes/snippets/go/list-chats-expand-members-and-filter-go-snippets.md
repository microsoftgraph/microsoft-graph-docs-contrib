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



requestFilter := "members/any(o: o/displayname eq 'Peter Parker')"

requestParameters := &graphusers.UserItemChatsRequestBuilderGetQueryParameters{
	Expand: [] string {"members"},
	Filter: &requestFilter,
}
configuration := &graphusers.UserItemChatsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

chats, err := graphClient.Users().ByUserId("user-id").Chats().Get(context.Background(), configuration)


```