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



requestFilter := "languageTag eq 'en-us'"

requestParameters := &graphsolutions.SolutionsBusinessScenarioItemPlannerPlanConfigurationLocalizationsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphsolutions.SolutionsBusinessScenarioItemPlannerPlanConfigurationLocalizationsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Solutions().BusinessScenarios().ByBusinessScenarioId("businessScenario-id").Planner().PlanConfiguration().Localizations().Get(context.Background(), configuration)


```