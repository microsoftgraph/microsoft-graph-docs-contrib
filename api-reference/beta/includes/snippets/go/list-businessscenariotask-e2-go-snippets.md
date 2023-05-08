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



requestFilter := "businessScenarioProperties/externalContextId eq 'Warehouse-CA-36'"

requestParameters := &graphconfig.SolutionsBusinessScenarioItemPlannerTasksRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.SolutionsBusinessScenarioItemPlannerTasksRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Solutions().BusinessScenarios().ByBusinessScenarioId("businessScenario-id").Planner().Tasks().Get(context.Background(), configuration)


```