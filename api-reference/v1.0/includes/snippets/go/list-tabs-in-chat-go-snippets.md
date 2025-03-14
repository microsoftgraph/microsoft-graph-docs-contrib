---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphchats "github.com/microsoftgraph/msgraph-sdk-go/chats"
	  //other-imports
)

requestParameters := &graphchats.ItemTabsRequestBuilderGetQueryParameters{
	Expand: [] string {"teamsApp"},
}
configuration := &graphchats.ItemTabsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
tabs, err := graphClient.Chats().ByChatId("chat-id").Tabs().Get(context.Background(), configuration)


```