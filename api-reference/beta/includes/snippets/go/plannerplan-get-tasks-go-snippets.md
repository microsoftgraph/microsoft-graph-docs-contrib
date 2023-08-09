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



tasks, err := graphClient.Planner().Plans().ByPlannerPlanId("plannerPlan-id").Tasks().Get(context.Background(), nil)


```