---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphgroups "github.com/microsoftgraph/msgraph-sdk-go/groups"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "bellowscollege_courses/courseId eq '123'"

requestParameters := &graphgroups.GroupsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"displayName","id","description","bellowscollege_courses"},
}
configuration := &graphgroups.GroupsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

groups, err := graphClient.Groups().Get(context.Background(), configuration)


```