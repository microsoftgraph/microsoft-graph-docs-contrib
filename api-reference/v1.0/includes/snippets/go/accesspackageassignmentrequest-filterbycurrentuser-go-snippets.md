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



on := "target"
filterByCurrentUser, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentRequests().FilterByCurrentUserWithOn(&on).Get(context.Background(), nil)


```