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



rosters, err := graphClient.Planner().Rosters().ByPlannerRosterId("plannerRoster-id").Get(context.Background(), nil)


```