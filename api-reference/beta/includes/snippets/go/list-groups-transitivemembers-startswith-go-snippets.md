---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphgroups "github.com/microsoftgraph/msgraph-beta-sdk-go/groups"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestCount := true
requestFilter := "startswith(displayName, 'a')"

requestParameters := &graphgroups.ItemTransitiveMembersGraph.userRequestBuilderGetQueryParameters{
	Count: &requestCount,
	Orderby: [] string {"displayName"},
	Filter: &requestFilter,
}
configuration := &graphgroups.ItemTransitiveMembersGraph.userRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphUser, err := graphClient.Groups().ByGroupId("group-id").TransitiveMembers().GraphUser().Get(context.Background(), configuration)


```