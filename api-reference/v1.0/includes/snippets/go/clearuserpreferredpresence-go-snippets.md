---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewClearUserPreferredPresencePostRequestBody()

graphClient.Users().ByUserId("user-id").Presence().ClearUserPreferredPresence().Post(context.Background(), requestBody, nil)


```