---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



on := "allowedRequestor"
filterByCurrentUser, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().FilterByCurrentUserWithOn(&on).GetAsFilterByCurrentUserWithOnGetResponse(context.Background(), nil)


```