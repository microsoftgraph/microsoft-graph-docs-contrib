---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphgroups "github.com/microsoftgraph/msgraph-beta-sdk-go/groups"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "mailEnabled eq false and securityEnabled eq true and NOT) and membershipRuleProcessingState eq 'On'"
requestCount := true

requestParameters := &graphgroups.GroupsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Count: &requestCount,
	Select: [] string {"id","membershipRule","membershipRuleProcessingState"},
}
configuration := &graphgroups.GroupsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

groups, err := graphClient.Groups().Get(context.Background(), configuration)


```