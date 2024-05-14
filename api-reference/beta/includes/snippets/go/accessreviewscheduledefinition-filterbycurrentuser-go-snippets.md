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



on := "reviewer"
filterByCurrentUser, err := graphClient.IdentityGovernance().AccessReviews().Definitions().FilterByCurrentUserWithOn(&on).GetAsFilterByCurrentUserWithOnGetResponse(context.Background(), nil)


```