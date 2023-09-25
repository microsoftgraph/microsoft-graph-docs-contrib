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



details, err := graphClient.Planner().Tasks().ByPlannerTaskId("plannerTask-id").Details().Get(context.Background(), nil)


```