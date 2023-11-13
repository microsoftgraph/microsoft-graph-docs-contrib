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


requestFilter := "mailEnabled eq true"
requestSearch := "\"displayName:OneVideo\""

requestParameters := &graphgroups.GroupsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Search: &requestSearch,
}
configuration := &graphgroups.GroupsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

groups, err := graphClient.Groups().Get(context.Background(), configuration)


```