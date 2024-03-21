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



history, err := graphClient.RiskyUsers().ByRiskyUserId("riskyUser-id").History().ByRiskyUserHistoryItemId("riskyUserHistoryItem-id").Get(context.Background(), nil)


```