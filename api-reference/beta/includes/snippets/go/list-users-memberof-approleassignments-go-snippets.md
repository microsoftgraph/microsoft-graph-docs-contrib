---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "appRoleAssignments/$count gt 0"

requestParameters := &graphusers.UserItemMemberOfGraph.groupRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"id","displayName"},
}
configuration := &graphusers.UserItemMemberOfGraph.groupRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

graphGroup, err := graphClient.Users().ByUserId("user-id").MemberOf().GraphGroup().Get(context.Background(), configuration)


```