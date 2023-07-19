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



requestTop := int32(2)

requestParameters := &graphusers.UserItemChatsGetAllMessages()RequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphusers.UserItemChatsGetAllMessages()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().ByUserId("user-id").Chats().GetAllMessages().Get(context.Background(), configuration)


```