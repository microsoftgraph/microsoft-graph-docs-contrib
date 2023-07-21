---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsolutions "github.com/microsoftgraph/msgraph-beta-sdk-go/solutions"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphsolutions.NewGetPlanPostRequestBody()
target := graphmodels.NewBusinessScenarioGroupTarget()
taskTargetKind := graphmodels.GROUP_PLANNERTASKTARGETKIND 
target.SetTaskTargetKind(&taskTargetKind) 
groupId := "7a339254-4b2b-4410-b295-c890a16776ee"
target.SetGroupId(&groupId) 
requestBody.SetTarget(target)

result, err := graphClient.Solutions().BusinessScenarios().ByBusinessScenarioId("businessScenario-id").Planner().GetPlan().Post(context.Background(), requestBody, nil)


```