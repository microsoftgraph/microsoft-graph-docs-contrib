---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphgroups "github.com/microsoftgraph/msgraph-sdk-go/groups"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestCount := true
requestFilter := "startswith(displayName, 'a')"

requestParameters := &graphgroups.GroupItemTransitiveMembersGraph.userRequestBuilderGetQueryParameters{
	Count: &requestCount,
	Orderby: [] string {"displayName"},
	Filter: &requestFilter,
}
configuration := &graphgroups.GroupItemTransitiveMembersGraph.userRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

graph.user, err := graphClient.Groups().ByGroupId("group-id").TransitiveMembers().GraphUser().Get(context.Background(), configuration)


```