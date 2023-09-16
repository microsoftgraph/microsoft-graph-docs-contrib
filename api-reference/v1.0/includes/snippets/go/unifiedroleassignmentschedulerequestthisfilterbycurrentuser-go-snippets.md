---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



on := "principal"
filterByCurrentUser, err := graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequests().FilterByCurrentUserWithOn(&on).Get(context.Background(), nil)


```