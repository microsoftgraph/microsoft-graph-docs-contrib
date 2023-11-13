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



progressTaskBoardFormat, err := graphClient.Planner().Tasks().ByPlannerTaskId("plannerTask-id").ProgressTaskBoardFormat().Get(context.Background(), nil)


```