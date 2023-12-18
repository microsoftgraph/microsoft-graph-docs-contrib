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



assignedToTaskBoardFormat, err := graphClient.Planner().Tasks().ByPlannerTaskId("plannerTask-id").AssignedToTaskBoardFormat().Get(context.Background(), nil)


```