---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphchats "github.com/microsoftgraph/msgraph-beta-sdk-go/chats"
	  //other-imports
)


requestTop := int32(2)
requestFilter := "lastModifiedDateTime gt 2022-09-22T00:00:00.000Z and lastModifiedDateTime lt 2022-09-24T00:00:00.000Z"

requestParameters := &graphchats.ItemMessagesRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Orderby: [] string {"lastModifiedDateTime desc"},
	Filter: &requestFilter,
}
configuration := &graphchats.ItemMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
messages, err := graphClient.Chats().ByChatId("chat-id").Messages().Get(context.Background(), configuration)


```