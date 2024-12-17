---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)


requestFilter := "members/any(o: o/displayname eq 'Peter Parker')"

requestParameters := &graphusers.ItemChatsRequestBuilderGetQueryParameters{
	Expand: [] string {"members"},
	Filter: &requestFilter,
}
configuration := &graphusers.ItemChatsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
chats, err := graphClient.Users().ByUserId("user-id").Chats().Get(context.Background(), configuration)


```