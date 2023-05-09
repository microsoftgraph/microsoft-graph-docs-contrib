---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/solutions"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "location/microsoft.graph.businessScenarioGroupTarget/groupId eq '7a339254-4b2b-4410-b295-c890a16776ee'"

requestParameters := &graphconfig.SolutionsBusinessScenarioItemPlannerTasksRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.SolutionsBusinessScenarioItemPlannerTasksRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Solutions().BusinessScenarios().ByBusinessScenarioId("businessScenario-id").Planner().Tasks().Get(context.Background(), configuration)


```