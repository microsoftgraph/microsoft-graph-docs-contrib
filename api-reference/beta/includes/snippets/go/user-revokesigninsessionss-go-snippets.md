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



revokeSignInSessions, err := graphClient.Me().RevokeSignInSessions().PostAsRevokeSignInSessionsPostResponse(context.Background(), nil)


```