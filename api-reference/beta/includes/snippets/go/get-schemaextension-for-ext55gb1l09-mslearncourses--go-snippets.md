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


requestParameters := &graphusers.UserItemRequestBuilderGetQueryParameters{
	Select: [] string {"ext55gb1l09_msLearnCourses"},
}
configuration := &graphusers.UserItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

users, err := graphClient.Users().ByUserId("user-id").Get(context.Background(), configuration)


```