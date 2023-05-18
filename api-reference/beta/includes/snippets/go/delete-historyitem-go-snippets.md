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



graphClient.Me().Activities().ByActivitieId("userActivity-id").HistoryItems().ByHistoryItemId("activityHistoryItem-id").Put(context.Background(), nil)


```