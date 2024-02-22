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



retentionEventTypes, err := graphClient.Security().TriggerTypes().RetentionEventTypes().ByRetentionEventTypeId("retentionEventType-id").Get(context.Background(), nil)


```