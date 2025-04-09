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
requestFilter := "lastModifiedDateTime gt 2021-03-17T07:13:28.000z"

requestParameters := &graphusers.ItemChatsItemMessagesRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Filter: &requestFilter,
	Orderby: [] string {"createdDateTime desc"},
}
configuration := &graphusers.ItemChatsItemMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
messages, err := graphClient.Users().ByUserId("user-id").Chats().ByChatId("chat-id").Messages().Get(context.Background(), configuration)


```