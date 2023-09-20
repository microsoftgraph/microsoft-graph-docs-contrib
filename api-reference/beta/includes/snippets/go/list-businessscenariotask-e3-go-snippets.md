---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsolutions "github.com/microsoftgraph/msgraph-beta-sdk-go/solutions"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "location/microsoft.graph.businessScenarioGroupTarget/groupId eq '7a339254-4b2b-4410-b295-c890a16776ee'"

requestParameters := &graphsolutions.SolutionsBusinessScenarioItemPlannerTasksRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphsolutions.SolutionsBusinessScenarioItemPlannerTasksRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

tasks, err := graphClient.Solutions().BusinessScenarios().ByBusinessScenarioId("businessScenario-id").Planner().Tasks().Get(context.Background(), configuration)


```