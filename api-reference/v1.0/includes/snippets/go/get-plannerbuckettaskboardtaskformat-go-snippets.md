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



bucketTaskBoardFormat, err := graphClient.Planner().Tasks().ByPlannerTaskId("plannerTask-id").BucketTaskBoardFormat().Get(context.Background(), nil)


```