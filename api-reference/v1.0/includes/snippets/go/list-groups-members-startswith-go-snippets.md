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

requestParameters := &graphgroups.GroupItemMembersRequestBuilderGetQueryParameters{
	Count: &requestCount,
	Filter: &requestFilter,
}
configuration := &graphgroups.GroupItemMembersRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Groups().ByGroupId("group-id").Members().Get(context.Background(), configuration)


```