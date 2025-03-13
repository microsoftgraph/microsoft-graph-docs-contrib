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


requestFilter := "appRoleAssignments/$count gt 0"

requestParameters := &graphusers.ItemMemberOfGraph.groupRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"id","displayName"},
}
configuration := &graphusers.ItemMemberOfGraph.groupRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphGroup, err := graphClient.Users().ByUserId("user-id").MemberOf().GraphGroup().Get(context.Background(), configuration)


```