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



plans, err := graphClient.Planner().Rosters().ByPlannerRosterId("plannerRoster-id").Plans().Get(context.Background(), nil)


```