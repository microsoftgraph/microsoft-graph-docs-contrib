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



getAttackSimulationTrainingUserCoverage, err := graphClient.Reports().Security().GetAttackSimulationTrainingUserCoverage().GetAsGetAttackSimulationTrainingUserCoverageGetResponse(context.Background(), nil)


```