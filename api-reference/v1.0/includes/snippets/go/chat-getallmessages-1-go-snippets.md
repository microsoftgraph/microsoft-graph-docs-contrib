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


requestTop := int32(2)

requestParameters := &graphusers.ItemChatsGetAllMessagesRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphusers.ItemChatsGetAllMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
getAllMessages, err := graphClient.Users().ByUserId("user-id").Chats().GetAllMessages().GetAsGetAllMessagesGetResponse(context.Background(), configuration)


```