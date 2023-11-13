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



retentionEvents, err := graphClient.Security().Triggers().RetentionEvents().ByRetentionEventId("retentionEvent-id").Get(context.Background(), nil)


```