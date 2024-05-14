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



on := "principal"
filterByCurrentUser, err := graphClient.IdentityGovernance().PrivilegedAccess().Group().EligibilityScheduleRequests().FilterByCurrentUserWithOn(&on).GetAsFilterByCurrentUserWithOnGetResponse(context.Background(), nil)


```