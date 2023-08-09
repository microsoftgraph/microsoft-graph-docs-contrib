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



createReplyAll, err := graphClient.Me().Messages().ByMessageId("message-id").CreateReplyAll().Post(context.Background(), nil)


```