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



contentSharingSessions, err := graphClient.Communications().Calls().ByCallId("call-id").ContentSharingSessions().Get(context.Background(), nil)


```